unit Cria_form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FILECTRL,DBTABLES,DB, StdCtrls,Menus, ExtCtrls;

type
  TForm1 = class(TForm)
    SaveDialog1: TSaveDialog;
    PopupMenu1: TPopupMenu;
    DelSelecionado: TMenuItem;
    DelTodos: TMenuItem;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button2: TButton;
    ComboBox1: TComboBox;
    CheckBox1: TCheckBox;
    GroupBox3: TGroupBox;
    Label4: TLabel;
    ListBox1: TListBox;
    GroupBox4: TGroupBox;
    Button1: TButton;
    N1: TMenuItem;
    Carregarestrutura1: TMenuItem;
    OpenDialog1: TOpenDialog;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Fecharprograma1: TMenuItem;
    Sobre1: TMenuItem;
    CriatabelaDBF1: TMenuItem;
    Bevel1: TBevel;
    Salvarestrutura1: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DelSelecionadoClick(Sender: TObject);
    procedure DelTodosClick(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Carregarestrutura1Click(Sender: TObject);
    procedure Fecharprograma1Click(Sender: TObject);
    procedure CriatabelaDBF1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Salvarestrutura1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Cont,I,Y:integer;
  Local,NomeTbl,Campo,Tipo,WTam,WPos,Indexar,CampoIndex:String;
  Achou:Boolean;
  Tabela:TTable;

implementation

Uses Bibliotecas;

{$R *.dfm}

{ *** Programa para criação de tabela DBF
      Desenvolvido por Alberto V.Lima Data 25/06/2008 *** }

procedure TForm1.Button1Click(Sender: TObject);
begin
  SaveDialog1.Execute;

  If SaveDialog1.FileName <> '' then
    begin
      Try
        Try
          if not Assigned(Tabela) then
             Tabela := TTable.Create(Application);

          With Tabela  do
            begin
              DatabaseName := ExtractFileDir(SaveDialog1.FileName);
              TableName    := SaveDialog1.FileName;
              TableType    := ttDBase;
            end;

          Tabela .FieldDefs.Clear;

          With Tabela .FieldDefs do
            begin
              For I := 0 to ListBox1.Count-1 do
                begin
                  Achou := False;
                  Tipo := '';

                  For Y := 1 to length(ExtractFileName(ListBox1.Items[I])) do
                    begin
                      if ((Copy(ExtractFileName(ListBox1.Items[I]),Y,1) = ',') or (Copy(ExtractFileName(ListBox1.Items[I]),Y,1) = ';')) then
                         Cont := Cont + 1;

                      if ((Cont = 0) and (Copy(ExtractFileName(ListBox1.Items[I]),Y,1) <> ',')) then
                         Campo := Campo + Copy(ExtractFileName(ListBox1.Items[I]),Y,1);

                      if ((Cont = 1) and (Copy(ExtractFileName(ListBox1.Items[I]),Y,1) <> ',')) then
                         WTam := WTam + Copy(ExtractFileName(ListBox1.Items[I]),Y,1);

                      if ((Cont = 2) and (Copy(ExtractFileName(ListBox1.Items[I]),Y,1) <> ',')) then
                         Tipo := Tipo + Copy(ExtractFileName(ListBox1.Items[I]),Y,1);
                    end;

                  If Tipo = 'Aut' then
                     ADD(Campo,ftAutoInc);
                  If Tipo = 'Dat' then
                     ADD(Campo,ftDate);
                  If Tipo = 'Int' then
                     ADD(Campo,ftInteger,0,False);
                  If Tipo = 'Flo' then
                     ADD(Campo,ftFloat,0,False);
                  If Tipo = 'Str' then
                     ADD(Campo,ftString,StrToInt(WTam),False);
                  If Tipo = 'Tim' then
                     ADD(Campo,ftTime);
                  If Tipo = 'Boo' then
                     ADD(Campo,ftBoolean);

                  WPos := '';
                  WTam := '';
                  Tipo := '';
                  Campo:= '';
                  Cont := 0;
                end;
            end;

          If CampoIndex = 'S' then
             begin
               With Tabela .IndexDefs do
                 begin
                   Clear;
                   For I := 0 to ListBox1.Count-1 do
                     begin
                       Tipo := '';
                       If Copy(ExtractFileName(ListBox1.Items[I]),Length(ExtractFileName(ListBox1.Items[I])),1) = 'S' then
                          begin
                            For Y := 1 to length(ExtractFileName(ListBox1.Items[I])) do
                              begin
                                if ((Copy(ExtractFileName(ListBox1.Items[I]),Y,1) = ',') or (Copy(ExtractFileName(ListBox1.Items[I]),Y,1) = ';')) then
                                   Cont := Cont + 1;

                                if ((Cont = 0) and (Copy(ExtractFileName(ListBox1.Items[I]),Y,1) <> ',')) then
                                   Campo := Campo + Copy(ExtractFileName(ListBox1.Items[I]),Y,1);
                              end;
                            Add('INDEX'+IntToStr(I),Campo, []);
                            Campo:= '';
                            Cont := 0;
                          end;
                     end;
                 end;
             end;

          Tabela.CreateTable;
          Tabela.Close;
          MessageDlg('Tabela criada com sucesso!', mtInformation,[mbOk], 0);

        except
          MessageDlg('Não foi possível criar a tebala!', mtError,[mbOk],0);
        end;
      Finally
        if Assigned(Tabela) then
           FreeAndNil(Tabela);
      end;
    end;
end;
procedure TForm1.Button2Click(Sender: TObject);
begin
  If ((Edit1.Text <> '') and (Edit2.Text <> '')) then
     begin
       Achou := False;
       If CheckBox1.Checked = True then
          begin
            Indexar := 'S';
            CampoIndex := 'S';
          end
       else
          Indexar := 'N';

       case ComboBox1.ItemIndex of
         0: begin
             Tipo := 'Aut';
             Edit2.Text := '0';
            end;
         1: Tipo := 'Dat';
         2: Tipo := 'Int';
         3: Tipo := 'Flo';
         4: Tipo := 'Str';
         5: Tipo := 'Tim';
         6: Tipo := 'Boo';
       else
        ShowMessage('');
       end;

       if ListBox1.Count = 0 then
         begin
           ListBox1.Items.Add(ExtractFileName(Edit1.Text + ',' + Edit2.Text  + ',' + Tipo + ';' + Indexar));
         end
       else
         begin
           For I := 0 To ListBox1.Count-1 Do
              if ExtractFileName(Edit1.Text + ',' + Edit2.Text  + ',' + Tipo + ';' + Indexar) = ExtractFileName(ListBox1.Items[I]) then
                 Achou := True;

              if not Achou then
                 begin
                   ListBox1.Items.Add(ExtractFileName(Edit1.Text + ',' + Edit2.Text  + ',' + Tipo + ';' + Indexar));
                   Achou := False;
                 end
         end;

       Label4.Caption := 'Total de Campos: ' + IntToStr(ListBox1.Count);
       Label4.Refresh;

       Edit1.Clear;
       Edit2.Clear;
       Edit1.SetFocus;

       CheckBox1.Checked := False;
       ComboBox1.ItemIndex := -1;
       Salvarestrutura1.Enabled := True;
       DelSelecionado.Enabled   := True;
       DelTodos.Enabled         := True;
     end
  else
    MessageDlg('Informe os parâmetros!', mtWarning,[mbOk], 0);
end;

procedure TForm1.DelSelecionadoClick(Sender: TObject);
begin
  ListBox1.DeleteSelected;
  if ListBox1.Count <= 0 then
     begin
       Carregarestrutura1.Enabled := True;
       Salvarestrutura1.Enabled   := False;
       DelSelecionado.Enabled     := False;
       DelTodos.Enabled           := False;
     end;
end;

procedure TForm1.DelTodosClick(Sender: TObject);
begin
  ListBox1.Clear;
  if ListBox1.Count <= 0 then
     begin
       Carregarestrutura1.Enabled := True;
       Salvarestrutura1.Enabled   := False;
       DelSelecionado.Enabled     := False;
       DelTodos.Enabled           := False;
     end;
end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  If (Key < #48) Or (Key >#57) Then
     Key := #0;
end;

procedure TForm1.Carregarestrutura1Click(Sender: TObject);
begin
  OpenDialog1.Execute;

  if FileExists(OpenDialog1.FileName) then
     ListBox1.Items.LoadFromFile(OpenDialog1.FileName);

  Label4.Caption := 'Total de Campos: ' + IntToStr(ListBox1.Count);
  Label4.Refresh;

  if ListBox1.Count > 0 then
     begin
       Salvarestrutura1.Enabled   := True;
       DelSelecionado.Enabled     := True;
       DelTodos.Enabled           := True;
       Carregarestrutura1.Enabled := False;
     end;
end;

procedure TForm1.Fecharprograma1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.CriatabelaDBF1Click(Sender: TObject);
begin
 MessageDlg('Cria tabela DBF v3.0' + #13#10 + #13#10+
            'Cria tabela simples no formato DBF ' + #13#10 + #13#10+
            'Desenvolvido por: alberto.vlima@hotmail.com ', mtInformation,[mbOk], 0);
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if ((ListBox1.Count > 0) and (Bibliotecas.Sem_Extensao(OpenDialog1.FileName) <> '')) then
       ListBox1.Items.SaveToFile(ExtractFilePath(Application.ExeName) + '\' + Bibliotecas.Sem_Extensao(OpenDialog1.FileName) + 'TXT');
end;

procedure TForm1.Salvarestrutura1Click(Sender: TObject);
begin
  SaveDialog1.Execute;

  ListBox1.Items.SaveToFile( Bibliotecas.Sem_Extensao(SaveDialog1.FileName) + '.TXT');
end;

end.
