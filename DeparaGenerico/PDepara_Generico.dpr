program PDepara_Generico;

uses
  Forms,
  FDepara_Generico in 'FDepara_Generico.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
