unit FPostNet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TFormPostNet = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    btnCalcPostNet: TSpeedButton;
    procedure Label15Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure btnCalcPostNetClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CalcularPostNet();
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPostNet: TFormPostNet;

implementation

uses bibliotecas;

{$R *.dfm}

procedure TFormPostNet.Label15Click(Sender: TObject);
begin
  Close;
end;

procedure TFormPostNet.Edit1Change(Sender: TObject);
begin
  if Length(Edit1.Text) >= 8 then
    btnCalcPostNet.Enabled := True
  else

    btnCalcPostNet.Enabled := False;
end;

procedure TFormPostNet.btnCalcPostNetClick(Sender: TObject);
begin
  CalcularPostNet();
end;

procedure TFormPostNet.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FormPostNet := NIL;
end;

procedure TFormPostNet.CalcularPostNet();
var
  sPost:String;
  I:Integer;
  Achou:Boolean;
begin
  If Edit1.Text = '' then
     begin
       ShowMessage('Informe os dados corretamente !');
       Edit1.SetFocus;
     end
  Else
    { *** Verificando CEP *** }
    If length(Edit1.Text) < 8 then
       begin
         ShowMessage('Informe os dados corretamente !');
         Edit1.Clear;
         Edit1.SetFocus;
       end
    Else
      begin
        sPost := FloatToStr(Bibliotecas.Postal(Edit1.Text));
        ShowMessage(' Dígito do PostNet: ' + sPost);
      end;
end;


procedure TFormPostNet.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if ((Key = #13) and (btnCalcPostNet.Enabled = True)) then
       CalcularPostNet(); 
end;

end.
