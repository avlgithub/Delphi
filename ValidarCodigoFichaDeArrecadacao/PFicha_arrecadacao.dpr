program PFicha_arrecadacao;

uses
  Forms,
  UFicha_arrecadacao in 'UFicha_arrecadacao.pas' {Frm_FichaArrecada},
  UATENCAO in 'UATENCAO.pas' {FRM_MENSAGEM};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrm_FichaArrecada, Frm_FichaArrecada);
  Application.CreateForm(TFRM_MENSAGEM, FRM_MENSAGEM);
  Application.Run;
end.
