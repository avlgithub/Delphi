program FIXA_P;

uses
  Forms,
  FIXA in 'FIXA.pas' {Form1},
  Bibliotecas in '..\..\Bibliotecas\Bibliotecas.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
