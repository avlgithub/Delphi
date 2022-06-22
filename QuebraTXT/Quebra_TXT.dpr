program Quebra_TXT;

uses
  Forms,
  FQuebra in 'FQuebra.pas' {Form1},
  Bibliotecas in '..\..\Bibliotecas\Bibliotecas.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
