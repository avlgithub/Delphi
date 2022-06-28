unit FVisualiza;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Buttons, ToolWin;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Bevel1: TBevel;
    RichEdit1: TRichEdit;
    GroupBox1: TGroupBox;
    SpeedButton1: TSpeedButton;
    Shape1: TShape;
    Shape2: TShape;
    Label2: TLabel;
    Label3: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
  Close;
end;

end.
