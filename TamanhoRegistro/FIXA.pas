unit FIXA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, FileCtrl, Menus, XP_Button;

type
  TForm1 = class(TForm)
    PopupMenu1: TPopupMenu;
    Adicionararquivoselecionado1: TMenuItem;
    Adicionartodososarquivos1: TMenuItem;
    PopupMenu2: TPopupMenu;
    Excluirarquivoselecionado1: TMenuItem;
    Excluirtodososarquivos1: TMenuItem;
    GroupBox2: TGroupBox;
    FileListBox1: TFileListBox;
    DirectoryListBox1: TDirectoryListBox;
    DriveComboBox1: TDriveComboBox;
    GroupBox5: TGroupBox;
    Label4: TLabel;
    ListBox1: TListBox;
    lblLbArq: TLabel;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    LblProc: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    grp1: TGroupBox;
    mm1: TMainMenu;
    Arquivo1: TMenuItem;
    Sobre1: TMenuItem;
    Fixartamanhodoregistro1: TMenuItem;
    Fecharprograma1: TMenuItem;
    BtCancelar: TtfXPButton;
    BtProcessar: TtfXPButton;
    Bevel1: TBevel;

    procedure Adicionartodososarquivos1Click(Sender: TObject);
    procedure Adicionararquivoselecionado1Click(Sender: TObject);
    procedure FileListBox1DblClick(Sender: TObject);
    procedure Excluirarquivoselecionado1Click(Sender: TObject);
    procedure Excluirtodososarquivos1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FileListBox1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Exit(Sender: TObject);

    procedure ListBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Fecharprograma1Click(Sender: TObject);
    procedure Fixartamanhodoregistro1Click(Sender: TObject);
    procedure FileListBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtProcessarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Entrada,Saida,SaidaRel : Textfile;
  WReg,recebe,Pergunta : String;
  WCont,I,J,Total : Integer;
  Achou,Cancelar :Boolean;

implementation

Uses Bibliotecas;

{$R *.dfm}
{ *** Programa para fixar tamanho do registro
      Alberto V.Lima 13/08/2008 *** }


procedure TForm1.Adicionartodososarquivos1Click(Sender: TObject);
begin
  if FileListBox1.Count <> 0 Then
     for i:=0 to FileListBox1.Count - 1 do
       Begin
         Achou := False;
         For j := 0 to ListBox1.Count-1 do
           if ExtractFileName(FileListBox1.Items[i]) = ListBox1.Items[j] then
              Achou := true;

           if not achou then
              Begin
                ListBox1.Items.Add(ExtractFileName(FileListBox1.Items[i]));
              End;
       End;

  If ListBox1.Count > 0 then
     begin
       Edit1.Enabled := True;
       Edit1.SetFocus;
       Label4.Caption := ' Total de arq.: '+ IntToStr(ListBox1.Count);
       Label4.Refresh;
       BtProcessar.Enabled := True;
       Edit1.Enabled := True;
       Edit2.Enabled := True;
       Label1.Enabled := True;
       Label3.Enabled := True;
       Achou := True;
       Edit1.SetFocus;
     end;
end;

procedure TForm1.Adicionararquivoselecionado1Click(Sender: TObject);
begin
  Achou := False;

  if ListBox1.Count = 0 then
     begin
       ListBox1.Items.Add(ExtractFileName(Filelistbox1.FileName));
       Achou := False;
       BtProcessar.Enabled := True;
       Edit1.Enabled := True;
       Edit2.Enabled := True;
       Label1.Enabled := True;
       Label3.Enabled := True;
       Label4.Caption := ' Total de arq.: '+ IntToStr(ListBox1.Count);
       Label4.Refresh;
       Edit1.SetFocus;
     end
  else
    begin
      For I := 0 To ListBox1.Count-1 Do
         if ExtractFileName(FileListBox1.FileName) = ExtractFileName(ListBox1.Items[I]) then
            Achou := True;

         if not Achou then
            begin
              ListBox1.Items.Add(ExtractFileName(Filelistbox1.FileName));
              Achou := False;
            end
    end;
end;

procedure TForm1.FileListBox1DblClick(Sender: TObject);
begin
  Achou := False;

  if ListBox1.Count = 0 then
     begin
       ListBox1.Items.Add(ExtractFileName(Filelistbox1.FileName));
       Achou := False;
       BtProcessar.Enabled := True;
       Edit1.Enabled := True;
       Edit2.Enabled := True;
       Label1.Enabled := True;
       Label3.Enabled := True;
       Label4.Caption := ' Total de arq.: '+ IntToStr(ListBox1.Count);
       Label4.Refresh;
       Edit1.SetFocus;
     end
  else
    begin
      For I := 0 To ListBox1.Count-1 Do
         if ExtractFileName(FileListBox1.FileName) = ExtractFileName(ListBox1.Items[I]) then
            Achou := True;

         if not Achou then
            begin
              ListBox1.Items.Add(ExtractFileName(Filelistbox1.FileName));
              Achou := False;
            end
    end;
