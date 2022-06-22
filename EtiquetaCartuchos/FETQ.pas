unit FETQ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,QRPRNTR,Printers, Menus, ExtCtrls;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Fecharprograma1: TMenuItem;
    Sobre1: TMenuItem;
    GeraEtiqueta1: TMenuItem;
    Bevel1: TBevel;
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure GeraEtiqueta1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  I,X,Y,Salto,Cont,Soma:Integer;
  Acumula,Passo:String;
  Tela : TQRPRINTER;
implementation

{ *** Programa gera Etiqu de cartuchos
      Alberto V.Lima 16/10/2008 *** }
{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  if ((Edit1.Text = '') or (StrToInt(Edit1.Text) < 0))  then
      MessageDlg('Informe os dados corretos!', mtInformation,[mbOk], 0)
  else
    begin
      Tela := TQRPrinter.Create;
      Tela.BeginDoc;

      Tela.NewPage;
      Tela.Orientation := poPortrait;

      Tela.Canvas.Font.Name := 'Courier New';
      Tela.Canvas.Font.Style:= [fsBold];
      Tela.Canvas.Font.Size := 9;
      Salto := 0;
      Cont  := 0;
      X:=1;
      Soma:=0;

      For I := 1 to 4 do
        begin
          while X <=20 do
            begin
              Tela.Canvas.TextOut(80+Cont-20,70+Salto-20,'FPG-CPD ARQREC');

              Tela.Canvas.TextOut(90+Cont,65+Salto,FormatFloat('000,000',StrToInt(Edit1.Text)+soma));

              Acumula := FormatFloat('000,000',StrToInt(Edit1.Text)+soma);

              Salto   := Salto + 49;

              X := X+1;
              Soma := Soma+1

            end;
          Cont:=Cont+190;
          Salto := 0;
           X:=1;
        end;


      Tela.EndDoc;
      Tela.Preview;
    end;
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
     Button1.SetFocus
  else
    If (Key < #48) Or (Key >#57) Then
        Key := #0;
end;

procedure TForm1.GeraEtiqueta1Click(Sender: TObject);
begin
  MessageDlg('Gera Etiqueta:' + #13+ #13 +'alberto.vlima@hotmail.com', mtInformation,[mbOk], 0);
end;

end.
