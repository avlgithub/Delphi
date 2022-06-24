unit FConsulta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Mask, StdCtrls, ComCtrls, Buttons, WinXP, WinSkinData,
  XP_Edit, ExtCtrls, XP_Panel, XPMenu, ImgList;

type
  TFormConsulta = class(TForm)
    GroupBox1: TGroupBox;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Informaes1: TMenuItem;
    sobre1: TMenuItem;
    Fecharprograma1: TMenuItem;
    PopupMenu1: TPopupMenu;
    Limpardados1: TMenuItem;
    SBPostNet: TSpeedButton;
    SBLinhaDig: TSpeedButton;
    SBFebraban: TSpeedButton;
    SBCodBar: TSpeedButton;
    Atalhos1: TMenuItem;
    atPostNet: TMenuItem;
    atLinhaDigitavel: TMenuItem;
    atFebraban: TMenuItem;
    atCdBarra: TMenuItem;
    SkinData1: TSkinData;
    Bevel1: TBevel;
    XPMenu1: TXPMenu;
    ImageList1: TImageList;
    SpeedButton1: TSpeedButton;
    FichaArrecadacao1: TMenuItem;
    procedure Fecharprograma1Click(Sender: TObject);
    procedure sobre1Click(Sender: TObject);
    procedure SBPostNetClick(Sender: TObject);
    procedure SBLinhaDigClick(Sender: TObject);
    procedure SBFebrabanClick(Sender: TObject);
    procedure SBCodBarClick(Sender: TObject);
    procedure FichaArrecadacao1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsulta: TFormConsulta;

implementation

//**  Programa para consulta rápidas:
//**  PostNet - Febreban - Linha Digitável - Cód Barras
//**  Desenvolvido por Alberto V.Lima   26/03/2009
//**  Modificações : Mudança ma forma que é chamada os Form e inplementação da
//**  Ficha de Arrecadação "Giselle" 26/07/2010


uses bibliotecas, FPostNet, FLindig, FFebraban, FCodBarras,
  UFicha_arrecadacao;
{$R *.dfm}

procedure TFormConsulta.Fecharprograma1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormConsulta.sobre1Click(Sender: TObject);
begin
  MessageDlg(' Programa consulta rápida:'+ #13#10 + #13#10 +
             ' Calcula digíto do CEP - "POSTNET".'+ #13#10 +
             ' Validação da linha digitável.'+ #13#10 +
             ' Calcula fator de vencimento com base em "07/10/1997"'+ #13#10 +
             ' Leitura e validação do código de barras' + #13#10 + #13#10 + #13#10 + #13#10 +
             ' Desenvolvido por: Alberto Vieira Lima',mtInformation,[mbOK], 0);

end;

procedure TFormConsulta.SBPostNetClick(Sender: TObject);
begin
  If FormPostNet = NIL then
     FormPostNet := TFormPostNet.Create(Self);
  FormPostNet.ShowModal;
end;

procedure TFormConsulta.SBLinhaDigClick(Sender: TObject);
begin
  If Formlindig = NIL then
     Formlindig := TFormlindig.Create(Self);
  Formlindig.ShowModal;
end;

procedure TFormConsulta.SBFebrabanClick(Sender: TObject);
begin
  If FormFebraban = NIL then
     FormFebraban := TFormFebraban.Create(Self);
  FormFebraban.ShowModal;
end;

procedure TFormConsulta.SBCodBarClick(Sender: TObject);
begin
  If FormCodBarras = NIL then
     FormCodBarras := TFormCodBarras.Create(Self);
  FormCodBarras.ShowModal;
end;

procedure TFormConsulta.FichaArrecadacao1Click(Sender: TObject);
begin
  If Frm_FichaArrecada = NIL then
     Frm_FichaArrecada := TFrm_FichaArrecada.Create(Self);
  Frm_FichaArrecada.ShowModal;
end;

end.