end;

procedure TForm1.Excluirarquivoselecionado1Click(Sender: TObject);
begin
  ListBox1.DeleteSelected;
  Label4.Caption := ' Total de arq.: '+ IntToStr(ListBox1.Count);
  Label4.Refresh;

  if ListBox1.Count = 0 then
    begin
      BtProcessar.Enabled := False;
      Edit1.Text := '1';
      Edit2.Clear;
      Edit1.Enabled   := False;
      Edit2.Enabled   := False;
      Label1.Enabled  := False;
      Label3.Enabled  := False;
    end;
end;

procedure TForm1.Excluirtodososarquivos1Click(Sender: TObject);
begin
  ListBox1.Clear;
  Label4.Caption := ' Total de arq.: '+ IntToStr(ListBox1.Count);
  Label4.Refresh;

  if ListBox1.Count = 0 then
    begin
      BtProcessar.Enabled := False;
      Edit1.Text := '1';
      Edit2.Clear;
      Edit1.Enabled   := False;
      Edit2.Enabled   := False;
      Label1.Enabled  := False;
      Label3.Enabled  := False;
    end;
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
     begin
       if ((Edit1.Text = '') or (StrToInt(Edit1.Text) <= 0)) then
           Edit1.Text := '1';
       Edit2.SetFocus
     end
  else
     If (Key < #48) Or (Key >#57) Then
         Key := #0;
end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
     BtProcessar.SetFocus
  else
     If (Key < #48) Or (Key >#57) Then
         Key := #0;
end;

procedure TForm1.FileListBox1KeyPress(Sender: TObject; var Key: Char);
begin
  IF Key = #13 THEN
     begin
       Achou := False;

       if ListBox1.Count = 0 then
          begin
            ListBox1.Items.Add(ExtractFileName(Filelistbox1.FileName));
            Achou := False;
            BtProcessar.Enabled := True;
            Edit1.Enabled := True;
            Edit2.Enabled := True;
            Label1.Enabled := True;
            Label3.Enabled := True;
            Label4.Caption := ' Total de arq.: '+ IntToStr(ListBox1.Count);
            Label4.Refresh;
            Edit1.SetFocus;
          end
       else
         begin
           For I := 0 To ListBox1.Count-1 Do
              if ExtractFileName(FileListBox1.FileName) = ExtractFileName(ListBox1.Items[I]) then
                 Achou := True;

              if not Achou then
                 begin
                   ListBox1.Items.Add(ExtractFileName(Filelistbox1.FileName));
                   Achou := False;
                 end
         end;
    end;
end;
procedure TForm1.Edit1Exit(Sender: TObject);
begin
  if ((Edit1.Text = '') or (StrToInt(Edit1.Text) <= 0)) then
     Edit1.Text := '1';
end;

procedure TForm1.ListBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
  Var
    Arquivos : string;
begin
  Arquivos := '';
  if ListBox1.Count > 0 then
     begin
       for X:=0 to ListBox1.Count - 1 do
           Arquivos := Arquivos +  #13 + '  '+ IntToStr(X+1)+' - '+ ExtractFileName(ListBox1.Items[X]);
       ListBox1.Hint := '                    :: lista de arquivo(s) adicionado(s) :: ' + #13 +' Clique com o botão direito do mouse para excluir os arquivos. ' +#13 + Arquivos + #13;
     end
  else
    ListBox1.Hint := '';
end;

procedure TForm1.Fecharprograma1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.Fixartamanhodoregistro1Click(Sender: TObject);
begin
  MessageDlg('Programa Fixar tamanho do registro:'+ #13 +#13 +
             '     Lê arquivo de entrada/cliente.'+ #13 +
             '     Gera arquivo com tamanho do registro fixado de acordo com os parâmetros inseridos.'+ #13 + #13+
             'Alberto V. Lima',mtInformation,[mbOK],0);
end;

procedure TForm1.FileListBox1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  if FileListBox1.FileName <> '' then
     FileListBox1.Hint := 'Pressione ENTER, dê um duplo clique ou clique com o direito para adicionar o(s) arquivo(s).' + #13+ #13
                        + ' Arquivo selecionado.: ' + ExtractFileName(FileListBox1.FileName);
end;

procedure TForm1.BtCancelarClick(Sender: TObject);
begin
  Cancelar := True;
end;

procedure TForm1.BtProcessarClick(Sender: TObject);
begin
  if ((Edit1.Text <> '') and (Edit1.Text <> '0') and (Edit2.Text <> '') and (StrToInt(Edit2.Text) > 0)) then
      begin
        BtProcessar.Visible := False;
        BtCancelar.Visible  := True;

        Total := 0;
        Assignfile(SaidaRel,'RELFIXO.TXT');
        Rewrite(SaidaRel);
        WriteLn(SaidaRel,' + ---------------------------------------------------------------------------------- + ');
        WriteLn(SaidaRel,' |                            RELATÓRIO DE ARQUIVO(S) FIXADO(S)                       | ');
        WriteLn(SaidaRel,' + ---------------------------------------------------------------------------------- + ');

        For I := 0 to ListBox1.Count-1 do
          begin
            lblLbArq.Caption := '   Arquivo: ' + ExtractFileName(ListBox1.Items[I]);
            lblLbArq.Refresh;

            AssignFile(Entrada,ExtractFileName(ListBox1.Items[I]));
            Reset(Entrada);

            Assignfile(Saida,Sem_Extensao(ExtractFileName(ListBox1.Items[I])) + '_FIXO.TXT');
            Rewrite(Saida);

            Wcont := 0;
            LblProc.Caption := '   Processado(s) : ' + Formatfloat('0000000',Wcont);
            LblProc.Refresh;

            While Not EOF(Entrada) do
               begin
                 Application.ProcessMessages;
                 if Cancelar Then
                    Begin
                      Cancelar := False;
                      if MessageDlg('Deseja cancelar o processo ?',mtConfirmation,[mbYes,mbNo],0) = mrYes Then
                         begin
                           BtCancelar.Visible    := False;
                           BtProcessar.Visible   := True;

                           LblProc.Caption := '   Processado(s) : 000000';
                           LblProc.Refresh;

                           Closefile(Entrada);
                           Closefile(Saida);
                           Closefile(SaidaRel);
                           Abort;
                         end;
                    end;

                 ReadLn(Entrada,WReg);
                 Inc(Wcont);

                 LblProc.Caption := '   Processado(s) : ' + Formatfloat('0000000',Wcont);
                 LblProc.Refresh;

                 if ((Edit2.Text = '') or (Edit2.Text = '0')) then
                    WriteLn(Saida,AjustaStr(Copy(WReg,StrToInt(Edit1.Text),(Length(Wreg)+ 1) - StrToInt(Edit1.Text)),(Length(Wreg)+1) - StrToInt(Edit1.Text)))
                 else
                   WriteLn(Saida,AjustaStr(Copy(WReg,StrToInt(Edit1.Text),StrToInt(Edit2.Text)),StrToInt(Edit2.Text)))
               end;

            Closefile(Entrada);
            Closefile(Saida);

            WriteLn(SaidaRel,AjustaStr(' | ' + FormatDateTime('dd/mm/yyyy - hh:mm:ss', Now),86) + '| ');
            WriteLn(SaidaRel,AjustaStr(' | Arquivo: ' + ExtractFileName(ListBox1.Items[i]),86) + '| ');

            WriteLn(SaidaRel,AjustaStr(' | Qtde...: ' + Formatfloat('0000000',Wcont),86) + '| ');
            WriteLn(SaidaRel,AjustaStr(' |',86) + '|');
            Total := Total + WCont;
          end;

        if ((Edit2.Text = '') or (Edit2.Text = '0')) then
            WriteLn(SaidaRel,' | Posição: ' + Edit1.Text + ' Tamanho do Campo: ' + AjustaStr(IntToStr(Length(WReg)+1-StrToInt(Edit1.Text)),86) + '|')
        else
          WriteLn(SaidaRel,' | Posição: ' + AjustaStr(Edit1.Text,6) + ' Tamanho do Campo: ' + AjustaStr(Edit2.Text,49) + '| ');

        WriteLn(SaidaRel,' + ---------------------------------------------------------------------------------- + ');
        WriteLn(SaidaRel,AjustaStr(' | Total processados: ' + Formatfloat('0000000',Total),86) + '| ');
        WriteLn(SaidaRel,' + ---------------------------------------------------------------------------------- + ');
        Closefile(SaidaRel);

        MessageDlg('Fim do processo!',mtInformation,[mbOK],0);

        LblProc.Caption := '   Processado(s) : 000000';
        LblProc.Refresh;

        lblLbArq.Caption := '';
        lblLbArq.Refresh;

        Edit1.Text    := '1';
        Edit2.Clear;

        Edit2.Color   := clWindow;
        ListBox1.Clear;

        Edit1.Enabled := False;
        Edit2.Enabled := False;

        BtProcessar.Visible := True;
        BtProcessar.Enabled := False;
        BtCancelar.Visible  := False;

        Label4.Caption := ' Total de arq.: '+ IntToStr(ListBox1.Count);
        Label4.Refresh;
      end
  else
    MessageDlg('Informe os parêmetros corretos!',mtWarning,[mbOK],0);
end;

end.
