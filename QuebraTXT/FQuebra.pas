unit FQuebra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FileCtrl, StdCtrls, Grids, Outline, Tabs, Buttons, Menus,
  ExtCtrls, XP_Button;

type
  TForm1 = class(TForm)
    PopupMenu1: TPopupMenu;
    Addarquivoselecionado1: TMenuItem;
    Addtodososarquivos1: TMenuItem;
    GroupBox2: TGroupBox;
    DriveComboBox1: TDriveComboBox;
    DirectoryListBox1: TDirectoryListBox;
    FileListBox1: TFileListBox;
    GroupBox6: TGroupBox;
    ListBox1: TListBox;
    GroupBox5: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    PopupMenu2: TPopupMenu;
    Excluirarqivoselecionado1: TMenuItem;
    Excluirtofdososarquivos1: TMenuItem;
    GroupBox4: TGroupBox;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    sobre1: TMenuItem;
    Fechar1: TMenuItem;
    Quebraregistros1: TMenuItem;
    BtProcessar: TtfXPButton;
    BtCancelar: TtfXPButton;

    procedure FileListBox1DblClick(Sender: TObject);
    procedure Addarquivoselecionado1Click(Sender: TObject);
    procedure Addtodososarquivos1Click(Sender: TObject);
    procedure Excluirarquivoselecionado1Click(Sender: TObject);
    procedure Exlcuirtodososarquivos1Click(Sender: TObject);
    procedure ListBox1DblClick(Sender: TObject);
    procedure ListBox1KeyPress(Sender: TObject; var Key: Char);
    procedure Excluirarqivoselecionado1Click(Sender: TObject);
    procedure Excluirtofdososarquivos1Click(Sender: TObject);
    procedure FileListBox1KeyPress(Sender: TObject; var Key: Char);

    procedure ListBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FileListBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Fechar1Click(Sender: TObject);
    procedure Quebraregistros1Click(Sender: TObject);
    procedure BtProcessarClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);

    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Entrada,Saida:TextFile;
  Linha,WPath,Arq,WNomeArq,Ini,fim,Pergunta:String;
  Cont,Quebra_Lin,Quebra,Lidos,I,J:Integer;
  Cancelar:Boolean;
implementation

{$R *.dfm}
//** Quebra arquivos por parte
//** Desenvolvido por: Alberto V.Lima 14/05/2008.
//** Atualizado em 26/04/2010

uses bibliotecas;

procedure TForm1.FileListBox1DblClick(Sender: TObject);
begin
  if FileListBox1.FileName <> '' then
    if ListBox1.Items.IndexOf(ExtractFileName(Filelistbox1.FileName)) = -1 then
       begin
         ListBox1.Items.Add(ExtractFileName(Filelistbox1.FileName));
         BtProcessar.Enabled := True;
         Label1.Enabled      := True;
         Edit1.Enabled       := True;
         Label4.Caption      := ' Total de arquivos.: ' + IntToStr(ListBox1.Count);
         Label4.Refresh;
       end;
end;

procedure TForm1.Addarquivoselecionado1Click(Sender: TObject);
begin
  if FileListBox1.FileName <> '' then
    if ListBox1.Items.IndexOf(ExtractFileName(Filelistbox1.FileName)) = -1 then
       begin
         ListBox1.Items.Add(ExtractFileName(Filelistbox1.FileName));
         BtProcessar.Enabled := True;
         Label1.Enabled      := True;
         Edit1.Enabled       := True;
         Label4.Caption      := ' Total de arquivos.: ' + IntToStr(ListBox1.Count);
         Label4.Refresh;
       end;
end;

