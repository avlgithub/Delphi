unit FApuraRegDeslocados_FJPII;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XP_Button, StdCtrls, FileCtrl;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    DriveComboBox1: TDriveComboBox;
    DirectoryListBox1: TDirectoryListBox;
    FileListBox1: TFileListBox;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    tfXPButton1: TtfXPButton;
    Label2: TLabel;
    procedure tfXPButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Entrada,Saida:TextFile;
  sLinha:string;
  iCont,iContEncontrados:Integer;

implementation

{$R *.dfm}

procedure TForm1.tfXPButton1Click(Sender: TObject);
begin
  AssignFile(Entrada,FileListBox1.FileName);
  Reset(Entrada);

  AssignFile(Saida,ExtractFileName(FileListBox1.FileName) + '_RESULTADO.TXT');
  Rewrite(Saida);

  iCont := 0;
  iContEncontrados := 0;

  while not Eof(Entrada) do
    begin
      Readln(Entrada,sLinha);
      Inc(iCont);

      Label1.Caption := 'Lido(s): ' + IntToStr(iCont);
      Label1.Refresh;

      if Length(sLinha) <> 2343 then
         begin
           Writeln(Saida,sLinha);
           Inc(iContEncontrados);
           Label2.Caption := 'Encontrado(s): ' + IntToStr(iContEncontrados);
           Label2.Refresh;
         end;
    end;

  CloseFile(Entrada);
  CloseFile(Saida);
  ShowMessage('Fim do processo!');
end;

end.
