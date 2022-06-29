program Cria;

uses
  Forms,
  Cria_form in 'Cria_form.pas' {Form1},
  Bibliotecas in '..\..\Bibliotecas\Bibliotecas.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
