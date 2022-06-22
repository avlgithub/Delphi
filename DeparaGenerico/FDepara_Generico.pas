unit FDepara_Generico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, FileCtrl, db, DBTables, Buttons, WinSkinData, Menus;

type
  TForm1 = class(TForm)
    GroupBox6: TGroupBox;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    FileListBox1: TFileListBox;
    DirectoryListBox1: TDirectoryListBox;
    DriveComboBox1: TDriveComboBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    SkinData1: TSkinData;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    GroupBox9: TGroupBox;
    GroupBox3: TGroupBox;
    Button1: TButton;
    ListBox1: TListBox;
    ListBox2: TListBox;
    PopupMenu1: TPopupMenu;
    Excluirarquivo1: TMenuItem;
    GroupBox10: TGroupBox;
    Label6: TLabel;
    Edit1: TEdit;
    Label7: TLabel;
    Edit2: TEdit;
    GroupBox11: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label12: TLabel;
    Button2: TButton;
    OpenDialog1: TOpenDialog;
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Excluirarquivo1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Entrada_Doc,Entrada_Chpras,Doc,Saida_OK,Saida_ERRO,Ent_Param: TextFile;
  Linha,WTam,WCampo:string;
  Lidos,OK,Erro,I: Integer;
  Tabela1:TTable;
  Achou:Boolean;
implementation

{$R *.dfm}

Function Espaco(Tipo:String; Tan:Integer):String;
Var
 i:Integer;
 esp:string;
Begin
  for i:=1 to Tan do
    esp:=esp + Tipo;

  Result := esp;
