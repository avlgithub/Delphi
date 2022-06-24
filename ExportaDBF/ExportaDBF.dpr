program ExportaDBF;

uses
  Forms,
  FExportaDBF in 'FExportaDBF.pas' {Form1},
  Bibliotecas in '..\..\Bibliotecas\Bibliotecas.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
