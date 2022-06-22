program ContaRegistros;

uses
  Forms,
  fContaRegistros in 'fContaRegistros.pas' {FPrincipal},
  fFonteContaRegistro in 'fFonteContaRegistro.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.Run;
end.
