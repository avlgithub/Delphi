program Consulta;

uses
  Forms,
  FConsulta in 'FConsulta.pas' {FormConsulta},
  Bibliotecas in '..\..\bibliotecas\Bibliotecas.pas',
  FPostNet in 'FPostNet.pas' {FormPostNet},
  FLindig in 'FLindig.pas' {FormLindig},
  FFebraban in 'FFebraban.pas' {FormFebraban},
  FCodBarras in 'FCodBarras.pas' {FormCodBarras},
  UFicha_arrecadacao in 'UFicha_arrecadacao.pas' {Frm_FichaArrecada};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormConsulta, FormConsulta);
  Application.Run;
end.
