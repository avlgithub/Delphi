unit FJunta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FileCtrl, StdCtrls, Buttons, Menus;

type
  TForm1 = class(TForm)
    PopupMenu1: TPopupMenu;
    PopupMenu2: TPopupMenu;
    Adicionararquivoselecionado1: TMenuItem;
    Adicionartodososarquivos1: TMenuItem;
    Excluirarquivoselecionado1: TMenuItem;
    Excluirtodososarquivos1: TMenuItem;
    GroupBox2: TGroupBox;
    DriveComboBox1: TDriveComboBox;
    DirectoryListBox1: TDirectoryListBox;
    FileListBox1: TFileListBox;
    GroupBox4: TGroupBox;
    Label3: TLabel;
    ListBox1: TListBox;
    GroupBox6: TGroupBox;
    SpeedButton4: TSpeedButton;
    GroupBox5: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    mm1: TMainMenu;
    Arquivo1: TMenuItem;
    Sobre1: TMenuItem;
    Juntaarquivo1: TMenuItem;
    Fecharprograma1: TMenuItem;
    procedure SpeedButton4Click(Sender: TObject);
    procedure Adicionararquivoselecionado1Click(Sender: TObject);
    procedure Adicionartodososarquivos1Click(Sender: TObject);
    procedure FileListBox1DblClick(Sender: TObject);
    procedure Excluirarquivoselecionado1Click(Sender: TObject);
    procedure Excluirtodososarquivos1Click(Sender: TObject);
    procedure Fecharprograma1Click(Sender: TObject);
    procedure Juntaarquivo1Click(Sender: TObject);
    procedure ListBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FileListBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  I, J,Lidos,Cont : Integer;
  Achou:Boolean;
  Entrada,Saida:TextFile;
  Linha,WArq,Arq,WPath,WNome_Arq,Pergunta :String;

implementation
{ Desenvolvido por: Alberto V.Lima Dta 04/06/2008
  Programa com finalizadade de juantar vários arquivo txt }

{$R *.dfm}
procedure TForm1.SpeedButton4Click(Sender: TObject);
begin
  InputQuery(' Junta Arquivo ', 'Informe o nome de saida sem extenção(*.TXT). ',Pergunta);
  If Pergunta <> '' then
     begin
       AssignFile(Saida,Pergunta+'.TXT');
       Rewrite(Saida);

       cont := 0;
       for I := 0 to ListBox1.Count - 1  do
         begin
           Lidos := 0;
           AssignFile(Entrada,ListBox1.Items[I]);
           Reset(Entrada);

           While not EOF(Entrada) do
              begin
                Readln(Entrada,Linha);
                Writeln(Saida,Linha);
                Lidos := Lidos + 1;
                Cont  := Cont  + 1;
                Label1.Caption := ' Lidos..: ' + FormatFloat('000000',Lidos) + '    Arquivo.: ' + ListBox1.Items[I];

                Label2.Caption := ' Proc...: ' + FormatFloat('000000',Cont);
                Label1.Refresh;
                Label2.Refresh;
              end;
           CloseFile(Entrada);
         end;
       CloseFile(Saida);
       ShowMessage('   Fim do Processo...   ');
     end
  else
    ShowMessage(' Você deve informar o nome de saida! ');
end;

procedure TForm1.Adicionararquivoselecionado1Click(Sender: TObject);
begin
  Achou := False;
  SpeedButton4.Enabled := True;

  if ListBox1.Count = 0 then
     begin
       ListBox1.Items.Add(ExtractFileName(Filelistbox1.FileName));
     end
  else
    begin
      For I := 0 To ListBox1.Count-1 Do
         if ExtractFileName(FileListBox1.FileName) = ExtractFileName(ListBox1.Items[I]) then
            Achou := True;

         if not Achou then
            begin
              ListBox1.Items.Add(ExtractFileName(Filelistbox1.FileName));
              Achou := False;
            end
    end;
end;

procedure TForm1.Adicionartodososarquivos1Click(Sender: TObject);
begin
  SpeedButton4.Enabled := True;
  { ***  Adiciona todos os arquivo do diretório no ListBox *** }
  if FileListBox1.Count <> 0 Then
     for i:=0 to FileListBox1.Count - 1 do
       Begin
         Achou := False;
         For j := 0 to ListBox1.Count-1 do
           if ExtractFileName(FileListBox1.Items[i]) = ListBox1.Items[j] then
              Achou := true;

           if not achou then
              Begin
                ListBox1.Items.Add(ExtractFileName(FileListBox1.Items[i]));
              End;
       End;
end;

procedure TForm1.FileListBox1DblClick(Sender: TObject);
begin
  Achou := False;
  SpeedButton4.Enabled := True;

  if ListBox1.Count = 0 then
     begin
       ListBox1.Items.Add(ExtractFileName(Filelistbox1.FileName));
     end
  else
    begin
      For I := 0 To ListBox1.Count-1 Do
         if ExtractFileName(FileListBox1.FileName) = ExtractFileName(ListBox1.Items[I]) then
            Achou := True;

         if not Achou then
            begin
              ListBox1.Items.Add(ExtractFileName(Filelistbox1.FileName));
              Achou := False;
            end
    end;
end;

procedure TForm1.Excluirarquivoselecionado1Click(Sender: TObject);
begin
  ListBox1.DeleteSelected;
end;

procedure TForm1.Excluirtodososarquivos1Click(Sender: TObject);
begin
  ListBox1.Clear;
end;

procedure TForm1.Fecharprograma1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.Juntaarquivo1Click(Sender: TObject);
begin
  MessageDlg('Programa Junta Arquivos.:'+ #13 +#13 +
             '     Lê arquivo de entrada/cliente.'+ #13 +
             '     Gera arquivos juntados.'+ #13 + #13+'Alberto V.Lima',mtInformation,[mbOK],0);
end;

procedure TForm1.ListBox1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
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

end.
