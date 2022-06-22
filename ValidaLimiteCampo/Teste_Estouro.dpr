program Teste_Estouro;

uses
  Forms,
  Teste_Estouro_Fonte in 'Teste_Estouro_Fonte.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
