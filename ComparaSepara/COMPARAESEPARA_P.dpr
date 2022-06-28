program COMPARAESEPARA_P;

uses
  Forms,
  COMPARAESEPARA in 'COMPARAESEPARA.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
