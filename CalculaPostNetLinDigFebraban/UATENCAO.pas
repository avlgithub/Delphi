unit UATENCAO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TFRM_MENSAGEM = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_MENSAGEM: TFRM_MENSAGEM;

implementation

uses UFicha_arrecadacao;

{$R *.dfm}

procedure TFRM_MENSAGEM.BitBtn1Click(Sender: TObject);
begin
  FRM_FICHAARRECADA.limpa();
  CLOSE;
end;

end.
