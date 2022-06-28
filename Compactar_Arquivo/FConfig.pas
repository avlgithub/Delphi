unit FConfig;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    Edit3: TEdit;
    Button2: TButton;
    Button3: TButton;
    OpenDialog1: TOpenDialog;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses FCompactar,bibliotecas;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  OpenDialog1.Execute;

  if UpperCase(ExtractFileName(OpenDialog1.FileName)) <> 'BRAZIP.EXE' then
     ShowMessage('Selecione o arquivo correto BraZip.exe !')
  else
    begin
      Edit1.Text := OpenDialog1.FileName;
      Form1.CaminhoBrazip := Edit1.Text;
    end;
end;


procedure TForm2.Button2Click(Sender: TObject);
begin
  OpenDialog1.Execute;

  if UpperCase(ExtractFileName(OpenDialog1.FileName)) <> 'WINRAR.EXE' then
     ShowMessage('Selecione o arquivo correto WinRar.exe !')
  else
    begin
      Edit2.Text := OpenDialog1.FileName;
      Form1.CaminhoWinrar := Edit2.Text;
    end;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  OpenDialog1.Execute;

  if UpperCase(ExtractFileName(OpenDialog1.FileName)) <> 'WINZIP.EXE' then
     ShowMessage('Selecione o arquivo correto WinZip.exe !')
  else
    begin
      Edit3.Text := OpenDialog1.FileName;
      Form1.CaminhoWinzip := Edit3.Text;
    end;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  AssignFile(Form1.Entrada,ExtractFilePath(Application.ExeName)+ 'compac.ini');
  Reset(Form1.Entrada);

  AssignFile(Form1.Saida,ExtractFilePath(Application.ExeName)+ 'wcompac.ini');
  Rewrite(Form1.Saida);

  Writeln(Form1.Saida,'[Compactar Arquivo]');
    
  Readln(Form1.Entrada,Form1.sLinha);
  while not eof(Form1.Entrada) do
     begin
       Readln(Form1.Entrada,Form1.sLinha);
       if Copy(Form1.slinha,1,1) = '1' then
          if Form1.CaminhoBrazip <> Copy(Form1.slinha,3,Length(Form1.sLinha)) then
            Writeln(Form1.Saida,'1-' + Form1.CaminhoBrazip)
          else
            Writeln(Form1.Saida,Form1.sLinha);


       if Copy(Form1.slinha,1,1) = '2' then
          if Form1.CaminhoWinrar <> Copy(Form1.slinha,3,Length(Form1.sLinha)) then
             Writeln(Form1.Saida,'2-' + Form1.CaminhoWinrar)
          else
            Writeln(Form1.Saida,Form1.sLinha);

       if Copy(Form1.slinha,1,1) = '3' then
          if Form1.CaminhoWinzip <> Copy(Form1.slinha,3,Length(Form1.sLinha)) then
             Writeln(Form1.Saida,'3-' + Form1.CaminhoWinzip)
          else
            Writeln(Form1.Saida,Form1.sLinha);             

     end;
  CloseFile(Form1.Entrada);
  CloseFile(Form1.Saida);
  bibliotecas.CopyFile(ExtractFilePath(Application.ExeName)+ 'wcompac.ini',ExtractFilePath(Application.ExeName)+ 'compac.ini');
  DeleteFile(ExtractFilePath(Application.ExeName)+ 'wcompac.ini');
end;

end.
