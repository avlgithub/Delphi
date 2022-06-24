program VISUALIZA_P;

uses
  Forms,
  VISUALIZA in 'VISUALIZA.pas' {Form1},
  FConf in 'FConf.pas' {FormConf},
  FRel in 'FRel.pas' {FormRel},
  FCampos in 'FCampos.pas' {FormCampos},
  Bibliotecas in '..\..\Bibliotecas\Bibliotecas.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
