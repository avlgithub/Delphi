unit fContaRegistros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CheckLst, FileCtrl, StdCtrls, ExtCtrls, Menus, Buttons;

type
  TFPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Arquivos1: TMenuItem;
    Fecharprograma1: TMenuItem;
    Sobre1: TMenuItem;
    contaregistros1: TMenuItem;
    Bevel1: TBevel;
    GroupBox1: TGroupBox;
    DriveComboBox1: TDriveComboBox;
    DirectoryListBox1: TDirectoryListBox;
    FileListBox1: TFileListBox;
    CheckListBox1: TCheckListBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    SBProcessar: TSpeedButton;
    procedure Fecharprograma1Click(Sender: TObject);
    procedure DirectoryListBox1Change(Sender: TObject);
    procedure SBProcessarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CheckListBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipal   : TFPrincipal;
  bSelecionado : Boolean;
  iPosicaoArquivo : Integer;

implementation

Uses fFonteContaRegistro;

{$R *.dfm}

procedure TFPrincipal.Fecharprograma1Click(Sender: TObject);
begin
  Close;
end;

procedure TFPrincipal.DirectoryListBox1Change(Sender: TObject);
Var
  iContaArquivos :Integer;
begin
  bSelecionado := False;
  CheckListBox1.Clear;

  For iContaArquivos := 0 to FileListBox1.Count-1 do
    CheckListBox1.Items.Add(FileListBox1.Items[iContaArquivos]);
end;

procedure TFPrincipal.SBProcessarClick(Sender: TObject);
Var
  ThreadContador:TContador;
  iContaArqvivoSelecionado : Integer;
begin
  iPosicaoArquivo := 0;
//  For iContaArqvivoSelecionado := 0 to CheckListBox1.Count-1 do
    if bSelecionado{ CheckListBox1.Checked[iContaArqvivoSelecionado]} = True then
       begin
         ThreadContador := TContador.Create(True);
         ThreadContador.FreeOnTerminate := True;
         ThreadContador.Resume;
         Inc(iPosicaoArquivo);
       end;
end;
procedure TFPrincipal.FormCreate(Sender: TObject);
begin
  bSelecionado := False;
end;

procedure TFPrincipal.CheckListBox1Click(Sender: TObject);
Var
  iContaArquivoSelecionado:Integer;
begin
  bSelecionado := False;
  For iContaArquivoSelecionado := 0 to CheckListBox1.Count-1 do
    if CheckListBox1.Checked[iContaArquivoSelecionado] = True then
       begin
          bSelecionado := True;
          Break;
       end;
end;

end.
