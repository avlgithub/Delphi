unit Teste_Estouro_Fonte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, FileCtrl, ExtCtrls, Menus;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    DriveComboBox1: TDriveComboBox;
    DirectoryListBox1: TDirectoryListBox;
    FileListBox1: TFileListBox;
    GroupBox2: TGroupBox;
    Label7: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    GroupBox3: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    CheckBox1: TCheckBox;
    MainMenu1: TMainMenu;
    Sobre1: TMenuItem;
    Label3: TLabel;
    Arquivo1: TMenuItem;
    N1: TMenuItem;
    FecharPrograma1: TMenuItem;
    grp1: TGroupBox;
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FileListBox1Change(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Entrada, Saida, Saida2,Rel: TextFile;
  Cont, NCont, Maiores, Menores, SoNome,I: Integer;
  Aux,RegPed, WPath,NSeq,Arq,InputString,WNomeArq,Linha,Limite: String;

implementation

{$R *.dfm}
{ *** teste tamanho do campo
      Desenvolvido por Alberto V.Lima xx/xx/xxxx**** }

procedure TForm1.btn1Click(Sender: TObject);
begin
  Label1.Caption := '  Maiores que ' + Edit3.Text + ' : 0';
  Label1.Refresh;
  Label2.Caption := '  Menores que ' + Edit3.Text + ' : 0';
  Label2.Refresh;
  AssignFile(Entrada, FileListBox1.FileName);
  Reset(Entrada);
  AssignFile(Saida, DirectoryListBox1.Directory + '\MAIORES.TXT');
  Rewrite(Saida);
  AssignFile(Saida2, DirectoryListBox1.Directory + '\MENORES.TXT');
  Rewrite(Saida2);

  Maiores  := 0;
  Menores  := 0;

  For I:=1 to StrToInt(Edit3.Text) do
     Limite := Limite + ' ';

  While not Eof(Entrada) do
     Begin
       Readln(Entrada, Linha);

//       if Copy(Linha,StrToInt(Edit1.Text),StrToInt(Edit2.Text)) <> Limite Then
//          Begin
            If (Length(Trim(Copy(Linha, StrToInt(Edit1.Text), StrToInt(Edit2.Text)))) > StrToInt(Edit3.Text)) then
               Begin
                 Writeln(Saida, Linha);
                 Maiores := Maiores + 1;
                 Label1.Caption := '  Maiores que ' + Edit3.Text + ' : ' + IntToStr(Maiores);
                 Label1.Refresh
               end
            else
               Begin
                 Writeln(Saida2, Linha);
                 Menores := Menores + 1;
                 Label2.Caption := '  Menores que ' + Edit3.Text + ' : ' + IntToStr(Menores);
                 Label2.Refresh;
               end;
//          end;
     end;

  if  CheckBox1.Checked = True then
     begin
       AssignFile(Rel, DirectoryListBox1.Directory + '\RELATORIO.TXT');
       Rewrite(Rel);
       Writeln(Rel, '=================================================================================');
       Writeln(Rel, '  Quantidade de registros que excedem o tamnaho de ' + Edit3.text              );
       Writeln(Rel, '=================================================================================');
       Writeln(Rel, '                                                                                 ');
       Writeln(Rel, '=================================================================================');
       Writeln(Rel, '==  Maiores encontrados .....: ' + IntToStr(Maiores                       ));
       Writeln(Rel, '==  Menores encontrados .....: ' + IntToStr(Menores                       ));
       Writeln(Rel, '==  Total de registros Lidos : ' + IntToStr(Maiores + Menores             ));
       Writeln(Rel, '=================================================================================');
       Writeln(Rel, '                                                                                 ');
       CloseFile(Rel);
     end;
  CloseFile(Entrada);
  CloseFile(Saida);
  CloseFile(Saida2);
  MessageDlg(' Fim do processo !',mtInformation,[mbOK], 0);

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Label1.Caption :='';
  Label2.Caption :='';

  Edit1.Text := '';
  Edit2.Text := '';
  Edit3.Text := '';
end;

procedure TForm1.FileListBox1Change(Sender: TObject);
begin
  Label3.Caption := '';
  Label3.Caption := FileListBox1.FileName;
  If Label3.Caption <> '' then
     begin
       btn1.Enabled   := true;
       Edit1.Enabled     := True;
       Edit2.Enabled     := True;
       Edit3.Enabled     := True;
       Label5.Enabled    := True;
       Label6.Enabled    := True;
       Label7.Enabled    := True;
       CheckBox1.Enabled := true;
     end;
end;   

procedure TForm1.Sobre1Click(Sender: TObject);
begin
  MessageDlg('Programa Verifica limite de campos:'+ #13 +#13 +
             '     Verifica arquivo texto.'+ #13 +
             '     Gera arquivo de relatório de estouro de campo.'+ #13 + #13+'Alberto V.Lima',mtInformation,[mbOK], 0);
end;

end.
