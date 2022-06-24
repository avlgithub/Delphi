unit FLindig;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XP_Edit, StdCtrls, Buttons;

type
  TFormLindig = class(TForm)
    GroupBox4: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    tfXPEdit1: TtfXPEdit;
    Label3: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Edit6: TEdit;
    SBCalcLinhaDig: TSpeedButton;
    SBLimpaLinhaDig: TSpeedButton;
    Label9: TLabel;
    Label1: TLabel;
    procedure Edit2Change(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3Change(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4Change(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5Change(Sender: TObject);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit6Change(Sender: TObject);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure SBCalcLinhaDigClick(Sender: TObject);
    procedure SBLimpaLinhaDigClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CalculaLinDig();
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLindig: TFormLindig;
  iDig : Integer;
  dDataVigencia : TDateTime;
  sParte: String;

implementation

uses bibliotecas;

{$R *.dfm}

procedure TFormLindig.CalculaLinDig();
begin
  Label9.Caption := ' ' + Copy(Edit2.Text,1,4) + '  ' + FloatToStr(StrToInt(Copy(IntToStr(iDig),1,1))) + ' ' + Edit5.Text + Edit6.Text + Copy(Edit2.Text,5,6) + Edit3.Text + Edit4.Text;
  Label9.Refresh;

  tfXPEdit1.Visible := True;
  tfXPEdit1.Text := ' Data do vencimento: ' + DateToStr(dDataVigencia + StrToInt(Edit5.text));
end;

procedure TFormLindig.Edit2Change(Sender: TObject);
begin
  if Length(Edit2.Text) = 9 then
     begin
       iDig := StrToInt(floatTostr(Bibliotecas.modulo10(Edit2.Text)));
       Label5.Enabled  := True;
       Label12.Caption := FloatToStr(iDig);
       Label12.Refresh;

       Edit3.Enabled := True;
       Edit3.SetFocus;
     end
  else
    begin
      if Edit2.Text = '' then
         SBLimpaLinhaDig.Enabled := False
      else
        SBLimpaLinhaDig.Enabled := True;


      Label12.Caption := '';
      Label12.Refresh;
    end;
end;

procedure TFormLindig.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  { *** Calcula digito do grupo 1 *** }
  If key =#13 then
     begin
        If Edit2.Text = '' then
           begin
             ShowMessage('Dados incorretos tente novamente!');
             Edit2.SetFocus;
           end
        else
          If length(Edit2.Text) < 9 then
             begin
               messagebeep(0);
               ShowMessage('Dados incorretos tente novamente!');
               Edit2.SetFocus;
             end
          else
            begin
              iDig := strToInt(floatTostr(bibliotecas.modulo10(Edit2.Text)));
              Label5.Enabled  := True;
              Label12.Caption := FloatToStr(iDig);
              Label12.Refresh;

              Edit3.Enabled := True;
              Edit3.SetFocus;
            end
     end
  else
    If (Key < #48) Or (Key >#57) Then
       Key := #0;
end;

procedure TFormLindig.Edit3Change(Sender: TObject);
begin
  if Length(Edit3.Text) = 10 then
     begin
       iDig := StrToInt(floatTostr(modulo10(Edit3.Text)));
       Label13.Caption := FloatToStr(iDig);
       Label13.Refresh;
       Label6.Enabled := TRue;
       Edit4.Enabled := True;
       Edit4.SetFocus;
     end
  else
    begin
      Label13.Caption := '';
      Label13.Refresh;
    end;
end;

procedure TFormLindig.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
{ *** Calcula DIG grupo 2 *** }
  If key =#13 then
     begin
       If Edit3.Text = '' then
          begin
            ShowMessage('Dados incorretos tente novamente!');
            Edit3.SetFocus;
          end
       else
         If length(Edit3.Text) < 10 then
            begin
              ShowMessage('Dados incorretos tente novamente!');
              Edit3.SetFocus;
            end
         else
           begin
             iDig := StrToInt(floatTostr(modulo10(Edit3.Text)));
              Label13.Caption := FloatToStr(iDig);
              Label13.Refresh;
              Label6.Enabled := TRue;
              Edit4.Enabled := True;
              Edit4.SetFocus;
           end
     end
  else
    If (Key < #48) Or (Key >#57) Then
       Key := #0;
end;

procedure TFormLindig.Edit4Change(Sender: TObject);
begin
  if Length(Edit4.Text) = 10 then
     begin
       iDig := StrToInt(FloatToStr(modulo10(Edit4.Text)));
       Label14.Caption := FloatToStr(iDig);
       Label14.Refresh;
       Label7.Enabled := TRue;
       Edit5.Enabled  := True;
       Edit5.SetFocus;
     end
  else
    begin
      Label14.Caption := '';
      Label14.Refresh;
    end;
end;

procedure TFormLindig.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
{ *** Calcula DIG grupo 3 *** }
  If key =#13 then
     begin
       If Edit4.Text = '' then
          begin
            ShowMessage('Dados incorretos tente novamente!');
            Edit4.SetFocus;
          end
       else
         If length(Edit4.Text) < 10 then
            begin
              ShowMessage('Dados incorretos tente novamente!');
              Edit4.SetFocus;
            end
         else
           begin
             iDig := StrToInt(FloatToStr(modulo10(Edit4.Text)));
             Label14.Caption := FloatToStr(iDig);
             Label14.Refresh;
             Label7.Enabled := TRue;
             Edit5.Enabled  := True;
             Edit5.SetFocus;
           end
     end
  else
    If (Key < #48) Or (Key >#57) Then
       Key := #0;   
end;

procedure TFormLindig.Edit5Change(Sender: TObject);
begin
  if Length(Edit5.Text) = 4 then
    begin
      Label8.Enabled := True;
      Edit6.Enabled  := True;
      Edit6.SetFocus;
    end;
end;

procedure TFormLindig.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
{ *** Calcula DIG grupo 4 *** }
  If key =#13 then
    If Edit5.Text = '' then
       begin
         ShowMessage('Dados incorretos tente novamente!');
         Edit5.SetFocus;
       end
    Else
      If length(Edit5.Text) < 4 then
         begin
           ShowMessage('Dados incorretos tente novamente!');
           Edit5.SetFocus;
         end
      else
        begin
          Label8.Enabled := True;
          Edit6.Enabled  := True;
          Edit6.SetFocus;
        end;
end;

procedure TFormLindig.Edit6Change(Sender: TObject);
begin
  if Length(Edit6.Text) = 10 then
     begin
       Edit6.Text := FormatFloat('0000000000',StrToInt(Edit6.Text));
       sParte := Copy(Edit2.Text,001,004) + Edit5.Text + Edit6.Text + Copy(Edit2.Text,005,006) + Edit3.Text + Edit4.Text;
       iDig := StrToInt(FloatTostr(Modulo11(sParte)));
       SBCalcLinhaDig.Enabled := True;
     end
  else
    SBCalcLinhaDig.Enabled := False;
end;

procedure TFormLindig.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
{ *** Calcula DIG grupo 5 *** }
  If key =#13 then
    begin
      If (Edit6.Text = '') then
         begin
           ShowMessage('Entre com os Dados Novamente !');
           Edit6.SetFocus;
         end
      else
        CalculaLinDig();
    end;
end;

procedure TFormLindig.SBCalcLinhaDigClick(Sender: TObject);
begin
  CalculaLinDig();
end;

procedure TFormLindig.SBLimpaLinhaDigClick(Sender: TObject);
begin
  tfXPEdit1.Visible := False;
  Edit2.Clear;
  Edit3.Clear;
  Edit3.Enabled := False;
  Edit4.Clear;
  Edit4.Enabled := False;
  Edit5.Clear;
  Edit5.Enabled := False;
  Edit6.Clear;
  Edit6.Enabled := False;

  Label5.Enabled := False;
  Label6.Enabled := False;
  Label7.Enabled := False;
  Label8.Enabled := False;

  Label12.Caption := '';
  Label13.Caption := '';
  Label14.Caption := '';
  tfXPEdit1.Clear;

  Label9.Caption := '';
  
  SBCalcLinhaDig.Enabled := False;
end;

procedure TFormLindig.FormCreate(Sender: TObject);
begin
  dDataVigencia := StrToDate('07/10/1997');
end;

procedure TFormLindig.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action     := caFree;
  FormLindig := NIL;
end;

end.
