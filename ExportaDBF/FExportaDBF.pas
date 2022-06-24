unit FExportaDBF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Provider, DB, ADODB, DBTables, FileCtrl;

type
  TForm1 = class(TForm)
    ADODataSet1: TADODataSet;
    Table1: TTable;
    GroupBox1: TGroupBox;
    DriveComboBox1: TDriveComboBox;
    DirectoryListBox1: TDirectoryListBox;
    FileListBox1: TFileListBox;
    GroupBox2: TGroupBox;
    Button1: TButton;
    procedure SaveAsCSV(myFileName: string; myDataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Math,bibliotecas;

{$R *.dfm}

procedure TForm1.SaveAsCSV(myFileName: string; myDataSet: TDataSet);
var
  myTextFile: TextFile;
  i: integer;
  s: string;
begin
  //Cria um novo arquivo
  AssignFile(myTextFile,myFileName);
  Rewrite(myTextFile);
  s := ''; //inicializa uma string vazia
  try
    // Coleta os nomes dos campos (cabeçalho das colunas)
    for i := 0 to myDataSet.FieldCount - 1 do
      begin
        s := s + Format('"%s"', [myDataSet.Fields[i].FieldName]);
        if i < (myDataSet.FieldCount - 1) then
           s := s + ',';
      end;
    Writeln(myTextFile, s);   // Cria uma linha em branco
    Writeln(myTextFile, '');  // Grava os valores dos campos
    while not myDataSet.Eof do
      begin
        s := '';
        for i := 0 to myDataSet.FieldCount - 1 do
         begin
           s := s + Format('"%s"', [myDataSet.Fields[i].AsString]);
           if i < (myDataSet.FieldCount - 1) then
              s := s + ',';
         end;
        Writeln(myTextfile, s);
        myDataSet.Next;
      end;
  finally
    CloseFile(myTextFile);
  end;
end;


procedure TForm1.Button1Click(Sender: TObject);
begin
  If FileListBox1.FileName <> '' then
     Try
       begin
         Table1.DatabaseName := ExtractFileDir(FileListBox1.FileName);
         Table1.TableName    := ExtractFileName(FileListBox1.FileName);
         Table1.Active       := True;
         SaveAsCSV(Sem_Extensao(FileListBox1.FileName) + '.TXT',Table1);
         ShowMessage(' Fim do processo ! ');
       end
     except
       ShowMessage('Não foi possível exporta a tabela!');
     end
  else
    ShowMessage('Selecione a tabela');
end;

end.
