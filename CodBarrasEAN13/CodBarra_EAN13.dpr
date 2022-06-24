program CodBarra_EAN13;

uses
  Forms,
  FCodBarra_EAN13 in 'FCodBarra_EAN13.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
