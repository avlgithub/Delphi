program JuntaRegistros;

uses
  Forms,
  FJuntaRegistros in 'FJuntaRegistros.pas' {Form1},
  Bibliotecas in '..\..\Bibliotecas\Bibliotecas.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
