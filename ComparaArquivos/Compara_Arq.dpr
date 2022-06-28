program Compara_Arq;

uses
  Forms,
  FCompara_Arq in 'FCompara_Arq.pas' {Form1},
  Bibliotecas in '..\..\Bibliotecas\Bibliotecas.pas',
  FVisualiza in 'FVisualiza.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
