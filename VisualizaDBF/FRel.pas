unit FRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Menus;

type
  TFormRel = class(TForm)
    GroupBox2: TGroupBox;
    SpeedButton1: TSpeedButton;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Alterarmodelo1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    Memo1: TMemo;
    Informaes1: TMenuItem;
    Comoalterarorelatrio1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Comoalterarorelatrio1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRel: TFormRel;

implementation

uses FConf,VISUALIZA;

{$R *.dfm}

procedure TFormRel.FormCreate(Sender: TObject);
begin
  if ((FileExists(ExtractFilePath(APPLICATION.ExeName) + 'modpad.ini') = False) or
      (FileExists(ExtractFilePath(APPLICATION.ExeName) + 'modalter.ini') = False)) then
     ShowMessage('                    ********** ATENÇÂO **********'+#13+' Está faltando o arquivo de modelo de relatório, favor verificar !')
  else
    begin
      if FormConf.RadioButton10.Checked = True then
         memo1.Lines.LoadFromFile(ExtractFilePath(APPLICATION.ExeName) + 'modpad.ini');
      if FormConf.RadioButton11.Checked = True then
         memo1.Lines.LoadFromFile(ExtractFilePath(APPLICATION.ExeName) + 'modalter.ini');
    end;
end;

procedure TFormRel.SpeedButton1Click(Sender: TObject);
begin
  Memo1.Lines.SaveToFile(ExtractFilePath(APPLICATION.ExeName) + 'modalter.ini');
  Close;
end;

procedure TFormRel.Sair1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormRel.Comoalterarorelatrio1Click(Sender: TObject);
begin
  MessageDlg('Importante:' + #13 +
             ' Para que a modificação tenho efeito favor manter a sequencia de cada campo! EX.:'      ,mtInformation,[mbOK], 0);

//             '     Contato: alberto.vlima@hotmail.com',mtInformation,[mbOK], 0);
end;

end.
