unit FJuntaRegistros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CheckLst, FileCtrl, StdCtrls, ExtCtrls, Menus, Spin, XP_Button,
  XPMenu, ImgList;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Fecharprograma1: TMenuItem;
    Bevel1: TBevel;
    GroupBox1: TGroupBox;
    DriveComboBox1: TDriveComboBox;
    DirectoryListBox1: TDirectoryListBox;
    FileListBox1: TFileListBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    SpinEdit1: TSpinEdit;
    CheckBox1: TCheckBox;
    Label2: TLabel;
    ListBox1: TListBox;
    PopupMenu1: TPopupMenu;
    Adicionaarquivoselecionado1: TMenuItem;
    Adicionatodososarquivos1: TMenuItem;
    Sobre1: TMenuItem;
    JuntaRegistros1: TMenuItem;
    XPMenu1: TXPMenu;
    Label3: TLabel;
    Label4: TLabel;
    SpinEdit2: TSpinEdit;
    GroupBox4: TGroupBox;
    btProcessar: TtfXPButton;
    btCancelar: TtfXPButton;
    PopupMenu2: TPopupMenu;
    Excluirarquivoselecionado1: TMenuItem;
    Excluirtodososarquivos1: TMenuItem;
    ImageList1: TImageList;
    procedure btProcessarClick(Sender: TObject);
    Function AddArquivos(bTodos:boolean):String;
    Function ExcluirArquivos(bTodos:boolean):String;    

    procedure FileListBox1KeyPress(Sender: TObject; var Key: Char);
    procedure FileListBox1DblClick(Sender: TObject);
    procedure Adicionaarquivoselecionado1Click(Sender: TObject);
    procedure Adicionatodososarquivos1Click(Sender: TObject);
    procedure Excluirarquivoselecionado1Click(Sender: TObject);
    procedure Excluirtodososarquivos1Click(Sender: TObject);
    procedure Fecharprograma1Click(Sender: TObject);
    procedure JuntaRegistros1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

// ** Programa Junta Registra epadrão mainframe
// ** Desenvolvido por: ALberto Vieira Lima 11/05/2010
// ** Versão: 1.0

Var
  Form1: TForm1;
  Entrada,Saida:TextFile;
  iTamanhoLinha,iContaArquivos,iConta,iNumTotal,iLidos,iCompleta,iComeca,iGerados:Integer;
  sLinha,sGuardaReg:String;

implementation

Uses Bibliotecas;

{$R *.dfm}

Function TForm1.AddArquivos(bTodos:boolean):String;
Var
  iContaAux:Integer;
begin
  if bTodos = True then
     For iContaAux := 0 to FileListBox1.Count -1 do
       if ListBox1.Items.IndexOf(ExtractFileName(FileListBox1.Items[iContaAux])) = -1 then
          ListBox1.Items.Add(FileListBox1.Items[iContaAux]);

  if bTodos = False then
     if ListBox1.Items.IndexOf(ExtractFileName(FileListBox1.FileName)) =  -1 then
        ListBox1.Items.Add(ExtractFileName(FileListBox1.FileName));

  if ListBox1.Count > 0 then
     begin
       Label1.Enabled      := True;
       Label4.Enabled      := True;
       SpinEdit1.Enabled   := True;
       SpinEdit1.SetFocus;
       SpinEdit2.Enabled   := True;
       CheckBox1.Enabled   := True;
       btProcessar.Enabled := True;
       ListBox1.Enabled    := True;
       Label3.Caption      := '  Total de arq.: ' + IntToStr(ListBox1.Count);
       Label3.Refresh;
     end;

  { *** Pega tamanho total do primeiro registro do arquivo e atualiza o Spin*** }
  AssignFile(Entrada,FileListBox1.FileName);
  Reset(Entrada);
  Readln(Entrada,sLinha);

  SpinEdit2.Value := Length(sLinha);

  CloseFile(Entrada);
end;

Function TForm1.ExcluirArquivos(bTodos:boolean):String;
Var
  iContaAux:Integer;
begin
  if bTodos = True then
     begin
       if Application.MessageBox(' Deseja excluir TODOS os arquivos da lista','Confirmação',MB_ICONWARNING+ MB_YESNO+MB_DEFBUTTON2)=idyes then
          For iContaAux := 0 to FileListBox1.Count -1 do
            ListBox1.Clear;
     end
  else
    if Application.MessageBox(' Deseja excluir o arquivo selecionando da lista','Confirmação',MB_ICONWARNING+ MB_YESNO+MB_DEFBUTTON2)=idyes then
       ListBox1.DeleteSelected;

  if ListBox1.Count <= 0 then
     begin
       Label1.Enabled      := False;
       Label4.Enabled      := False;
       SpinEdit1.Value     := 2;
       SpinEdit1.Enabled   := False;
       SpinEdit2.Value     := 1;
       SpinEdit2.Enabled   := False;
       CheckBox1.Enabled   := False;
       btProcessar.Enabled := False;
       ListBox1.Enabled    := False;
       Label3.Caption      := '  Total de arq.: ' + IntToStr(ListBox1.Count);
       Label3.Refresh;
     end;
