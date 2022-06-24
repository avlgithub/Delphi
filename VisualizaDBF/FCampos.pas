unit FCampos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, XP_Button, Menus;

type
  TFormCampos = class(TForm)
    GroupBox1: TGroupBox;
    ComboBox1: TComboBox;
    ListBox1: TListBox;
    BtConfirma: TtfXPButton;
    BtCancelar: TtfXPButton;
    PopupMenu1: TPopupMenu;
    Excluiritemselecionado1: TMenuItem;
    Excluirtodosositens1: TMenuItem;

    procedure ComboBox1Select(Sender: TObject);
    procedure BtConfirmaClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCampos: TFormCampos;

implementation

uses VISUALIZA;

{$R *.dfm}

procedure TFormCampos.ComboBox1Select(Sender: TObject);
begin
  if ComboBox1.Text <> '' then
     begin
       if ((ListBox1.Items.IndexOf(ComboBox1.Text) = -1) and (ComboBox1.Text <> '')) then
          begin
            Inc(Form1.iContaCamposClass);
            Form1.aNomeCampo[ListBox1.Count] := ComboBox1.Text;
            ListBox1.Items.Add(FormatFloat('000',ListBox1.Count + 1) + ' - ' + ComboBox1.Text);
            BtConfirma.Enabled := True;
            ComboBox1.DeleteSelected;
          end;
     end;
end;

procedure TFormCampos.BtConfirmaClick(Sender: TObject);
begin
  Form1.Continua:= True;
  Form1.WNomeIndex := ExtractFileName(Combobox1.Items[ComboBox1.ItemIndex]);
  ComboBox1.Clear;

  if ((Form1.WNomeIndex <> '') and (Form1.ZTable1.Active = True)) then
      Form1.ZTable1.SortedFields := Form1.WNomeIndex;
  Close;
end;

procedure TFormCampos.BtCancelarClick(Sender: TObject);
begin
  Form1.WNomeIndex := '';
  Form1.Continua:= False;
  ComboBox1.Clear;
  Close;
end;

procedure TFormCampos.FormCreate(Sender: TObject);
Var
  iConta:Integer;
begin
  Form1.iContaCamposClass := 0;

  For iConta := 0 to 999 do
    begin
      if Form1.aNomeCampo[iConta] = '' then
         Break
      else
        Form1.aNomeCampo[iConta] := '';
    end;

end;

end.
