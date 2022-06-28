unit COMPARAESEPARA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FileCtrl, StdCtrls, ExtCtrls, Buttons, Menus;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    FileListBox1: TFileListBox;
    DirectoryListBox1: TDirectoryListBox;
    DriveComboBox1: TDriveComboBox;
    GroupBox2: TGroupBox;
    OpenDialog1: TOpenDialog;
    Label3: TLabel;
    Edit1: TEdit;
    ListBox1: TListBox;
    Button3: TButton;
    Button1: TButton;
    Button5: TButton;
    GroupBox3: TGroupBox;
    Label8: TLabel;
    Label6: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    GroupBox4: TGroupBox;
    Edit2: TEdit;
    Label4: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    PopupMenu1: TPopupMenu;
    MainMenu1: TMainMenu;
    Sobre1: TMenuItem;
    GroupBox5: TGroupBox;
    ListBox2: TListBox;
    Excluiroitemselecionado1: TMenuItem;
    Excluirtodosositens1: TMenuItem;
    PopupMenu2: TPopupMenu;
    Excluiroitemselecionado2: TMenuItem;
    Excluirtodosositens2: TMenuItem;
    PopupMenu3: TPopupMenu;
    Adicionartodososarquivos1: TMenuItem;
    Label10: TLabel;
    Label11: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Excluiroitemselecionado1Click(Sender: TObject);
    procedure Excluiroitemselecionado2Click(Sender: TObject);
    procedure Excluirtodosositens1Click(Sender: TObject);
    procedure Excluirtodosositens2Click(Sender: TObject);
    procedure FileListBox1DblClick(Sender: TObject);
    procedure Adicionartodososarquivos1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;
var
  Form1: TForm1;
  Entrada,Saida,Errado:TextFile;
  Linhaentra,Linhasai,LinhaErro,Item,Compara,Pergunta:String;
  aPos,x1,x2,Gerados,Rejeitados,I,J,X,Achou:Integer;
  Achou2 : Boolean;
implementation