procedure TForm1.Addtodososarquivos1Click(Sender: TObject);
begin
  if FileListBox1.Count <> 0 Then
     For i:=0 to FileListBox1.Count - 1 do
       Begin
         if ListBox1.Items.IndexOf(ExtractFileName(Filelistbox1.Items[i])) = -1 then
            begin
              ListBox1.Items.Add(ExtractFileName(Filelistbox1.Items[i]));
              BtProcessar.Enabled := True;
              Label1.Enabled := True;
              Edit1.Enabled  := True;
              Label4.Caption := ' Total de arquivos.: ' + IntToStr(ListBox1.Count);
              Label4.Refresh;
            end;
       End;
end;

procedure TForm1.Excluirarquivoselecionado1Click(Sender: TObject);
begin
  ListBox1.DeleteSelected;
  if ListBox1.Items.Count = 0 then
     BtProcessar.Enabled := False;
end;

procedure TForm1.Exlcuirtodososarquivos1Click(Sender: TObject);
begin
  ListBox1.Clear;
  if ListBox1.Items.Count = 0 then
     BtProcessar.Enabled := False;
end;

procedure TForm1.ListBox1DblClick(Sender: TObject);
begin
  if ListBox1.Items.IndexOf(ExtractFileName(Filelistbox1.FileName)) = -1 then
     begin
       ListBox1.Items.Add(ExtractFileName(Filelistbox1.FileName));
       BtProcessar.Enabled := True;
       Label1.Enabled := True;
       Edit1.Enabled  := True;
       Label4.Caption := ' Total de arquivos.: ' + IntToStr(ListBox1.Count);
       Label4.Refresh;
     end;
end;

procedure TForm1.ListBox1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
     begin
       if ListBox1.Items.IndexOf(ExtractFileName(Filelistbox1.FileName)) = -1 then
          begin
            ListBox1.Items.Add(ExtractFileName(Filelistbox1.FileName));
            BtProcessar.Enabled := True;
            Label1.Enabled := True;
            Edit1.Enabled  := True;            
            Label4.Caption := ' Total de arquivos.: ' + IntToStr(ListBox1.Count);
            Label4.Refresh;
          end;
     end;               
end;

procedure TForm1.Excluirarqivoselecionado1Click(Sender: TObject);
begin
  ListBox1.DeleteSelected;
  Label4.Caption := ' Total de arquivos.: ' + IntToStr(ListBox1.Count);
  Label4.Refresh;
  if ListBox1.Count = 0 then
     begin
       BtProcessar.Enabled := False;
       Label1.Enabled       := False;
       Edit1.Enabled        := False;
     end;
end;

procedure TForm1.Excluirtofdososarquivos1Click(Sender: TObject);
begin
  ListBox1.Clear;
  Label4.Caption := ' Total de arquivos.: ' + IntToStr(ListBox1.Count);
  Label4.Refresh;
  if ListBox1.Count = 0 then
     begin
       BtProcessar.Enabled := False;
       Label1.Enabled       := False;
       Edit1.Enabled        := False;
     end;  
end;

procedure TForm1.FileListBox1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
     begin
       if FileListBox1.FileName <> '' then
         if ListBox1.Items.IndexOf(ExtractFileName(Filelistbox1.FileName)) = -1 then
            begin
              ListBox1.Items.Add(ExtractFileName(Filelistbox1.FileName));
              BtProcessar.Enabled := True;
              Label1.Enabled      := True;
              Edit1.Enabled       := True;
              Label4.Caption      := ' Total de arquivos.: ' + IntToStr(ListBox1.Count);
              Label4.Refresh;
            end;
     end;
end;

procedure TForm1.ListBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
  Var
    Arquivos : string;
begin
  Arquivos := '';
  if ListBox1.Count > 0 then
     begin
       for X:=0 to ListBox1.Count - 1 do
           Arquivos := Arquivos +  #13 + '  '+ IntToStr(X+1)+' - '+ ExtractFileName(ListBox1.Items[X]);
       ListBox1.Hint := '                    :: lista de arquivo(s) adicionado(s) :: ' + #13 +' Clique com o botão direito do mouse para excluir os arquivos. ' +#13 + Arquivos + #13;
     end
  else
    ListBox1.Hint := '';
