unit FFebraban;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Buttons, StdCtrls;

type
  TFormFebraban = class(TForm)
    GroupBox5: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    SpeedButton1: TSpeedButton;
    DateTimePicker1: TDateTimePicker;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFebraban: TFormFebraban;
  dData, dDataVigencia : TDateTime;
  iFator : Integer;

implementation

{$R *.dfm}

procedure TFormFebraban.SpeedButton1Click(Sender: TObject);
begin
  { *** Calcula Fator de vencimento  *** }
  dData := DateTimePicker1.Date; //StrToDate(MaskEdit1.Text);
  iFATOR := Trunc(dData - dDataVigencia);
  ShowMessage(' Fator de vencimento: ' + IntToStr(iFator));

  Label11.Caption := ' Fator de vencimento: ' + IntToStr(iFator);
  Label11.Refresh;
end;

procedure TFormFebraban.FormCreate(Sender: TObject);
begin
  dDataVigencia := StrToDate('07/10/1997');
end;

procedure TFormFebraban.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FormFebraban := NIL;
end;

end.
