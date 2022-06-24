unit FCodBarras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, XP_Panel;

type
  TFormCodBarras = class(TForm)
    GroupBox6: TGroupBox;
    Edit7: TEdit;
    Timer1: TTimer;
    GroupBox10: TGroupBox;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label24: TLabel;
    GroupBox9: TGroupBox;
    Label25: TLabel;
    Label26: TLabel;
    GroupBox8: TGroupBox;
    Label29: TLabel;
    Label28: TLabel;
    Label27: TLabel;
    GroupBox7: TGroupBox;
    ttfXP_Panel1: ttfXP_Panel;
    procedure Edit7Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ttfXP_Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

    procedure ValidaCodBarras();

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCodBarras: TFormCodBarras;
  dVcto,dDataVigencia : TDateTime;
  sParte,sParte1,sParte2,sParte3,sParte4,Teste,sLinha,SLinha1: String;

implementation

uses bibliotecas;

{$R *.dfm}

procedure TFormCodBarras.Edit7Change(Sender: TObject);
begin
  if Length(Edit7.Text) = 44 then
     ValidaCodBarras()
  else
    Timer1.Enabled := True;
end;

procedure TFormCodBarras.FormCreate(Sender: TObject);
begin
  dDataVigencia := StrToDate('07/10/1997');
end;

procedure TFormCodBarras.Timer1Timer(Sender: TObject);
begin
  Edit7.Clear;
  Timer1.Enabled := False;
end;

procedure TFormCodBarras.ttfXP_Panel1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if ttfXP_Panel1.Caption <> '' then
     ttfXP_Panel1.Hint := 'Linha digitável: ' + ttfXP_Panel1.Caption;
end;

procedure TFormCodBarras.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FormCodBarras := NIL;
end;
procedure TFormCodBarras.ValidaCodBarras();
begin
  Label20.Caption := ' Banco: ' + Copy(Edit7.Text,001,003);
  Label20.Refresh;

  Label21.Caption := ' Moeda: ' + Copy(Edit7.Text,004,001);
  Label21.Refresh;

  Label22.Caption := ' Fator de Vcto: ' + Copy(Edit7.Text,006,004);
  Label22.Refresh;

  Label26.Caption := ' Vencimento: ' + DateToStr(dDataVigencia + StrToInt(Copy(Edit7.Text,006,004)));
  Label26.Refresh;

  Label24.Caption := ' Valor: ' + bibliotecas.FormataVlr(Copy(Edit7.Text,010,010));
  Label24.Refresh;

  Label25.Caption := ' Campo Livre: ' + Copy(Edit7.Text,020,025);
  Label25.Refresh;

  sParte1  := '';
  sParte2  := '';
  sParte3  := '';

  sParte1 := FloatToStr(Bibliotecas.modulo10(Copy(Edit7.Text,001,004) + Copy(Edit7.Text,020,005)));
  sParte2 := FloatToStr(Bibliotecas.modulo10(Copy(Edit7.Text,025,005) + Copy(Edit7.Text,030,005)));
  sParte3 := FloatToStr(Bibliotecas.modulo10(Copy(Edit7.Text,035,005) + Copy(Edit7.Text,040,005)));

  SLinha1 := Copy(Edit7.Text,001,004) +
             Copy(Edit7.Text,020,001) +
             Copy(Edit7.Text,021,004) + sParte1 +
             Copy(Edit7.Text,025,005) +
             Copy(Edit7.Text,030,005) + sParte2 +
             Copy(Edit7.Text,035,005) +
             Copy(Edit7.Text,040,005) + sParte3 +
             Copy(Edit7.Text,005,001) +
             Copy(Edit7.Text,006,014);


   ttfXP_Panel1.Caption := Copy(Edit7.Text,001,004) +
                           Copy(Edit7.Text,020,001) + '.' +
                           Copy(Edit7.Text,021,004) + sParte1 +  ' ' +
                           Copy(Edit7.Text,025,005) + '.' +
                           Copy(Edit7.Text,030,005) + sParte2 + ' ' +
                           Copy(Edit7.Text,035,005) + '.' +
                           Copy(Edit7.Text,040,005) + sParte3 + ' ' +
                           Copy(Edit7.Text,005,001) + ' ' +
                           Copy(Edit7.Text,006,014);

   Label27.Caption := ' Digito Código: ' + Copy(Edit7.Text,005,001);
   Label27.Refresh;

   { *** Calculando digito da linha Dig *** }
   Label28.Caption := ' Digito Linha: ' +
                       FloatTostr(Modulo11(
                             Copy(SLinha1,001,004) +
                             Copy(SLinha1,034,014) +
                             Copy(SLinha1,005,005) +
                             Copy(SLinha1,011,010) +
                             Copy(SLinha1,022,010)));
   Label28.Refresh;

   sParte := '';
   sParte := Copy(Edit7.Text,001,004)+
             Copy(Edit7.Text,006,004)+
             Copy(Edit7.Text,010,010)+
             Copy(Edit7.Text,020,005)+
             Copy(Edit7.Text,025,010)+
             Copy(Edit7.Text,035,010);

   Label29.Caption := ' Digito Calculado: ' + FloatTostr(Modulo11(sParte));
   Label29.Refresh;

   Edit7.Clear
end;

end.