{$R *.dfm}
{ **** iSisTem Pro - Sistema de desenvolvimento de Programa e tratamento de arquivos ****}
{ **** Programa de autoria: Eduardo Cordeiro Maia Monteiro *****}
{ **** Modificado por: Alberto Vieira Lima ****}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Pergunta := UpperCase(InputBox('Filtra registros','Deseja separar os arquivo de saída ?' + #13 + ' Informe S ou N.','N'));

  For X := 0 to ListBox2.Count-1 do
    begin
      AssignFile(Entrada,ListBox2.Items[X]);
      Reset(Entrada);

      {********************* Limpando Label´s ******************}
      Label1.Caption := '';
      Label1.Refresh;
      Label7.Caption := '';
      Label7.Refresh;
      Label9.Caption := '';
      Label9.Refresh;

      If Pergunta = 'S' then
         begin
           I  := 1;

           Gerados    := 0;
           Rejeitados := 0;

           for j := 0 to ListBox1.Count -1 do
             Begin
               AssignFile(saida, ExtractFileName(ListBox2.Items[X]) + ' - ' + trim(ListBox1.Items[j]) + '.TXT');
               Rewrite(saida);
               while not Eof(Entrada) do
                  Begin
                    Achou :=0;
                    Readln(Entrada,linhaentra);
                    Compara := Copy(Linhaentra,StrToInt(Edit2.Text),StrToInt(Edit3.Text));

                    if Trim(ListBox1.Items[j]) = Trim(compara) then
                       Begin
                         achou:=1
                       end;

                    if ACHOU=1 THEN
                       Begin
                         linhasai:=linhaentra;
                         Writeln(saida,linhasai);
                       end;
                  end;
                  CloseFile(saida);
             end;
               { *** Gera os arquivos não contidos na lista *** }

           AssignFile(Errado,ExtractFileName(ListBox2.Items[X]) + ' - Restantes.txt');
           Rewrite(Errado);
           Reset(Entrada);

           while not Eof(Entrada) do
              begin { *** 1º incicio *** }
                Achou :=0;
                Readln(Entrada,Linhaentra);
                Compara := Copy(linhaentra,StrToInt(Edit2.Text),StrToInt(Edit3.Text));

                for j := 0 to ListBox1.Count -1 do
                  begin { *** 2º inicio *** }
                    if Trim(ListBox1.Items[j])= Trim(Compara) then
                       begin { *** 3º inicio *** }
                         Achou :=1
                       end   { *** Fim di 3º inicio *** }
                   end;      { *** Fim do segundo inicio *** }

                If Achou = 1 then
                   Begin { *** 4º inicio *** }
                     Gerados := Gerados + 1;
                   End   { *** Fim di 4º inicio *** }
                else
                  Begin { *** 5º Inicio *** }
                    Linhaerro:=linhaentra;
                    Writeln(Errado,linhaerro);
                    Rejeitados := Rejeitados + 1;
                  End;  { *** Fim do 5º Inicio *** }

                Label7.Caption := IntToStr(Gerados);
                Label7.Refresh;
                Label9.Caption := IntToStr(Rejeitados);
                Label9.Refresh;
                Label1.Caption := IntToStr(i);
                Label1.Refresh;
                i := i + 1;
              end;
           CloseFile(Entrada);
           CloseFile(Errado);
         end;

      {**********************Não Separar Saídas**********************}
      If Pergunta = 'N' then
         begin
           AssignFile(saida,ExtractFileName(ListBox2.Items[X]) + ' - Encontrados.txt');
           Rewrite(saida);

           AssignFile(Errado,ExtractFileName(ListBox2.Items[X]) + ' - Nao Encontrados.txt');
           Rewrite(Errado);

           x1 := StrToInt(Edit2.Text); // Posição
           x2 := StrToInt(Edit3.Text); // Tamanho do campo
           i  := 1;

           Gerados  := 0;
           Rejeitados := 0;

           while not Eof(entrada) do
              begin
                Achou := 0;
                Readln(entrada,linhaentra);
                compara:=copy(linhaentra,x1,x2);

                for j:=0 to ListBox1.Count -1 do
                  begin
                    if Trim(ListBox1.Items[j])=Trim(compara) then
                       begin
                         achou:=1
                       end
                  end;

                if Achou =1 THEN
                   begin
                     linhasai:=linhaentra;
                     Writeln(saida,linhasai);
                     Gerados := Gerados + 1;
                   end
                else
                  begin
                    linhaerro:=linhaentra;
                    Writeln(Errado,linhaerro);
                    Rejeitados := Rejeitados + 1;
                  end;

                Label7.Caption := IntToStr(GERADOS);
                Label7.Refresh;
                Label9.Caption := IntToStr(REJEITADOS);
                Label9.Refresh;
                Label1.Caption := IntToStr(i);
                Label1.Refresh;
                i := i + 1;
              end;

           CloseFile(Entrada);
           CloseFile(Saida);
           CloseFile(Errado);
           ShowMessage('Fim de processamento');
         end;
    end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Edit1.Text     := '';
  Edit2.Text     := '';
  Edit3.Text     := '';
  Label1.Caption := '';
  Label7.Caption := '';
  Label9.Caption := '';
  ListBox1.Clear;
  ListBox1.Enabled := False;
  Button1.Enabled := False;
  Button3.Enabled := False;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
 Close;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
 ListBox1.DeleteSelected;
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
 IF ((Edit3.Text = '') or (Edit2.Text = '')) then
    ShowMessage('Informar o tamanho do campo')
 else
   Edit1.MaxLength := StrToInt(Edit3.text);
end;

procedure TForm1.Button5Click(Sender: TObject);
Var
 EntradaL :Textfile;
 Linha:String;
begin
  Opendialog1.FileName := '*.txt';
  opendialog1.Filter := 'TXT - Arquivo Texto';

  if OpenDialog1.Execute then
     Begin
       Linha:= OpenDialog1.FileName;
       AssignFile(EntradaL, Linha);
       Reset(EntradaL);

      While not eof(EntradaL) do
       Begin
         Readln(EntradaL, Linha);
         ListBox1.Items.Add(Linha);
       End;
      CloseFile(Entradal);
     end;
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
     if Edit1.Text = '' then
        Begin
          ShowMessage('Você deve Informar os parâmetros a serem filtrados');
          Edit2.SetFocus;
        End
      Else
        If ((Edit2.Text = '') or (Edit3.Text = '')) then
          Begin
            ShowMessage('Você deve informar posição e tamanho do campo');
            Edit2.SetFocus;
          End
      Else
        Begin
          ListBox1.Items.Add(Edit1.Text);
          Edit1.Text := '';
          Edit1.SetFocus;
          Label11.Caption := 'Total de itens: ' + IntToStr(ListBox1.Count);
          Label11.Refresh;
          Button1.Enabled := True;
          Button3.Enabled := True;
          ListBox1.Enabled := True;
        End;
end;

procedure TForm1.Excluiroitemselecionado1Click(Sender: TObject);
begin
  ListBox2.DeleteSelected;
  Label10.Caption := 'Total : ' + IntToStr(ListBox2.Count);;
  Label10.Refresh;
  If ListBox2.Count <= 0 then
     begin
       Label3.Enabled := False;
       Label4.Enabled := False;
       Label5.Enabled := False;
       Edit1.Enabled  := False;
       Edit2.Enabled  := False;
       Edit3.Enabled  := False;
       ListBox1.Enabled := False;
     end;
end;

procedure TForm1.Excluiroitemselecionado2Click(Sender: TObject);
begin
  ListBox1.DeleteSelected;
  Label11.Caption := 'Total de itens: ' + IntToStr(ListBox1.Count);
  Label11.Refresh;

  If ListBox1.Count <= 0 then
     begin
       Button1.Enabled := False;
       Button3.Enabled := False;
       ListBox1.Enabled := False;       
     end;
end;

procedure TForm1.Excluirtodosositens1Click(Sender: TObject);
begin
  ListBox2.Clear;
  Label10.Caption := 'Total : ' + IntToStr(ListBox2.Count);;
  Label10.Refresh;
  If ListBox2.Count <= 0 then
     begin
       Label3.Enabled := False;
       Label4.Enabled := False;
       Label5.Enabled := False;
       Edit1.Enabled  := False;
       Edit2.Enabled  := False;
       Edit3.Enabled  := False;
       ListBox1.Enabled := False;       
     end;
end;

procedure TForm1.Excluirtodosositens2Click(Sender: TObject);
begin
  ListBox1.Clear;
  Label11.Caption  := 'Total de itens: ' + IntToStr(ListBox1.Count);
  Label11.Refresh;
  ListBox1.Enabled := False;
  Button1.Enabled  := False;
  Button3.Enabled  := False;
end;

procedure TForm1.FileListBox1DblClick(Sender: TObject);
begin
  if FileListBox1.FileName <> '' then
    begin
      Achou2 := False;

      if ListBox2.Count = 0 then
         begin
           ListBox2.Items.Add(ExtractFileName(Filelistbox1.FileName));
         end
      else
        begin
          For I := 0 To ListBox2.Count-1 Do
            if ExtractFileName(FileListBox1.FileName) = ExtractFileName(ListBox2.Items[I]) then
               Achou2 := True;

            if not Achou2 then
               begin
                 ListBox2.Items.Add(ExtractFileName(Filelistbox1.FileName));
                 Achou2 := False;
               end
        end;
      Label10.Caption := 'Total : ' + IntToStr(ListBox2.Count);;
      Label10.Refresh;
      Label3.Enabled := True;
      Label4.Enabled := True;
      Label5.Enabled := True;
      Edit1.Enabled  := True;
      Edit2.Enabled  := True;
      Edit3.Enabled  := True;
      Edit2.SetFocus;
    end;
end;

procedure TForm1.Adicionartodososarquivos1Click(Sender: TObject);
begin
  if FileListBox1.Count <> 0 Then
     begin
       for i := 0 to FileListBox1.Count - 1 do
          Begin
            Achou2 := False;
            For j := 0 to ListBox2.Count-1 do
               if ExtractFileName(FileListBox1.Items[i]) = ListBox2.Items[j] then
                  Achou2 := true;

               if not achou2 then
                  Begin
                    ListBox2.Items.Add(ExtractFileName(FileListBox1.Items[i]));
                  End;
          End;
       Label10.Caption := 'Total : ' + IntToStr(ListBox2.Count);;
       label10.Refresh;
       Label3.Enabled := True;
       Label4.Enabled := True;
       Label5.Enabled := True;
       Edit1.Enabled := True;
       Edit2.Enabled := True;
       Edit3.Enabled := True;
     end;
end;
end.