end;

procedure TForm1.btProcessarClick(Sender: TObject);
begin
  Label2.Caption := '';
  Label2.Refresh;

  For iContaArquivos := 0 to ListBox1.Count-1 do
    begin
      AssignFile(Entrada,ListBox1.Items[iContaArquivos]);
      Reset(Entrada);

      AssignFile(Saida,Sem_Extensao(ListBox1.Items[iContaArquivos]) + '_JUNTAREG.TXT');
      Rewrite(Saida);

      iConta     := 0;
      iNumTotal  := 0;
      iLidos     := 0;
      iGerados   := 0;
      sGuardaReg := '';

      While Not Eof(Entrada) do
        begin
          { *** Verifica se chegou a numeração desejada *** }
          if iConta = StrToInt(SpinEdit1.Text) then
             begin
               if CheckBox1.Checked = True then
                  begin
                    Inc(iNumTotal);
                    Writeln(Saida,sGuardaReg + ' ' + FormatFloat('0000000',iNumTotal));
                  end
               else
                 Writeln(Saida,sGuardaReg);

               Inc(iGerados);

               Label2.Caption := ' Registro(s) gerados(s).: ' + IntToStr(iGerados);
               Label2.Refresh;

               sGuardaReg := '';
               iConta     := 0;
             end;

          Readln(Entrada,sLinha);

          iTamanhoLinha := Length(sLinha);
          Inc(iLidos);
          Inc(iConta);

          if CheckBox1.Checked = True then
             begin
               if SpinEdit2.Value > iTamanhoLinha then
                  sGuardaReg := sGuardaReg + AjustaStr(sLinha,SpinEdit2.Value) + ' ' + FormatFloat('0000000',iLidos)
               else
                 sGuardaReg := sGuardaReg + Copy(sLinha,1,SpinEdit2.Value) + ' ' + FormatFloat('0000000',iLidos)
             end
          else
            begin
              if SpinEdit2.Value > iTamanhoLinha then
                 sGuardaReg := sGuardaReg + AjustaStr(sLinha,SpinEdit2.Value)
              else
                sGuardaReg := sGuardaReg + Copy(sLinha,1,SpinEdit2.Value);
            end;
        end;

      { *** Completa o tamanho da linha *** }
      if iConta < SpinEdit1.Value then
         begin
           iComeca := iConta + 1;
           For iCompleta := iComeca to SpinEdit1.Value do
             begin
               Inc(iConta);
               Inc(iLidos);
               if CheckBox1.Checked = True then
                  sGuardaReg := sGuardaReg + AjustaComZeros('',SpinEdit2.Value) + ' ' + FormatFloat('0000000',iLidos)
               else
                 sGuardaReg  := sGuardaReg + AjustaComZeros('',SpinEdit2.Value);
             end;
         end;

      { *** Verifica se é para numerar saída *** }
      if CheckBox1.Checked = True then
         begin
           Inc(iNumTotal);
           Writeln(Saida,sGuardaReg + ' ' + FormatFloat('0000000',iNumTotal));
         end
      else
        Writeln(Saida,sGuardaReg);

      Inc(iGerados);
      Label2.Caption := ' Registro(s) gerados(s).: ' + IntToStr(iGerados);
      Label2.Refresh;

      CloseFile(Entrada);
      CloseFile(Saida);

    end;
  MessageDlg('Fim do processo!', mtInformation,[mbOk], 0);
end;

procedure TForm1.FileListBox1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    AddArquivos(False);
end;

procedure TForm1.FileListBox1DblClick(Sender: TObject);
begin
  AddArquivos(False);
end;

procedure TForm1.Adicionaarquivoselecionado1Click(Sender: TObject);
begin
  AddArquivos(False);
end;

procedure TForm1.Adicionatodososarquivos1Click(Sender: TObject);
begin
  AddArquivos(True);
end;

procedure TForm1.Excluirarquivoselecionado1Click(Sender: TObject);
begin
  ExcluirArquivos(False);
end;

procedure TForm1.Excluirtodososarquivos1Click(Sender: TObject);
begin
  ExcluirArquivos(True);
end;

procedure TForm1.Fecharprograma1Click(Sender: TObject);
begin
  Close;
end;
procedure TForm1.JuntaRegistros1Click(Sender: TObject);
begin
  MessageDlg(' Programa: Junta registros'+ #13 +
             '   Lê arquvio txt'         + #13 +
             '   Gera arquivo txt juntado lado-a-lado' + #13 +
             '   Parêmetros informado pelo usuário '   + #13 + #13 +
             '   Alberto Vieira Lima',mtInformation,[mbOK],0);
end;

end.


