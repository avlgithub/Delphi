unit FCompactar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FileCtrl, StdCtrls, Buttons, Menus;

type
  TForm1 = class(TForm)
    grp1: TGroupBox;
    grp2: TGroupBox;
    drvcbb1: TDriveComboBox;
    dirlst1: TDirectoryListBox;
    fllst1: TFileListBox;
    grp3: TGroupBox;
    edt1: TEdit;
    grp4: TGroupBox;
    rb1: TRadioButton;
    rb2: TRadioButton;
    rb3: TRadioButton;
    grp5: TGroupBox;
    rb6: TRadioButton;
    rb7: TRadioButton;
    grp6: TGroupBox;
    rb5: TRadioButton;
    rb4: TRadioButton;
    btn2: TSpeedButton;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Configurao1: TMenuItem;
    N1: TMenuItem;
    Fecharprograma1: TMenuItem;
    sobre1: TMenuItem;
    CompactarArquivo1: TMenuItem;
    Label1: TLabel;
    procedure btn2Click(Sender: TObject);
    procedure rb7Click(Sender: TObject);
    procedure rb6Click(Sender: TObject);
    procedure Fecharprograma1Click(Sender: TObject);
    procedure CompactarArquivo1Click(Sender: TObject);
    procedure Configurao1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  Temp,LinhadeComando,sLinha,
  CaminhoBrazip,CaminhoWinrar,
  CaminhoWinzip:String;
  Arquivo,Entrada,Saida:TextFile;  

  end;

var
  Form1: TForm1;


implementation

uses FConfig;

{$R *.dfm}

{ *** Compacta arquivo Alberto Vieira Lima 28/01/2009 *** }

procedure TForm1.btn2Click(Sender: TObject);
begin
  if fllst1.FileName <> '' then
     begin
       if rb6.Checked = True then
          begin
             { *** Campactando com Brazip Apenas o arquivo selecionado *** }
             if ((rb1.Checked = True) and (rb5.Checked = True)) then
                begin
                  if edt1.Text = '' then
                    Temp := ChangeFileExt(fllst1.FileName,'.zip')
                  else
                    Temp := ChangeFileExt(dirlst1.Directory + '\' + edt1.Text,'.zip');

                  LinhadeComando := CaminhoBrazip + ' a "' + Temp + '" "' + fllst1.FileName + '"';
                  Try
                    WinExec(Pchar(LinhadeComando),1);
                  Except
                    showmessage('Não foi possível campactar o arquivo!');
                  end;
                end;
             { *** Campactando com Brazip Todos os arquivos do diretório *** }
             if ((rb1.Checked = True) and (rb4.Checked = True)) then
                begin
                  if edt1.Text = '' then
                    Temp := ChangeFileExt(fllst1.FileName,'.zip')
                  else
                    Temp := ChangeFileExt(dirlst1.Directory + '\' + edt1.Text,'.zip');

                  LinhadeComando := CaminhoBrazip + ' a "' + Temp + '" "' + dirlst1.Directory +'\' + '"';
                  Try
                    WinExec(Pchar(LinhadeComando),1);
                  Except
                    showmessage('Não foi possível campactar os arquivos!');
                  end;
                end;
          end
       else
         begin
          { *** Descompactar com Brazip apenas o arquivo selecionado *** }
           if rb1.Checked = True then
              begin
                SetCurrentDir(fllst1.FileName);
                LinhadeComando := CaminhoBrazip + ' e "' + fllst1.FileName + '" "' + dirlst1.Directory + '"';
                Try
                  WinExec(Pchar(LinhadeComando),1);
                Except
                end;
              end;

          { *** Descompactar com Winrar apenas o arquivo selecionado *** }
           if rb2.Checked = True then
              begin
                SetCurrentDir(fllst1.FileName);
                LinhadeComando := CaminhoWinrar + ' e "' + fllst1.FileName + '" "' + dirlst1.Directory + '"';
                Try
                  WinExec(Pchar(LinhadeComando),1);
                Except
                end;
              end;

          { *** Descompactar com Winrar apenas o arquivo selecionado *** }
           if rb3.Checked = True then
              begin
                SetCurrentDir(fllst1.FileName);
                LinhadeComando := CaminhoWinzip +' e "' + fllst1.FileName + '" "' + dirlst1.Directory + '"';
                Try
                  WinExec(Pchar(LinhadeComando),1);
                Except
                end;
              end;
         end;
     end
  else
    ShowMessage('Selecione o arquivo!');
end;
procedure TForm1.rb7Click(Sender: TObject);
begin
  if rb7.Checked = True then
     begin
       rb5.Checked := True;
       rb4.Enabled := False;
     end;

end;

procedure TForm1.rb6Click(Sender: TObject);
begin
  if rb6.Checked = True then
     begin
       rb4.Enabled := True;
     end;
end;

procedure TForm1.Fecharprograma1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.CompactarArquivo1Click(Sender: TObject);
begin
  MessageDlg('                      ©2009 - DeltaProc' + #13 +
             ' Processamento de dados, Criação de Sistemas e Sites. ' + #13 + #13 +
             ' Nome do Programa : Compactar Arquivo' + #13 +
             ' Versão do programa : 1.0' + #13 +
             ' Licensa: Ilimitado ' + #13 + #13 +
             ' :: Descrição do produto ::'+#13+
             ' Compacta e descompacta arquivo(s) utilizando o Winzip, Brazip e Winrar' + #13 + #13 +
             ' :: Duvidas entrar em contato ::'+#13+
             '     E-mail: deltaproc@yahoo.com.br'+#13+
             '     Site..: www.deltaproc.com.br',mtInformation,[mbOK], 0);
end;

procedure TForm1.Configurao1Click(Sender: TObject);
begin
  Form2.Edit1.Text := CaminhoBrazip;
  Form2.Edit2.Text := CaminhoWinrar;
  Form2.Edit3.Text := CaminhoWinzip;

  Form2.ShowModal;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  AssignFile(Entrada,ExtractFilePath(Application.ExeName)+ 'compac.ini');
  Reset(Entrada);
  Readln(Entrada,sLinha);
  while not eof(Entrada) do
     begin
       Readln(Entrada,sLinha);
       if Copy(slinha,1,1) = '1' then
          CaminhoBrazip := Copy(slinha,3,Length(sLinha));

       if Copy(slinha,1,1) = '2' then
          CaminhoWinrar := Copy(slinha,3,Length(sLinha));

       if Copy(slinha,1,1) = '3' then
          CaminhoWinzip := Copy(slinha,3,Length(sLinha));
     end;
  CloseFile(Entrada);
end;

end.