End;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Lidos  := 0;
  OK     := 0;
  Erro   := 0;

  If ((Edit1.Text = '') and (Edit2.Text = '')) then
     ShowMessage('Informe os parâmetros !')
  else
    begin
      { *** Criando Tabela Indexada *** }
      Tabela1 := TTable.Create(Application);
      Tabela1.TableName := ExtractFilePath(Application.Name) + 'Tbl.DBF';
      Tabela1.TableType := ttDBase;
      AssignFile(Ent_Param,OpenDialog1.FileName);
      Reset(Ent_Param);

      While not Eof(Ent_Param) do
        Begin
          Readln(Ent_Param,Linha);
          WCampo := '';
          WTam   := '';

          For I := 1 to Length(Linha) do
              If (Copy(Linha,I,1) <> ',') And (Wtam = '')then
                  WCampo := WCampo + Copy(Linha,I,1)
              Else
                if WTam = '' then
                   WTam := Copy(Linha,I + 1,3);
                   Tabela1.FieldDefs.Add(WCampo,ftString,StrToInt(WTam),False);
        end;

     { *** Define parâmetros simples *** }
     if ExtractFileName(ListBox1.Items[0]) <> ExtractFileName(ListBox2.Items[0]) then
        begin
         { *** Criando Tabela Indexada *** }
         Tabela1 := TTable.Create(Application);
         Tabela1.TableName := ExtractFilePath(Application.Name) + 'Tbl.DBF';
         Tabela1.TableType := ttDBase;

         with Tabela1.FieldDefs do
           begin
             Clear;
             Add('NCHPRAS', ftString,StrToInt(Edit1.Text), False);
             Add('AUX'    , ftString,255, False);
           end;

         with Tabela1.IndexDefs do
           begin
             Clear;
             Add('INDEX1','NCHPRAS', []);
           end;

         Tabela1.CreateTable;
         { *** Abrindo Tabela *** }
         Tabela1.IndexName := 'INDEX1';
         Tabela1.Open;
         Tabela1.Active := True;
         { *** Alimentando Table com Arquivo de Entrada *** }
         AssignFile(Entrada_Doc,ExtractFileName(ListBox1.Items[0]));
         Reset(Entrada_Doc);

         While not EOF(Entrada_Doc) do
           begin
             Readln(Entrada_Doc,Linha);
             Tabela1.Insert;
             Tabela1.FieldByName('NCHPRAS').AsString := Copy(Linha,StrToInt(Edit2.Text),StrToInt(Edit1.Text));
             Tabela1.FieldByName('AUX'    ).AsString := Copy(Linha,StrToInt(Edit2.Text) + 1,255);
             Tabela1.Post;
             Lidos := Lidos + 1;
             Label12.Caption := ' Alimentando Tabela, Aguarde...';
             Label12.Refresh;
             Label4.Caption := ' Lidos.....: ' + IntToStr(Lidos);
             Label4.Refresh;
           end;

         CloseFile(Entrada_Doc);
         { *** Fechando Tabela *** }
         Tabela1.Close;
         Tabela1.Active := False;

        { *** Arquivo com a Tabela Criada *** }
        { *** Abrindo Tabela *** }
         Tabela1.IndexName := 'INDEX1';
         Tabela1.Open;
         Tabela1.Active := True;
         Label12.Caption := ' Pesquisando dados, Aguarde...';
         Label12.Refresh;

         AssignFile(Entrada_Chpras,ExtractFileName(ListBox2.Items[0]));
         Reset(Entrada_Chpras);

         AssignFile(Saida_OK, ExtractFilePath(Application.Name) + 'Encontrados.TXT');
         Rewrite(Saida_OK);

         AssignFile(Saida_ERRO, ExtractFilePath(Application.Name) + 'Naoencontrados.TXT');
         Rewrite(Saida_ERRO);

         While not EOF(Entrada_Chpras) do
           begin
             Readln(Entrada_Chpras,Linha);

             { *** Procura no DBF *** }
             Achou := Tabela1.Locate('NCHPRAS',Copy(Linha,1,StrToInt(Edit1.Text)),[]);

             If achou then
                begin
                  Writeln(Saida_OK,Linha);// + ' ' + Tabela1.FieldByName('AUX').AsString + Espaco(' ', 2 - Length(Tabela1.FieldByName('AUX').AsString)) + '*');
                  OK := OK + 1;
                  Label3.Caption := ' Encont....: ' + IntToStr(OK);
                  Label3.Refresh;
                end
             else
                begin
                  Writeln(Saida_ERRO,Linha);
                  Erro := Erro + 1;
                  Label2.Caption := ' Não Encont: ' +IntToStr(Erro);
                  Label2.Refresh;
                end;
           end;

         CloseFile(Entrada_Chpras);
         CloseFile(Saida_OK);
         CloseFile(Saida_ERRO);
         { *** Fechando Tabela *** }
         Tabela1.Active := False;
         Tabela1.Close;
         DeleteFile(ExtractFilePath(Application.Name) + 'Tbl.DBF');
         DeleteFile(ExtractFilePath(Application.Name) + 'Tbl.MDX');
         Label12.Caption := ' Fim do Processo...';
         Label12.Refresh;


         ShowMessage('Fim do Processo...');
        end
      else
        ShowMessage('Selecione o(s) Arquivo(s) correto(s)!');
   end;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
Var
Achou:Boolean;
begin
  Achou := False;

  if ListBox1.Count = 0 then
     begin
       ListBox1.Items.Add(ExtractFileName(Filelistbox1.FileName));
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

procedure TForm1.SpeedButton2Click(Sender: TObject);
Var
Achou:Boolean;
begin
  Achou := False;

  if ListBox2.Count = 0 then
     begin
       ListBox2.Items.Add(ExtractFileName(Filelistbox1.FileName));
     end
  else
    begin
      For I := 0 To ListBox2.Count-1 Do
         if ExtractFileName(FileListBox1.FileName) = ExtractFileName(ListBox2.Items[I]) then
            Achou := True;

         if not Achou then
            begin
              ListBox2.Items.Add(ExtractFileName(Filelistbox1.FileName));
              Achou := False;
            end
         end;
end;

procedure TForm1.Excluirarquivo1Click(Sender: TObject);
begin
  ListBox1.DeleteSelected;
  ListBox2.DeleteSelected;  
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  OpenDialog1.Title := ' Inserir arquivo de estrutura [.txt]';
  OpenDialog1.Execute;
  Label12.Caption := ' Arquivo de parâmetros carregado, Aguardando o processamento... ';
  Label12.Refresh;
end;

end.