end;

procedure TForm1.FileListBox1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  if FileListBox1.FileName <> '' then
     FileListBox1.Hint := 'Pressione ENTER, dê um duplo clique ou clique com o direito para adicionar o(s) arquivo(s).' + #13+ #13
                        + ' Arquivo selecionado.: ' + ExtractFileName(FileListBox1.FileName);
end;
procedure TForm1.Fechar1Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.Quebraregistros1Click(Sender: TObject);
begin
  MessageDlg('Programa Quebra registro:'+ #13 +#13 +
             '     Lê arquivo de entrada/cliente.'+ #13 +
             '     Gera arquivo(s) quebrados com a quantidade informa.'+ #13 + #13+
             'alberto.vlima@hotmail.com',mtInformation,[mbOK],0);
end;

procedure TForm1.BtProcessarClick(Sender: TObject);
begin
  if ((Edit1.Text <> '') and (StrToInt(Edit1.Text) > 1)) then
    begin
      Try
        Cancelar := False;
        BtCancelar.Visible  := True;
        BtProcessar.Visible := False;
        Edit1.Enabled       := False;
        GroupBox2.Enabled   := False;
        GroupBox6.Enabled   := False;
        Arquivo1.Enabled    := False;
        sobre1.Enabled      := False;

        For I := 0 to ListBox1.Count-1 do
          begin
            Application.ProcessMessages;
            Quebra     := 1;
            Cont       := 0;
            Lidos      := 0;
            Quebra_Lin := StrToInt(Edit1.Text);

            AssignFile(Entrada,ListBox1.Items[I]);
            Reset(Entrada);

            While not Eof(Entrada) do
              begin
                Application.ProcessMessages;

                Label3.Caption := ' Quebra.: ' + FormatFloat('000000',Quebra);
                Label3.Refresh;

                AssignFile(Saida,Sem_Extensao(ExtractFileName(ListBox1.Items[I])) + '_QUEBRA' + IntToStr(Quebra) + '.TXT');
                Rewrite(Saida);

                while ((Cont < Quebra_Lin) and not Eof(Entrada)) do
                   begin
                     Application.ProcessMessages;

                     if Cancelar = True then
                        begin
                          Cancelar := False;
                          if MessageDlg('Deseja cancelar o processo ?',mtConfirmation,[mbYes,mbNo],0) = mrYes Then
                             begin
                               Closefile(Entrada);
                               Closefile(Saida);

                               Abort;
                             end;
                        end;

                     Readln(Entrada,Linha);
                     Writeln(Saida,Linha);

                     Cont  := Cont  + 1;
                     Lidos := Lidos + 1;

                     Label2.Caption := ' Lidos....: ' + FormatFloat('000000',Lidos);
                     Label2.Refresh;
                   end;

                CloseFile(Saida);
                Cont   := 0;
                Quebra := Quebra + 1;
              end;
            CloseFile(Entrada);
          end;

        MessageDlg('Fim do processo!', mtInformation,[mbOK],0);
      Finally
        BtCancelar.Visible  := False;
        BtProcessar.Visible := True;
        BtProcessar.Enabled := False;

        Edit1.Text          := '2000';
        Edit1.Enabled       := False;
        GroupBox2.Enabled   := True;
        GroupBox6.Enabled   := True;
        Arquivo1.Enabled    := True;
        sobre1.Enabled      := True;

        ListBox1.Clear;

        Label2.Caption := ' Lidos....: 0';
        Label2.Refresh;

        Label3.Caption := ' Quebra.: 0';
        Label3.Refresh;
      end;
    end
  else
    MessageDlg('Informe um valor válido!', mtWarning,[mbOK],0);
end;

procedure TForm1.BtCancelarClick(Sender: TObject);
begin
  Cancelar := True;
end;


procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if ((Key in ['0'..'9'] = False) and (Word(Key) <> VK_BACK)) then
      Key := #0;
end;

end.
