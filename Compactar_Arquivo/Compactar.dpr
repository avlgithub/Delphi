program Compactar;

uses
  Forms,
  FCompactar in 'FCompactar.pas' {Form1},
  FConfig in 'FConfig.pas' {Form2},
  Bibliotecas in '..\..\Bibliotecas\Bibliotecas.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
