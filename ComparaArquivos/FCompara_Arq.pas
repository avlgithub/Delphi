unit FCompara_Arq;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Menus, ExtCtrls;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    OpenArquivo1: TOpenDialog;
    OpenArquivo2: TOpenDialog;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    GroupBox3: TGroupBox;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Conf: TMenuItem;
    N1: TMenuItem;
    Fecharoprograma1: TMenuItem;
    ListaCaracter: TMenuItem;
    ListaLinha: TMenuItem;
    Sobre1: TMenuItem;
    ComparaarquivosTXT1: TMenuItem;
    N2: TMenuItem;
    btn1: TSpeedButton;
    btn2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Bevel1: TBevel;

    procedure ComparaarquivosTXT1Click(Sender: TObject);
    procedure ListaCaracterClick(Sender: TObject);
    procedure ListaLinhaClick(Sender: TObject);
    procedure Fecharoprograma1Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Entrada1,Entrada2,Saida:TextFile;
  Linha1,Linha2,Posicao,Caracter1,Caracter2,File1,File2 : String;
  Econtrados,I,Cont,Lidos : Integer;
  Achou,Cancelar:Boolean;

implementation

Uses Bibliotecas, FVisualiza, ComCtrls;

{$R *.dfm}


procedure TForm1.ComparaarquivosTXT1Click(Sender: TObject);
begin
  MessageDlg('Programa "Compara arquivos TXT":'+ #13 +#13 +
             '     Compara arquivo de Entrada1 com arquivo de Entrada2.'+  #13+
             '     Gera arquivo de encontrados indicando linha e coluna de cada caracter encontrado.'+
             #13 + #13+'Alberto Vieira Lima',mtInformation,[mbOK], 0);
end;

procedure TForm1.ListaCaracterClick(Sender: TObject);
begin
  If ListaCaracter.Checked = False then
     begin
       ListaCaracter.Checked := True;
       ListaLinha.Checked    := False;
     end
  else
     begin
       ListaCaracter.Checked := False;
       ListaLinha.Checked    := True;
     end;
end;

procedure TForm1.ListaLinhaClick(Sender: TObject);
begin
  If ListaLinha.Checked = False then
     begin
       ListaLinha.Checked    := True;
       ListaCaracter.Checked := False;
     end
  else
     begin
       ListaLinha.Checked    := False;
       ListaCaracter.Checked := True;
     end;
end;

procedure TForm1.Fecharoprograma1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  if ((Edit1.Text <> '') and (Edit2.Text <> '')) then
     begin
       btn1.Enabled     := False;
       btn2.Enabled     := True;
       SpeedButton1.Enabled  := False;
       SpeedButton2.Enabled  := False;
       Arquivo1.Enabled := False;
       Sobre1.Enabled   := False;

       { *** Entrada 1  *** }
       AssignFile(Entrada1,OpenArquivo1.FileName);
       Reset(Entrada1);
       { *** Entrada 2  *** }
       AssignFile(Entrada2,OpenArquivo2.FileName);
       Reset(Entrada2);

       AssignFile(Saida,ExtractFileDir(OpenArquivo2.FileName) + '\COMPARA.TXT');
       Rewrite(Saida);

       Lidos:=0;
       Cont:=0;
       While not Eof(Entrada1) and not Eof(Entrada2)do
          begin
            Application.ProcessMessages;
            if Cancelar Then
              Begin
                Cancelar := False;
                if MessageDlg('Deseja cancelar o processo ?',mtConfirmation,[mbYes,mbNo],0) = mrYes Then
                   Begin
                     btn1.Enabled := True;
                     btn2.Enabled := False;
                     CloseFile(Entrada1);
                     CloseFile(Saida);
                     Label1.Caption := ' Encontrados...: 0';
                     Label1.Refresh;
                     Label2.Caption := ' Lidos.............: 0';
                     Label2.Refresh;
                     Abort;
                   End
                else
                  btn1.Enabled := False;
              end;


            Readln(Entrada1,Linha1);
            Readln(Entrada2,Linha2);
            Lidos := Lidos + 1;

            Achou := False;

            Label2.Caption := ' Lidos.............: ' + IntToStr(Lidos);
            Label2.Refresh;

            For I:= 1 to Length(Linha1) do
               begin
                 if (Copy(Linha1,I,1) <> Copy(Linha2,I,1)) then
                   if ListaCaracter.Checked = True then
                      begin
                        Cont := Cont+1;
                        Label1.Caption := ' Encontrados : ' + IntToStr(Cont);
                        Label1.Refresh;
                        Writeln(Saida,' Linha.: ' + AjustaStr(IntToStr(Lidos),10) + '    Posição.:' + AjustaStr(IntToStr(I),10) + '  Caracter Arquivo1.: ' + AjustaStr(Copy(Linha1,I,1),5) + '  Caracter Arquivo2.: ' + AjustaStr(Copy(Linha2,I,1),5));
                        //Writeln(Saida,' Linha.: ' + AjustaStr(IntToStr(Lidos),10) + '    Posição.:' + AjustaStr(IntToStr(I),10) + '  Caracter.: ' + AjustaStr(Copy(Linha2,I,1),5));
                      end
                   else
                     begin
                       Achou     := True;
                       Posicao   := Posicao   + IntToStr(I) + ' ';
                       Caracter1 := Caracter1 + Copy(Linha1,I,1) + ' ';
                       Caracter2 := Caracter2 + Copy(Linha2,I,1) + ' ';
                     end;
               end;
            if ((Achou = True) and (ListaLinha.Checked = True)) then
              begin
                Cont := Cont+1;
                Label1.Caption := ' Encontrados...: ' + IntToStr(Cont);
                Label1.Refresh;
                Writeln(Saida,'  Nº Linha.: ' + AjustaStr(IntToStr(Lidos),10) + '    Posição.: [ ' + Posicao + ']    Caracter arquivo 1.: [ ' + Caracter1 + '] Caracter arquivo 2.: [ ' + Caracter2 + ']');

                Writeln(Saida,'Arquivo1 : ' + Linha1);
                Writeln(Saida,'Arquivo2 : ' + Linha2);
                Writeln(Saida,'');
                Posicao := '';
                Caracter1 := '';
                Caracter2 := '';
              end;
          end;

       CloseFile(Entrada1);
       CloseFile(Entrada2);
       CloseFile(Saida);

       btn1.Enabled     := True;
       btn2.Enabled     := False;
       SpeedButton1.Enabled  := True;
       SpeedButton2.Enabled  := True;
       Arquivo1.Enabled := True;
       Sobre1.Enabled   := True;

       MessageDlg('Fim do processo!', mtInformation,[mbOk], 0);

       if MessageDlg('Deseja visualizar o resultado da compração?',mtConfirmation,[mbYes,mbNo],0) = mrYes Then
          begin
            Form2.RichEdit1.Clear;

            AssignFile(Saida,ExtractFileDir(OpenArquivo2.FileName) + '\COMPARA.TXT');
            Reset(Saida);

            While not Eof(Saida) do
              begin
                Readln(Saida,Linha1);

                if ListaLinha.Checked = True then
                   begin
                     if Copy(Linha1,1,11) = 'Arquivo1 : ' then
                        Form2.RichEdit1.SelAttributes.Color := clRed
                     else
                       if Copy(Linha1,1,11) = 'Arquivo2 : ' then
                          Form2.RichEdit1.SelAttributes.Color := clBlue;
                   end;
//                else
//                   begin
//                     if Copy(Linha1,45,19) = 'Caracter Arquivo1.:' then
//                        Form2.RichEdit1.SelAttributes.Color := clRed
//                     else
//                       if Copy(Linha1,72,19) = 'Caracter Arquivo2.:' then
//                          Form2.RichEdit1.SelAttributes.Color := clBlue;
//                   end;

                Form2.RichEdit1.Lines.Add(Linha1);

              end;

            Form2.Label2.Caption := Edit1.Text;
            Form2.Label2.Refresh;
            Form2.Label3.Caption := Edit2.Text;
            Form2.Label3.Refresh;

            Form2.Label1.Caption := 'Total de linha(s).: ' + IntToStr(Form2.RichEdit1.Lines.Count);
            Form2.Label1.Refresh;
            Form2.ShowModal;
            CloseFile(Saida);
          end;
     end
  else
    MessageDlg('Selecione os arquivos', mtWarning,[mbOk], 0);
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  Cancelar := True;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  OpenArquivo1.Execute;
  if OpenArquivo1.FileName <> OpenArquivo2.FileName then
     begin
       Edit1.Text := OpenArquivo1.FileName;
       File1      := OpenArquivo1.FileName;
     end
  else
    begin
      if OpenArquivo1.FileName <> '' then
         MessageDlg('Arquivo já selecionado !', mtWarning,[mbOk], 0);
      Edit1.Text := '';
    end;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
  OpenArquivo2.Execute;
  if OpenArquivo1.FileName <> OpenArquivo2.FileName then
     begin
       Edit2.Text := OpenArquivo2.FileName;
       File2      := OpenArquivo2.FileName;
     end
  else
    begin
      if OpenArquivo2.FileName <> '' then
         MessageDlg('Arquivo já selecionado !', mtWarning,[mbOk], 0);
      Edit2.Text := '';
    end;
end;

end.
