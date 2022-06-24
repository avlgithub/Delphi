unit VISUALIZA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, DBTables, FileCtrl, Buttons,
  Menus, ComCtrls, Gauges, ActnList, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZConnection, ZAbstractTable, WinSkinData, XPMenu, XP_Button,
  ExtCtrls, ImgList;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Arquiv1: TMenuItem;
    AbrirTabela: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    sobre1: TMenuItem;
    Visualiza1: TMenuItem;
    GeraTXT: TMenuItem;
    SaveDialog1: TSaveDialog;
    LimparTabela: TMenuItem;
    Edio1: TMenuItem;
    EditarTabela: TMenuItem;
    ExcluirReg: TMenuItem;
    CriaTabela: TMenuItem;
    AbrirEstrutura: TMenuItem;
    SalvarEstrutura: TMenuItem;
    GeraQtd: TMenuItem;
    AlimentarTabela: TMenuItem;
    Pesquisar: TMenuItem;
    PopupMenu1: TPopupMenu;
    FecharPesquisa1: TMenuItem;
    ExcluirXateX: TMenuItem;
    FecharTabela1: TMenuItem;
    EstruTabela: TMenuItem;
    N3: TMenuItem;
    AtualizarTabela1: TMenuItem;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label8: TLabel;
    DBGridPrincipal: TDBGrid;
    GroupBox9: TGroupBox;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    TabSheet2: TTabSheet;
    Label6: TLabel;
    GroupBox5: TGroupBox;
    SBPrimeiro: TSpeedButton;
    SBAnterior: TSpeedButton;
    SBProximo: TSpeedButton;
    SBUltimo: TSpeedButton;
    SBExcluir: TSpeedButton;
    EstruturaDBF1: TMenuItem;
    StruturaSQL1: TMenuItem;
    PopupMenu2: TPopupMenu;
    PopAbreTabela: TMenuItem;
    PopFecharTabela: TMenuItem;
    N5: TMenuItem;
    Movimentacao: TMenuItem;
    irparaoprximoregistro1: TMenuItem;
    Irparaoregistroanterior1: TMenuItem;
    Irparaoprximorgistro1: TMenuItem;
    irparaoultimoregistro1: TMenuItem;
    Exibir1: TMenuItem;
    Botoesmovimenta: TMenuItem;
    Campostabela: TMenuItem;
    PopupMenu3: TPopupMenu;
    arquivos1: TMenuItem;
    Fechararquivos1: TMenuItem;
    N2: TMenuItem;
    AbaArquivo: TMenuItem;
    TabSheet3: TTabSheet;
    Memo1: TMemo;
    ZTable1: TZTable;
    ZTable2: TZTable;
    Classtabela: TMenuItem;
    N4: TMenuItem;
    Configuracoe: TMenuItem;
    Exportacao: TMenuItem;
    DBFparaMySQL: TMenuItem;
    MySQLparaDBF: TMenuItem;
    RichEdit1: TRichEdit;
    N6: TMenuItem;
    Alterarfonte1: TMenuItem;
    FontDialog1: TFontDialog;
    GroupBox1: TGroupBox;
    SpeedButton6: TSpeedButton;
    RichEdit2: TRichEdit;
    TerminalSQL: TMenuItem;
    N7: TMenuItem;
    SalvaHTML: TMenuItem;
    StatusBar1: TStatusBar;
    SkinData1: TSkinData;
    XPMenu1: TXPMenu;
    BtnCancelar: TtfXPButton;
    Bevel1: TBevel;
    ImageList1: TImageList;
    btnPesquisa: TtfXPButton;
    N8: TMenuItem;
    DataSource1: TDataSource;

    Procedure GetSubItemMenu(aItemMenu: TMenuItem);
    Procedure SBPrimeiroClick(Sender: TObject);
    Procedure Sair1Click(Sender: TObject);
    Procedure SBAnteriorClick(Sender: TObject);
    Procedure SBProximoClick(Sender: TObject);
    Procedure SBUltimoClick(Sender: TObject);
    Procedure SBExcluirClick(Sender: TObject);
    Procedure LimparTabelaClick(Sender: TObject);
    Procedure EditarTabelaClick(Sender: TObject);
    Procedure GeraQtdClick(Sender: TObject);
    Procedure SalvarEstruturaClick(Sender: TObject);
    Procedure CriaTabelaClick(Sender: TObject);
    Procedure AlimentarTabelaClick(Sender: TObject);
    Procedure GeraTXTClick(Sender: TObject);
    Procedure FecharPesquisa1Click(Sender: TObject);
    Procedure PesquisarClick(Sender: TObject);
    Procedure ExcluirXateXClick(Sender: TObject);
    Procedure Memo2Change(Sender: TObject);
    Procedure FormCreate(Sender: TObject);
    Procedure DBGridPrincipalDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);

    Procedure ComboBox1Change(Sender: TObject);
    Procedure EstruturaDBF1Click(Sender: TObject);
    Procedure BotoesmovimentaClick(Sender: TObject);
    Procedure CampostabelaClick(Sender: TObject);
    Procedure Fechararquivos1Click(Sender: TObject);
    Procedure AbaArquivoClick(Sender: TObject);
    Procedure StruturaSQL1Click(Sender: TObject);
    Procedure ClasstabelaClick(Sender: TObject);
    Procedure Visualiza1Click(Sender: TObject);
    Procedure ConfiguracoeClick(Sender: TObject);
    Procedure DBGridPrincipalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    Procedure DBGridPrincipalKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    Procedure RichEdit1Change(Sender: TObject);
    Procedure Alterarfonte1Click(Sender: TObject);
    Procedure DBFparaMySQLClick(Sender: TObject);
    Procedure MySQLparaDBFClick(Sender: TObject);
    Procedure SpeedButton6Click(Sender: TObject);
    Procedure RichEdit2Change(Sender: TObject);
    Procedure TerminalSQLClick(Sender: TObject);
    Procedure SalvaHTMLClick(Sender: TObject);
    Procedure DBGridPrincipalTitleClick(Column: TColumn);
    Procedure AbrirTabelaClick(Sender: TObject);
    Procedure FecharTabela1Click(Sender: TObject);
    Procedure AbrirEstruturaClick(Sender: TObject);
    Procedure AtualizarTabela1Click(Sender: TObject);
    procedure DBGridPrincipalCellClick(Column: TColumn);
    procedure BtnCancelarClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure ArquivosDeParem();

    Function AtivaBotoes:String;
    Function DesativaBotoes:String;
    Function AbreTabelaDBF():string;
    Function AbreTabelaSQL():string;
    Function AtivaBotaoAux(quantidade:Integer;tipo:string):string;
    Function VerificaBaseeTabela(sNomeBase,sNomeTabela:String):Boolean;
    Function VerificaTabelaSQL(sNomeTabela:String):Boolean;
    Function VerificaBaseSQL(sNomeBase:String):Boolean;

    procedure deletaRegistro();
    procedure btnPesquisaClick(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }

    { *** Variáveis de parametros *** }
    Continua,Cancelar,ErroSql,bConectaSQL:Boolean;

    Etapa1,Etapa2, Etapa3,Etapa4,Etapa5,Etapa6,EtapaV,EtapaB,EtapaN,NomeIndex,
    WNomeIndex,WIndex, LocalSQL,UserSQL,PortSQL,PassSQL,DataBaseSQL :String;

    aNomeCampo : Array [0..999] of String;
    iContaCamposClass:Integer;
  end;

Var
  Form1: TForm1;

  DBGridAux : TDBGrid;

  zConectaSQL:TZConnection;

  Arquivo,Entrada:TextFile;

  OpAbreArquivo:TOpenDialog;

  ZQueryAux,ZQueryPrincipal : TZQuery;

  TamCampos : Array[0..999] of Integer;

  WCampos,TipoCampos: Array[0..999] of string;

  DataSourcePrincipal,DataSourceAux :TDataSource;

  CorLinha1,CorLinha2,CorTexto1,CorTexto2:TColorRef;

  TabelaPrincipal, TabelaClass,TabelaAux,TabelaAux2 : TTable;

  Achou,Cancelar_Pesquisa,Cancelar_Tabela,Erro,ClassicouTabela:Boolean;

  I,Y,X,Cont,WQuant,WPos,EstTam,TamArq,Lidos,WVlrCampos,ContCampos,TotalReg:Integer;

  PerguntaOF,Pergunta,Linha,Campo,Wtam,Arq,WTxt,Recebe1,Recebe2,Campos,
  DirEstru,NomeEstru,WNomeArq,PerguntaClass,PerguntaSepara,PerguntaCli,
  PerguntaObr,PerguntaReg,NomCampo,VlrCampos,CampoIndex,NomeSaida,TipoCampo,
  NomeBaseSQL,NomeTableSQL,Comando_SQL,ConteudoCampo,UltimoArq,CamposDBF,
  CamposSQL,NomeTableDBF,sVersaoPrm,sConectaLocal,sConectaUsuario,sConectaSenha,
  vBookmark: String;

implementation

uses Shellapi, FConf, FCampos, FProcesso,Bibliotecas,Registry, FRel, UrlMon;

{$R *.dfm}

// ** Visualiza tabela DBF, gera arquivo de saida e de quantidade
// ** Desenvolvido por: Alberto Vieira Lima Dta: 24/07/2008.
// ** Atualizado em: 12/01/2009 : Melhorado o filtra e de classificação dos campos
// ** Atualizado em: 03/04/2010 : Melhorado em desempenho de alguma funções

Function TForm1.AtivaBotoes : string;
begin
  DBGridPrincipal.Enabled := True;
  Arquiv1.Enabled         := True;
  Edio1.Enabled           := True;
  Exibir1.Enabled         := True;
  Movimentacao.Enabled    := True;
  Sobre1.Enabled          := True;

  Botoesmovimenta.Checked := True;
  BtnCancelar.Visible     := True;
  GroupBox5.Visible       := True;
  SBPrimeiro.Visible      := True;
  SBAnterior.Visible      := True;
  SBProximo.Visible       := True;
  SBUltimo.Visible        := True;
  SBExcluir.Visible       := True;

  BtnCancelar.Visible     := False;
end;

Function TForm1.DesativaBotoes : string;
begin
  Form1.DBGridPrincipal.Enabled := False;
  Form1.Arquiv1.Enabled         := False;
  Form1.Edio1.Enabled           := False;
  Form1.Exibir1.Enabled         := False;
  Form1.Movimentacao.Enabled    := False;
  Form1.Sobre1.Enabled          := False;

  Form1.Botoesmovimenta.Checked := True;
  Form1.BtnCancelar.Visible     := True;
  Form1.GroupBox5.Visible       := True;
  Form1.SBPrimeiro.Visible      := False;
  Form1.SBAnterior.Visible      := False;
  Form1.SBProximo.Visible       := False;
  Form1.SBUltimo.Visible        := False;
  Form1.SBExcluir.Visible       := False;
end;

{ *** Verifica se o DataBase está instalado na máquina caso contrário executa
  direto da pasta DBE junto com o programa  *** }
procedure Verifica_BDE;
 const
   Key_Root = HKEY_LOCAL_MACHINE;
   BDE_Files : Array[01..10] Of String = ('idapi32.cfg','idapi32.dll','idr20009.dll','blw32.dll','usa.btl',
                                           'europe.btl','idpdx32.dll','idasci32.dll','iddbas32.dll','idodbc32.dll');
   Key_Data  : Array[00..05, 01..03] Of String = (('Software\Borland\Database Engine','BDE_EXTERNAL','0'),
                                                  ('Software\Borland\Database Engine','DLLPATH','0'),
                                                  ('Software\Borland\Database Engine','CONFIGFILE01','1'),
                                                  ('Software\Borland\BLW32','BLAPIPATH','0'),
                                                  ('Software\Borland\BLW32','LOCALE_LIB1','5'),
                                                  ('Software\Borland\BLW32','LOCALE_LIB2','6'));
var
 Status    : Boolean;
 Index     : Integer;
 Ind_Files : Integer;
 BDE_Dir   : String;
 Registro  : TRegIniFile;
begin
  Try
   Registro := TRegIniFile.Create();
   Registro.RootKey := Key_Root;

   If (Not Registro.KeyExists(Key_Data[0,1])) Or (( Registro.KeyExists(Key_Data[0,1])) And (Registro.ReadString(Key_Data[0,1], Key_Data[0,2], 'FALSE') = 'TRUE')) Then
      begin
        For Index := 1 To 3 Do
          Begin
            Case Index Of
              1 : BDE_Dir := ExtractFileDrive(ParamStr(0)) + '\BDE\';
              2 : BDE_Dir := ExtractFileDir(ParamStr(0))   + '\BDE\';
              3 : BDE_Dir := ExtractFilePath(ParamStr(0));
            end;

            Status := DirectoryExists(BDE_Dir);

            If Status Then
               For Ind_Files := Low(BDE_Files) To High(BDE_Files) Do
                  Status := Status And FileExists(BDE_Dir + BDE_Files[Ind_Files]);
            If Status Then
               Break;
          End;

        For Index := Succ(Low(Key_Data)) To High(Key_Data) Do
          Begin
            If Key_Data[Index,3] = '0' Then
              Registro.WriteString(Key_Data[Index,1], Key_Data[Index,2], BDE_Dir)
            Else
              Registro.WriteString(Key_Data[Index,1], Key_Data[Index,2], BDE_Dir + BDE_Files[StrToInt(Key_Data[Index,3])]);
          End;

        Registro.WriteString(Key_Data[0,1], Key_Data[0,2], 'TRUE');
      End;
  Finally
    Registro.Free;
  End;
end;

procedure TForm1.Sair1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.SBPrimeiroClick(Sender: TObject);
begin
  DBGridPrincipal.DataSource.DataSet.First;
  Label8.Caption := '   Registro ' + IntToStr(DBGridPrincipal.DataSource.DataSet.RecNo) + ' de ' + IntToStr(DBGridPrincipal.DataSource.DataSet.RecordCount);
  Label8.Refresh;
end;

procedure TForm1.SBAnteriorClick(Sender: TObject);
begin
  DBGridPrincipal.DataSource.DataSet.Prior;
  Label8.Caption := '   Registro ' + IntToStr(DBGridPrincipal.DataSource.DataSet.RecNo) + ' de ' + IntToStr(DBGridPrincipal.DataSource.DataSet.RecordCount);
  Label8.Refresh;
end;

procedure TForm1.SBProximoClick(Sender: TObject);
begin
  DBGridPrincipal.DataSource.DataSet.Next;
  Label8.Caption := '   Registro ' + IntToStr(DBGridPrincipal.DataSource.DataSet.RecNo) + ' de ' + IntToStr(DBGridPrincipal.DataSource.DataSet.RecordCount);
  Label8.Refresh;
end;

procedure TForm1.SBUltimoClick(Sender: TObject);
begin
  DBGridPrincipal.DataSource.DataSet.Last;
  Label8.Caption := '   Registro ' + IntToStr(DBGridPrincipal.DataSource.DataSet.RecNo) + ' de ' + IntToStr(DBGridPrincipal.DataSource.DataSet.RecordCount);
  Label8.Refresh;
end;

procedure TForm1.SBExcluirClick(Sender: TObject);
begin
  deletaRegistro();
end;

procedure TForm1.LimparTabelaClick(Sender: TObject);
begin
  { *** Limpa todo o conteúdo da tabela  *** }
  if Application.MessageBox(' Deseja realmente excluir TODO o conteúdo da tabela?','Confirmação',MB_ICONWARNING+ MB_YESNO+MB_DEFBUTTON2)=idyes then
     begin
       Form1.StatusBar1.Panels[2].Text := ' Status: Limpando dados da tabela, aguarde...';
       Form1.StatusBar1.Repaint;

       DBGridAux := TDBGrid.Create(Application);

       DBGridAux.DataSource := DataSourcePrincipal;
       DBGridAux.DataSource.DataSet.DisableControls;

       For I := 0 To DBGridAux.DataSource.DataSet.RecordCount-1 do
          begin
            Application.ProcessMessages;
            DBGridAux.DataSource.DataSet.Delete;
          end;

       EstruTabela.Enabled    := True;
       GeraTXT.Enabled        := False;
       LimparTabela.Enabled   := False;
       EditarTabela.Enabled   := False;
       ExcluirReg.Enabled     := False;
       GeraQtd.Enabled        := False;
       Pesquisar.Enabled      := False;
      AlimentarTabela.Enabled := False;
       ExcluirXateX.Enabled   := False;

       DBGridPrincipal.Refresh;
       DBGridPrincipal.DataSource.DataSet.DisableControls;
       FreeAndNil(DBGridAux);

       Label8.Caption := '   Registro ' + IntToStr(DBGridPrincipal.DataSource.DataSet.RecNo) + ' de ' + IntToStr(DBGridPrincipal.DataSource.DataSet.RecordCount);
       Label8.Refresh;

       Form1.StatusBar1.Panels[2].Text := ' Status: Inativo';
       Form1.StatusBar1.Panels[1].Text := ' Total de registro(s): ' + IntToStr(DBGridPrincipal.DataSource.DataSet.RecordCount);
       Form1.StatusBar1.Refresh;
     end;
end;

procedure TForm1.EditarTabelaClick(Sender: TObject);
begin
  { *** Edita conteúdo da tabela *** }
  if EditarTabela.Checked = False then
    begin
      EditarTabela.Checked            := True;
      DBGridPrincipal.ReadOnly        := False;
      Form1.StatusBar1.Panels[2].Text := ' Status: Tabela ativa para edição do conteúdo';
      Form1.StatusBar1.Refresh;
    end
  else
    begin
      EditarTabela.Checked            := False;
      DBGridPrincipal.ReadOnly        := True;
      Form1.StatusBar1.Panels[2].Text := ' Status: Inativa';
      Form1.StatusBar1.Refresh;
    end;
end;

procedure TForm1.GeraQtdClick(Sender: TObject);
begin
  { *** Gerando arquivo de quantidade de registros da tabela *** }
  SaveDialog1.Title  := ' Visualiza Tabela - Gera arquivo de quantidade. ';
  SaveDialog1.Filter := ' Arquivo de texto|*.TXT';
  SaveDialog1.Execute;

  

  if SaveDialog1.FileName <>  '' then
    begin
      PerguntaOF := UpperCase(InputBox('Visualiza Tabela - Gera arquivo de quantidade','Informe a OF.',''));
      PerguntaCli:= UpperCase(InputBox('Visualiza Tabela - Gera arquivo de quantidade','Informe o Cliente.',''));
      PerguntaObr:= UpperCase(InputBox('Visualiza Tabela - Gera arquivo de quantidade','Informe a Obra.',''));

      if ((PerguntaOF <> '') or (PerguntaCli <> '') or (PerguntaObr <> '')) then
         begin
           Form1.StatusBar1.Panels[2].Text := ' Status: Gerando arquivo de quantidade';
           Form1.StatusBar1.Refresh;

           { *** Lê arquivo de parâmetro *** }
           if Etapa5 = 'A5' then
              AssignFile(Entrada,ExtractFilePath(Application.ExeName) + 'modpad.ini');
           if Etapa5 = 'B5' then
              AssignFile(Entrada,ExtractFilePath(Application.ExeName) + 'modalter.ini');
           Reset(Entrada);

           { *** Gera arquivo de QTD *** }
           AssignFile(Saida,Sem_Extensao(SaveDialog1.FileName) + '_RELQTD.TXT');

           Rewrite(Saida);
           While not Eof(Entrada) do
             begin
               Readln(Entrada,Linha);

               { *** Verifica cabeçalho1 *** }
               if ((Copy(Linha,1,1) = '1') or (Copy(Linha,1,1) = '2') or (Copy(Linha,1,1) = '3')) then
                  Writeln(Saida,' ' + Copy(Linha,2,length(Linha)))
               else
                 { *** Verifica corpo do relatório *** }
                 if (Copy(Linha,1,1) = '4') then
                    Writeln(Saida,'   OF: ' + PerguntaOF);

               if (Copy(Linha,1,1) = '5') then
                  Writeln(Saida,'   ' + PerguntaCli + ' - ' + PerguntaObr);

               if (Copy(Linha,1,1) = '7') then
                  Writeln(Saida,'   DATA: ' + FormatDateTime('yy/mm/yyyy',now));

               if (Copy(Linha,1,1) = '8') then
                  Writeln(Saida,' ' + Copy(Linha,2,length(Linha)));

               if (Copy(Linha,1,1) = '9') then
                 Writeln(Saida,'   Total Geral..............: '+ IntToStr(DBGridPrincipal.DataSource.DataSet.RecordCount))

             end;

           CloseFile(Entrada);
           CloseFile(Saida);

           MessageDlg('Arquivo gerado com sucesso!', mtInformation,[mbOk], 0);
           Form1.StatusBar1.Panels[2].Text := ' Status: Inativo';
           Form1.StatusBar1.Refresh;
         end;
    end;
end;

procedure TForm1.SalvarEstruturaClick(Sender: TObject);
begin
  { *** Salva arquivo de estrutura *** }
  SaveDialog1.Title  := ' Visualiza Tabela - Abrir arquivo de estrutura.';
  SaveDialog1.Filter := ' Arquivo de texto|*.TXT';
  SaveDialog1.Execute;

  { *** Validando conteudo do arquivo de estrutura *** }
  For I:=0 to RichEdit1.Lines.Count do
    begin
      NomCampo:= '';
      VlrCampos:= '';
      Achou := False;
      For y := 1 to length(RichEdit1.Lines[i]) do
        begin
          if Copy(RichEdit1.Lines[i],y,1) = ',' then
             Achou := True;

          { *** Verificando nome do campo *** }
          if ((Copy(RichEdit1.Lines[i],y,1) <> ' ') and (Achou = False)) then
             NomCampo := NomCampo + Copy(RichEdit1.Lines[i],y,1)
          else
            if ((Copy(RichEdit1.Lines[i],y,1) <> ',') and (Achou = False)) then
                MessageDlg(' Parâmetros incorretos, favor verificar: '+ #13 +
                           ' Linha: ' + IntToStr(I)  + ' Coluna: ' + IntToStr(y), mtInformation,[mbOk], 0);

          { *** Verificando tamanho do campo *** }
          if Achou = True then
             begin
               if ((Copy(RichEdit1.Lines[i],y,1) <> ' ') and (Achou = True) and (Copy(RichEdit1.Lines[i],y,1) <> ',')) then
                   VlrCampos := VlrCampos + Copy(RichEdit1.Lines[i],y,1)
               else
                 if Copy(RichEdit1.Lines[i],y,1) <> ',' then
                    MessageDlg(' Parâmetros incorretos, favor verificar: '+ #13 +
                               ' Linha: ' + IntToStr(RichEdit1.Lines.Count)  + ' Coluna: ' + IntToStr(y), mtInformation,[mbOk], 0);
             end;
        end;
    end;
  RichEdit1.Lines.SaveToFile(ExtractFileName(SaveDialog1.FileName));
end;

procedure TForm1.CriaTabelaClick(Sender: TObject);
Var
  bContinuaSQL:Boolean;
begin
  AlimentarTabela.Enabled := False;
  { *** Criando tabela através do arquivo de estrutura *** }
  if not Assigned(OpAbreArquivo) then
     OpAbreArquivo := TOpenDialog.Create(Application);

  OpAbreArquivo.FileName := '';
  OpAbreArquivo.Title := ' Visualiza Tabela -  Selecione o arquivo de estrutura.';
  OpAbreArquivo.Filter:= ' Arquivo de texto|*.TXT';
  OpAbreArquivo.Execute;

  If OpAbreArquivo.FileName <> '' then
     begin
       Try
         begin
           AssignFile(Arquivo,OpAbreArquivo.FileName);
           Reset(Arquivo);

           if EtapaB = 'DBF' then
              begin
                if Etapa4 = 'A4' then
                   Pergunta := 'VPADRA.DBF'
                else
                  if Etapa4 = 'B4' then
                     Pergunta := UpperCase(InputBox('Visualiza Tabela - Cria tabela através do arquivo estrutura','Informe o nome da tabela.',''));

                { *** Criando tabela DBF *** }
                if not Assigned(DataSourcePrincipal) then
                   DataSourcePrincipal := TDataSource.Create(Application);

                if not Assigned(TabelaPrincipal) then
                   TabelaPrincipal := TTable.Create(Application);

                DataSourcePrincipal.DataSet := TabelaPrincipal;

                { *** Limpando campos da tabela *** }
                TabelaPrincipal.FieldDefs.Clear;

                { *** Desativando table1 *** }
                if TabelaPrincipal.State <> DsInactive then
                   TabelaPrincipal.Close;

                { *** Preparando componente table *** }
                With TabelaPrincipal do
                  begin
                    DatabaseName := ExtractFileDir(OpAbreArquivo.FileName);
                    TableName := Pergunta + '.DBF';
                    TableType := ttDBase;
                  end;

                { *** Lendo arquivo e add campos a tabela *** }
                While not Eof(Arquivo) do
                  begin
                    Readln(Arquivo,Linha);
                    Achou := False;

                    With TabelaPrincipal.FieldDefs do
                      begin
                        WTam := '';
                        Campo:= '';
                        Cont := 0;

                        For I := 1 to length(Linha) do
                          begin
                            if Copy(Linha,I,1) = ','  then
                               Cont := Cont + 1;

                            if((Cont = 0) and (Copy(Linha,I,1) <> ',')) then
                               Campo := Campo + Copy(Linha,I,1);

                            if((Cont = 1) and (Copy(Linha,I,1) <> ',')) then
                               WTam := WTam + Copy(Linha,I,1);
                          end;
                        add(Campo,ftString,StrToInt(WTam),False);
                      end;
                  end;

                TabelaPrincipal.CreateTable;

                FreeAndNil(TabelaPrincipal);
                FreeAndNil(DataSourcePrincipal);

                MessageDlg(' Tabela criado com sucesso!', mtInformation,[mbOk], 0);
              end
           else
             begin
               bContinuaSQL := True;
               { *** Seleciona base de dados e tabela no MySQL *** }
               NomeBaseSQL  := LowerCase(InputBox(' Visualiza Tabela - Seleciona tabela.','Informe o nome do data base. ',''));

               if VerificaBaseSQL(NomeBaseSQL) = False then
                  MessageDlg(' Base de dados não existe!',mtError,[mbOK], 0)
               else
                 begin
                   NomeTableSQL := LowerCase(InputBox(' Visualiza Tabela - Seleciona tabela.','Informe o nome da tabela. ',''));

                   if VerificaTabelaSQL(NomeTableSQL) = True then
                      begin
                        if Application.MessageBox(' Atenção!' + #13 + 'Tabela já existe na base de dados, deseja substituir la?'+ #13 + #13 + '   *** Todos os dados da tabela anterior será excluidos ','Confirmação',MB_ICONWARNING+ MB_YESNO+MB_DEFBUTTON2)=idyes then
                           begin
                             bContinuaSQL := True;

                             if not Assigned(ZQueryAux) then
                                begin
                                  ZQueryAux := TZQuery.Create(Application);
                                  ZQueryAux.Connection := zConectaSQL;
                                end;

                             Try
                               ZQueryAux.SQL.Clear;
                               ZQueryAux.SQL.Add('USE ' + NomeBaseSQL + ';');
                               ZQueryAux.ExecSQL;

                               { *** verifica se a tabela já existe e a deleta *** }
                               ZQueryAux.SQL.Clear;
                               ZQueryAux.SQL.Add('DROP TABLE IF EXISTS ' + NomeTableSQL +  ';');
                               ZQueryAux.ExecSQL;
                             Except
                               MessageDlg(' Não foi possível deletar a tabela... Operação cancelada! ',mtError,[mbOK], 0);
                             end;
                           end
                        else
                          bContinuaSQL := False;
                      end;

                   { *** Verifica se vai continuar criando a tabela *** }
                   if bContinuaSQL = True then
                      begin
                        if not Assigned(ZQueryAux) then
                           begin
                             ZQueryAux := TZQuery.Create(Application);
                             ZQueryAux.Connection := zConectaSQL;
                           end;

                        ZQueryAux.SQL.Clear;
                        ZQueryAux.SQL.Add('USE ' + NomeBaseSQL + ';');
                        ZQueryAux.ExecSQL;

                        { *** Apurando *** }
                        Comando_SQL := 'CREATE TABLE ' + NomeTableSQL + '(';
                        TipoCampo   := '';

                        { *** Lendo arquivo e add campos a tabela *** }
                        While not Eof(Arquivo) and (Linha <> '') do
                          begin
                            if TipoCampo <> '' then
                               TipoCampo:= TipoCampo + ',';

                            Readln(Arquivo,Linha);
                            Achou := False;

                            ZQueryAux.SQL.Clear;

                            WTam := '';
                            Campo:= '';
                            Cont := 0;

                            For I := 1 to length(Linha) do
                              begin
                                if Copy(Linha,I,1) = ','  then
                                   Cont := Cont + 1;

                                if((Cont = 0) and (Copy(Linha,I,1) <> ',')) then
                                   Campo := Campo + Copy(Linha,I,1);

                                if((Cont = 1) and (Copy(Linha,I,1) <> ',')) then
                                   WTam := WTam + Copy(Linha,I,1);
                              end;

                            { *** Guardando dados parra criação dos campos da tabela *** }
                            TipoCampo:= TipoCampo + Campo + ' CHAR(' + WTam + ')';
                          end;

                        { *** Executando comando e criando tabela *** }
                        ZQueryAux.SQL.Add(Comando_SQL + TipoCampo + ');');
                        ZQueryAux.ExecSQL;

                        MessageDlg(' Tabela criada com sucesso! ',mtInformation,[mbOK], 0);
                      end;
                 end;
             end;
           CloseFile(Arquivo);
           FreeAndNil(ZQueryAux);
           AlimentarTabela.Enabled := False;
         end;
       Except
         MessageDlg('Não foi possível criar a tabela!', mtError,[mbOk], 0);
       end;
     end;
end;

procedure TForm1.AlimentarTabelaClick(Sender: TObject);
var
  sNomeTabla,sNomeArquivo:String;
  sContinuInserindo:Boolean;
begin
  sContinuInserindo := True;

  { *** Criando Tabela/DataSouce Temporaria *** }
  if not Assigned(OpAbreArquivo) then
     OpAbreArquivo := TOpenDialog.Create(Application);

  { *** Abrindo arquivo txt para alimentar a tabela  *** }
  OpAbreArquivo.FileName := '';
  OpAbreArquivo.Filter   := ' Visualiza Tabela - Seleciona arquivo txt.';
  OpAbreArquivo.Title    := ' Selecionar arquivo txt';
  OpAbreArquivo.Execute;


  if OpAbreArquivo.FileName <> '' then
     begin
       sNomeArquivo := '';
       sNomeArquivo := OpAbreArquivo.FileName;

       { *** Alimentando tabela selecionada *** }
       if EtapaB = 'DBF' then
           begin
             if not Assigned(DataSourcePrincipal) then
                DataSourcePrincipal := TDataSource.Create(Application);

             if not Assigned(TabelaPrincipal) then
                TabelaPrincipal := TTable.Create(Application);

             DataSourcePrincipal.DataSet := TabelaPrincipal;

             OpAbreArquivo.FileName := '*.DBF';
             OpAbreArquivo.Title  := ' Visualiza Tabela - Seleciona tabela.';
             OpAbreArquivo.Filter := ' DataBase|*.DBF|DataBase|*.DB';
             OpAbreArquivo.Execute;

             sNomeTabla := '';
             sNomeTabla := OpAbreArquivo.FileName;

             If ((sNomeTabla <> '') and (sNomeTabla <> '*.DBF'))  then
                begin
                  WQuant := 0;
                  try
                    begin
                      { *** determinando quantidade que será inserida na tabela *** }
                      if Application.MessageBox('Deseja limitar alguma quantidade?','Confirmação',MB_ICONQUESTION+ MB_YESNO+MB_DEFBUTTON2)=idyes then
                         WQuant := StrtoInt(InputBox('Estruturas e Tabelas','Informe a quantidade','Informe aqui'));

                      If sNomeArquivo <> '' then
                         begin
                           TabelaPrincipal.DatabaseName := ExtractFileDir(sNomeTabla);
                           TabelaPrincipal.TableName    := Extractfilename(sNomeTabla);
                           TabelaPrincipal.Active       := True;

                           { *** Verificando se consta registro na tabela *** }
                           if TabelaPrincipal.RecordCount > 0 then
                              begin
                                if Application.MessageBox('                                       ********** ATENÇÃO **********' + #13 +
                                                          ' A tabela selecionada já contém registro(s) gravado(s), deseja inserir os dados mesmo assim ?','Confirmação',MB_ICONWARNING+ MB_YESNO+MB_DEFBUTTON2)=idyes then
                                   sContinuInserindo := True
                                else
                                  sContinuInserindo := False;
                              end;

                           if sContinuInserindo = True then
                              begin
                                { *** Lendo arquivo selecionado *** }
                                AssignFile(Arquivo,Extractfilename(sNomeArquivo));
                                Reset(Arquivo);

                                Cont := 0;

                                { *** Alimetando tabela DBF *** }
                                StatusBar1.Panels[2].Text := ' Status: Alimentando tabela, aguarde...';

                                While not (Eof(Arquivo) or (Cont >= WQuant))do
                                  Begin
                                    Try
                                      Readln(Arquivo,Linha);
                                      TabelaPrincipal.Insert;

                                      { *** Pega o 1º Campo *** }
                                      TabelaPrincipal.Fields[0].AsString := Copy(Linha,1,TabelaPrincipal.Fields[0].Size);
                                      WPos := 0;
                                      WPos := TabelaPrincipal.Fields[0].Size;

                                      { *** Pega o 2º Campo em diante *** }
                                      For I := 1 To TabelaPrincipal.FieldCount-1 do
                                        Begin
                                          TabelaPrincipal.Fields[I].AsString := Copy(Linha,WPos + 1,TabelaPrincipal.Fields[I].Size);
                                          WPos := WPos + TabelaPrincipal.Fields[I].Size;
                                        end;

                                      If (WQuant > 0) And (TabelaPrincipal.Recordcount = WQuant) then
                                         Break;

                                      TabelaPrincipal.Post;
                                      Cont := Cont + 1;
                                    except
                                      MessageDlg('Ocoreu um erro ao inserir os dados, favor verificar se conta algum caracter inválido na linha:'+ #13+#13+
                                       Linha, mtError,[mbOk], 0);
                                    end;
                                  End;

                                CloseFile(Arquivo);
                                FreeAndNil(TabelaPrincipal);
                                MessageDlg(' Fim do processo!', mtInformation,[mbOk], 0);
                                StatusBar1.Panels[2].Text := ' Status: Inativo';
                              end;
                         end;
                    end;
                  Except
                    MessageDlg(' Não foi possível Alimentar a tabela!', mtError,[mbOk], 0);
                  end;
                end;
           end
       else
          begin
           { *** Seleciona base de dados e tabela no MySQL *** }
            NomeBaseSQL  := LowerCase(InputBox(' Visualiza Tabela - Seleciona tabela.','Informe o nome do data base. ',''));
            NomeTableSQL := LowerCase(InputBox(' Visualiza Tabela - Seleciona tabela.','Informe o nome da tabela. ',''));

            if VerificaBaseeTabela(NomeBaseSQL,NomeTableSQL) = True then
               begin
                 if not Assigned(ZQueryAux) then
                    begin
                      ZQueryAux := TZQuery.Create(Application);
                      ZQueryAux.Connection := zConectaSQL;
                    end;

                 ZQueryAux.SQL.Clear;
                 ZQueryAux.SQL.Add('USE '+ NomeBaseSQL+';');
                 ZQueryAux.ExecSQL;

                 ZQueryAux.SQL.Clear;
                 ZQueryAux.SQL.Add('SELECT * FROM '+ NomeTableSQL + ';');
                 ZQueryAux.Open;

                 { *** Lendo arquivo selecionado *** }
                 AssignFile(Arquivo,Extractfilename(sNomeArquivo));
                 Reset(Arquivo);

                 { *** Apurando campos da tabela *** }
                 TipoCampo := '';
                 For I := 0 to ZQueryAux.FieldCount-1 do
                   begin
                     if I+1 = ZQueryAux.FieldCount then
                        TipoCampo := TipoCampo + ZQueryAux.FieldDefs[I].Name
                     else
                       TipoCampo := TipoCampo + ZQueryAux.FieldDefs[I].Name + ',';

                     TamCampos[I] := ZQueryAux.Fields[I].Size;
                     WCampos[I]   := ZQueryAux.FieldDefs[I].Name;
                   end;

                 WQuant := 0;
                 { *** determinando quantidade que será inserida na tabela *** }
                 if Application.MessageBox('Deseja limitar alguma quantidade?','Confirmação',MB_ICONQUESTION+ MB_YESNO+MB_DEFBUTTON2)=idyes then
                    WQuant := StrtoInt(InputBox('Estruturas e Tabelas','Informe a quantidade','Informe aqui'));

                 ContCampos := ZQueryAux.FieldCount;
                 TipoCampo := '(' + TipoCampo + ')';

                 { *** Verificando se consta registro na tabela *** }
                 if ZQueryAux.RecordCount > 0 then
                    begin
                      if Application.MessageBox('                                       ********** ATENÇÃO **********' + #13 +
                                                ' A tabela selecionada já contém registro(s) gravado(s), deseja inserir os dados mesmo assim ?','Confirmação',MB_ICONWARNING+ MB_YESNO+MB_DEFBUTTON2)=idyes then
                         sContinuInserindo := True
                      else
                        sContinuInserindo := False;
                    end;

                 if sContinuInserindo = True then
                    begin
                      While not Eof(Arquivo) do
                        begin
                          Try
                            Readln(Arquivo,Linha);
                            ConteudoCampo := '';
                            WPos          := 0;

                            For I := 0 to ContCampos-1 do
                              begin
                                if I+1 = ContCampos then
                                   ConteudoCampo :=  ConteudoCampo + '''' + Copy(Linha,wpos+1,TamCampos[I]) + ''''
                                else
                                   ConteudoCampo :=  ConteudoCampo + '''' + Copy(Linha,wpos+1,TamCampos[I]) + ''',';
                                WPos := WPos + TamCampos[I];
                              end;

                            Comando_SQL := 'INSERT INTO '+ NomeTableSQL + ' ' + TipoCampo +' VALUES ('+ ConteudoCampo+');';

                            ZQueryAux.SQL.Clear;
                            ZQueryAux.SQL.Add(Comando_SQL);
                            ZQueryAux.ExecSQL;

                            if WQuant > 0 then
                              if Cont >= WQuant then
                                  Break;

                            Cont := Cont + 1;
                          except
                            MessageDlg(' Viixi! Ocoreu um erro ao inserir os dados, favor verificar se conta algum caracter inválido na linha:'+ #13+#13+
                                        Linha, mtError,[mbOk], 0);
                          end;
                        end;

                      FreeAndNil(ZQueryAux);
                      CloseFile(Arquivo);
                      MessageDlg(' Fim do processo', mtInformation,[mbOk], 0);
                    end;
               end;
          end;
     end;

  FreeAndNil(OpAbreArquivo);

end;

procedure TForm1.GeraTXTClick(Sender: TObject);
var
  QtdTabela,iLidos,iApura: Integer;
  asNomeCampoGrid,aiTamanhoGrid: array[0..999] of String;
  Saida:TextFile;
  label vorta;
begin
  Continua := True;
  { *** Gera conteudo da tabela em txt *** }

  Pergunta := '';
  if Etapa3 = 'A3' then
     NomeSaida := 'VPADRA'
  else
    begin
      SaveDialog1.Title  := ' Visualiza Tabela - Salvar arquivo de txt.';
      SaveDialog1.Filter := ' Arquivo de texto|*.TXT';
      SaveDialog1.FileName := '';
      SaveDialog1.Execute;
    end;

  if ((SaveDialog1.FileName <> '') or (NomeSaida <> '')) then
     begin
       Continua := True;

       DesativaBotoes();

       if Etapa3 <> 'A3' then
          NomeSaida := ExtractFileName(SaveDialog1.FileName);

       PerguntaSepara := '';
       if EtapaV = 'V' then
          begin
            { *** Ativa separação por campos ***}
            if Application.MessageBox(' Atenção! ' + #13 + ' Deseja definir algum parâmetro de separação em cada campo do arquivo ao ser gerado? ','Confirmação',MB_ICONQUESTION+ MB_YESNO+MB_DEFBUTTON2)=idyes then
               begin
                 vorta:
                 PerguntaSepara := '';
                 PerguntaSepara := UpperCase(InputBox(' Visualiza Tabela',#13 + 'Informe o parâmetro de separação ',';'));
                 if PerguntaSepara = '' then
                    begin
                      if Application.MessageBox(' ATENÇÃO !' + #13 + #13 +
                                                ' O parâmetro informado está em BRANCO!' + #13 +
                                                ' Se deseja informa outro parâmetro para separação dos campos clique em YES ou se não, clique em NO para processeguir nessa forma mesmo!','Confirmação',MB_ICONWARNING + MB_YESNO+MB_DEFBUTTON2)=idyes then
                         goto vorta;
                    end;
               end
            else
              PerguntaSepara := ''
          end;

       { *** Classifica aceito pelo usuario *** }
       PerguntaClass := 'N';
       if Application.MessageBox('Deseja classifica o arquivo por campo?','Confirmação',MB_ICONQUESTION+ MB_YESNO+MB_DEFBUTTON2)=idyes then
          begin
            PerguntaClass := 'S';

            if EtapaB = 'DBF' then
               begin
                 { *** Clonando tabela para classificar os dados pelo campo informado *** }
                 { *** Apurando os nomes dos campos e tamanho *** }
                 For I := 0 to TabelaPrincipal.FieldCount-1 do
                   begin
                     WCampos[I]   := TabelaPrincipal.Fields[I].DisplayName;
                     TamCampos[I] := TabelaPrincipal.Fields[I].Size;
                   end;

                 Continua := False;

                 { *** Informa o campo para classificação INDEX *** }
                 FormCampos := TFormCampos.create(application);
                 Try
                   For I := 0 to TabelaPrincipal.FieldDefs.Count - 1 do
                     FormCampos.ComboBox1.Items.Add(TabelaPrincipal.FieldDefs.Items[i].Name);
                     FormCampos.ShowModal;
                 Finally
                   FormCampos.Release;
                   FormCampos := nil;
                 end;

                 { *** Verifica se a operação foi cancelar *** }
                 if Continua = False then
//                  Table2.Close
                 else
                   begin
                     Form1.StatusBar1.Panels[2].Text := ' Status: Gerando arquivo txt, aguarde...';
                     Form1.StatusBar1.Refresh;

                     if WNomeIndex <> '' then
                        begin
                          { *** Criando tabela através das informações contidas no Array
                                alimentado ao abrir a tabela *** }
                          TabelaAux  := TTable.Create(Application);
                          TabelaAux2 := TTable.Create(Application);

                          TabelaAux2.DatabaseName := TabelaPrincipal.DatabaseName;
                          TabelaAux2.TableName    := TabelaPrincipal.TableName;
                          TabelaAux2.Open;
                          TabelaAux2.Active := True;

                          if TabelaAux.State <> DsInactive then
                             TabelaAux.Close;

                          With TabelaAux do
                            begin
                              DatabaseName := ExtractFileDir(OpAbreArquivo.FileName);
                              TableName := 'DBFAUX.DBF';
                              TableType := ttDBase;
                            end;

                          I     := 0;
                          Lidos := 0;

                          With TabelaAux.FieldDefs do
                            begin
                              while WCampos[I] <> '' do
                                begin
                                  ADD(WCampos[I],ftString,TamCampos[I],False);
                                  I := I + 1;
                                end;
                            end;

                          With TabelaAux.IndexDefs do
                            begin
                              Add('W' + WNomeIndex,WNomeIndex,[]);
                            end;

                          TabelaAux.CreateTable;
                          TabelaAux.Close;

                          { *** Grava dados da tabela antiga *** }
                          TabelaAux.Open;
                          TabelaAux.IndexName := 'W' + WNomeIndex;
                          TabelaAux.Active    := True;
                          Form1.StatusBar1.Panels[2].Text := ' Status: Copiando dados para a tabela auxiliar, aguarde...';

                          { *** Copiando dados da tabela antiga  *** }
                          While not TabelaAux2.Eof do
                            begin
                              Application.ProcessMessages;
                              if Cancelar Then
                                 Begin
                                   Cancelar := False;
                                   if Application.MessageBox('Deseja cancelar o processo de exportação?','Confirmar',MB_ICONWARNING+ MB_YESNO+MB_DEFBUTTON2)=idyes then
                                      begin
                                        FreeAndNil(TabelaAux);
                                        FreeAndNil(TabelaAux2);
                                        DeleteFile(ExtractFileDir(OpAbreArquivo.FileName) + '\DBFAUX.DBF');
                                        DeleteFile(ExtractFileDir(OpAbreArquivo.FileName) + '\DBFAUX.MDX');

                                        AtivaBotoes();

                                        Form1.StatusBar1.Panels[2].Text := ' Status: Inativo';
                                        Form1.StatusBar1.Refresh;
                                        Abort;
                                      end;
                                 end;

                               TabelaAux.Insert;
                               For I := 0 to TabelaAux2.FieldCount-1 do
                                 TabelaAux.FieldByName(TabelaAux.FieldDefs.Items[I].Name).AsString := TabelaAux2.FieldByName(TabelaAux2.FieldDefs.Items[I].Name).AsString;
                               TabelaAux2.Next;
                               Lidos := Lidos + 1;
                               TabelaAux.Post;

                               Form1.StatusBar1.Panels[1].Text := ' Registro(s): ' + IntToStr(Lidos) ;
                            end;

                          TabelaAux.Close;

                          { *** Grava dados da tabela antiga *** }
                          TabelaAux.Open;
                          TabelaAux.IndexName := 'W' + WNomeIndex;
                          TabelaAux.Active    := True;
                        end;
                   end;
               end
            else
              begin
                Continua := False;

                { *** Informa o campo para classificação INDEX *** }
                FormCampos := TFormCampos.create(application);
                Try
                  For I := 0 to ZQueryPrincipal.FieldDefs.Count - 1 do
                     FormCampos.ComboBox1.Items.Add(ZQueryPrincipal.FieldDefs.Items[i].Name);

                  FormCampos.ShowModal;
                Finally
                  FormCampos.Release;
                  FormCampos := nil;
                end;

                Form1.StatusBar1.Panels[2].Text := ' Status: Inativo';
                Form1.StatusBar1.Refresh;

                { *** Verifica se o processo foi cancelado *** }
                ZQueryAux := TZQuery.Create(Application);
                ZQueryAux.connection := zConectaSQL;

                if Continua = False then
                   FreeAndNil(ZQueryAux)
                else
                  begin
                    Form1.WNomeIndex := '';

                    For I := 0 to Form1.iContaCamposClass - 1 do
                       Form1.WNomeIndex := Form1.WNomeIndex + Form1.aNomeCampo[I] + ', ' ;

                    Form1.WNomeIndex := Copy(Form1.WNomeIndex,1,length(Form1.WNomeIndex) - 2);

                    Application.ProcessMessages;
                    Form1.StatusBar1.Panels[2].Text := ' Status: Classificando tabela, aguarde...';

                    ZQueryAux.SQL.Clear;
                    ZQueryAux.SQL.Add('SELECT * FROM '+ NomeTableSQL  + ' ORDER BY ' + Form1.WNomeIndex + ';');
                    ZQueryAux.Open;
                  end;
              end;
          end;

        { *** Gerando arquivo de saída com o conteúdo do DBGRID *** }
        if PerguntaClass = 'S' then
           AssignFile(Arquivo,Bibliotecas.Sem_Extensao(NomeSaida) + '_CLASS.TXT')
        else
          AssignFile(Arquivo,Bibliotecas.Sem_Extensao(NomeSaida) + '.TXT');
        Rewrite(Arquivo);

       DBGridAux := TDBGrid.Create(Application);
       DataSourceAux := TDataSource.Create(Application);
       DBGridAux.DataSource := DataSourceAux;

       if TabelaAux <> Nil then
          DataSourceAux.DataSet := TabelaAux
       else
         if ZQueryAux <> Nil  then
            DataSourceAux.DataSet := ZQueryAux
         else
           DataSourceAux.DataSet := DataSourcePrincipal.DataSet;

       Cont := 0;

       DBGridAux.DataSource.DataSet.DisableControls;

       StatusBar1.Panels[2].Text := ' Status: Gerando arquivo de saida, aguarde...';

       while not DBGridAux.DataSource.DataSet.Eof do
         begin
           Application.ProcessMessages;
           if Cancelar Then
              Begin
                Cancelar := False;
                if Application.MessageBox('Deseja cancelar o processo de exportação?','Confirmação',MB_ICONWARNING+ MB_YESNO+MB_DEFBUTTON2)=idyes then
                   begin
                     FreeAndNil(DBGridAux);
                     AtivaBotoes();
                     CloseFile(Arquivo);

                     StatusBar1.Panels[2].Text := ' Status: Inativo';
                     Abort;
                   end;
              end;

            Linha := '';
            Cont := Cont + 1;
            StatusBar1.Panels[1].Text := ' Registro(s): ' + IntToStr(Cont);

            if PerguntaSepara <> '' then
               begin
                 For I := 0 To DBGridAux.Columns.Count-1 do
                    Linha := Linha + DBGridAux.Columns[I].Field.DisplayText + PerguntaSepara;
               end
            else
              For I := 0 To DBGridAux.Columns.Count-1 do
                 Linha := Linha + Bibliotecas.AjustaStr(DBGridAux.Columns[I].Field.DisplayText,DBGridAux.Columns[I].Field.Size);

            Writeln(Arquivo,Linha);
            DBGridAux.DataSource.DataSet.Next;
         end;

         DBGridAux.DataSource.DataSet.First;
         DataSourceAux := DBGridAux.DataSource;
         DBGridAux.DataSource.DataSet.EnableControls;
         AtivaBotoes();

         if DBGridAux <> nil then
            FreeAndNil(DBGridAux);

         if TabelaAux <> nil then
            begin
              DeleteFile(ExtractFileDir(OpAbreArquivo.FileName) + '\DBFAUX.DBF');
              DeleteFile(ExtractFileDir(OpAbreArquivo.FileName) + '\DBFAUX.MDX');
              FreeAndNil(TabelaAux);
            end;

         if TabelaAux2 <> nil then
            FreeAndNil(TabelaAux2);

         TotalReg := DBGridPrincipal.DataSource.DataSet.RecordCount;

         MessageDlg(' Fim do processo !',mtInformation,[mbOK], 0);
         CloseFile(Arquivo);
     end;
end;

procedure TForm1.FecharPesquisa1Click(Sender: TObject);
begin
  { ******************************** }
  { *** Fechar campo de pesquisa *** }
  { ******************************** }
  if EtapaB = 'SQL' then
     begin
       ZQueryPrincipal.Close;
       DataSource1.DataSet := ZTable1;
       ZTable1.Active;
     end;

  GroupBox9.Visible := False;
  Pesquisar.Checked := False;
  Edit1.Clear;
  TabelaPrincipal.Filtered := False;
  btnPesquisa.Enabled := False;
  ZTable1.Filtered := False;
end;

procedure TForm1.PesquisarClick(Sender: TObject);
begin
  { ***************************************** }
  { *** Mostra campos da tabela no combox *** }
  { ***************************************** }
  ComboBox1.Clear;
  For I := 0 to DBGridPrincipal.DataSource.DataSet.FieldCount-1  do
     ComboBox1.Items.Add(DBGridPrincipal.Columns[i].Title.Caption);

  if Pesquisar.Checked = false then
    begin
      Pesquisar.Checked := True;
      GroupBox9.Visible := True;
    end
  else
    begin
      Pesquisar.Checked := False;
      GroupBox9.Visible := False;
      GroupBox9.Visible := False;
      Pesquisar.Checked := False;
      Edit1.Clear;
      TabelaPrincipal.Filtered := False;
      ZTable1.Filtered := False;
    end
end;

procedure TForm1.ExcluirXateXClick(Sender: TObject);
Var
  ExcluirInicio,ExcluirFim,iPuloReg,iDeletaReg :Integer;
begin
  { *** Excluindo registro de X até X *** }
  Try
    ExcluirInicio := StrToInt(InputBox('Visualiza Tabela','Excluir do registro: ','1'));
    ExcluirFim    := StrToInt(UpperCase(InputBox('Visualiza Tabela','Quantidade de registros para excluir: ','100')));

    if Application.MessageBox(' Deseja realmente excluir registro(s) da tabela?','Confirmação',MB_ICONWARNING+ MB_YESNO+MB_DEFBUTTON2)=idyes then
       begin
         { *** Desebilitando outras funções *** }
         DBGridPrincipal.Enabled      := False;

         if not Assigned(DataSourceAux) then
            begin
              DataSourceAux := TDataSource.Create(Application);
              DataSourceAux.DataSet := DataSourcePrincipal.DataSet;
            end;

         if not Assigned(DBGridAux) then
            begin
              DBGridAux := TDBGrid.Create(Application);
              DBGridAux.DataSource := DataSourceAux;
            end;

         DBGridPrincipal.DataSource.DataSet.DisableControls;

         DBGridAux.DataSource.DataSet.First;

         For iPuloReg := 1 to ExcluirInicio do
           DBGridAux.DataSource.DataSet.Next;

         For iDeletaReg := 1 to ExcluirFim-1 do
            DBGridAux.DataSource.DataSet.Delete;

         DBGridPrincipal.Enabled      := True;
         DBGridPrincipal.Refresh;

         FreeAndNil(DBGridAux);
         FreeAndNil(DataSourceAux);         

         Label8.Caption := '   Registro ' + IntToStr(DBGridPrincipal.DataSource.DataSet.RecNo) + ' de ' + IntToStr(DBGridPrincipal.DataSource.DataSet.RecordCount);
         Label8.Refresh;
       end;
  Except
    MessageDlg('Informe apenas numeros!', mtError,[mbOk], 0);
  end;
end;

procedure TForm1.Memo2Change(Sender: TObject);
begin
  If RichEdit1.Text <> '' then
     SalvarEstrutura.Enabled := True
  else
    SalvarEstrutura.Enabled := False;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
 item:TMenuItem;
begin
  { *** Verificando BDE *** }
  Verifica_BDE();

  sVersaoPrm := 'Beta v3.5';

  ArquivosDeParem();
end;

procedure TForm1.DBGridPrincipalDrawColumnCell(Sender: TObject; const Rect: TRect;
                DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  { ***  Mudando efeito de cor das linhas celulas da tabela para, cor sim e cor não *** }
  if odd(DBGridPrincipal.DataSource.DataSet.RecNo) then
    begin
      DBGridPrincipal.Canvas.Font.Color := clWhite;
      DBGridPrincipal.Canvas.Brush.Color:= clMoneyGreen;
    end
  else
    begin
      DBGridPrincipal.Canvas.Font.Color := clBlack;
      DBGridPrincipal.Canvas.Brush.Color:= clWhite;
    end;

  DBGridPrincipal.Canvas.FillRect(Rect);
  DBGridPrincipal.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  if ComboBox1.ItemIndex >= 0 then
     Edit1.Enabled := True;
end;

procedure TForm1.GetSubItemMenu(aItemMenu: TMenuItem);
var
  inCountMenu: Integer;
begin
  for inCountMenu := 0 to aItemMenu.Count - 1 do
    begin
      GetSubItemMenu(aItemMenu.Items[inCountMenu]);
    end;
end;

procedure TForm1.EstruturaDBF1Click(Sender: TObject);
begin
  Try
    { *** Exportando dados da Tabela SQL para DBF*** }
    SaveDialog1.Title  := ' Visualiza Tabela - Salvar arquivo de Estrutura DBF.';
    SaveDialog1.Filter := ' Arquivo de texto|*.TXT';
    SaveDialog1.Execute;

    { *** Gera arquivo da estrutura da tabela em txt*** }
    AssignFile(Saida,Sem_Extensao(SaveDialog1.FileName)+ '_ESTRUTURA_DBF.TXT');
    Rewrite(Saida);

    { *** Pega nome e tamanho campo *** }
    For I := 0 to DBGridPrincipal.Columns.Count-1 do
      Writeln(Saida,DBGridPrincipal.Columns[I].Title.Caption + ',' + IntToStr(DBGridPrincipal.Columns[I].Field.Size));

    CloseFile(Saida);
    MessageDlg('Arquivo de estrutura da tabela gerado com sucesso!   '     + #13 + #13 + '      ' +
               Sem_Extensao(SaveDialog1.FileName)+ '_ESTRUTURA_DBF.TXT', mtInformation,[mbOk], 0)
  Except
    MessageDlg('Erro na criação da estrutura da tabela DBF', mtError,[mbOk], 0)
  end;
end;

procedure TForm1.BotoesmovimentaClick(Sender: TObject);
begin
  { ***************************************** }
  { *** Mostra botões de movimentação     *** }
  { ***************************************** }
  if Botoesmovimenta.Checked = false then
     begin
       Botoesmovimenta.Checked := True;
       GroupBox5.Visible := True;
     end
  else
    begin
      Botoesmovimenta.Checked := False;
      GroupBox5.Visible := False;
      Botoesmovimenta.Checked := False;
    end
end;

procedure TForm1.CampostabelaClick(Sender: TObject);
begin
  { ***************************************** }
  { *** Mostra campos da tabela no combox *** }
  { ***************************************** }
  if Campostabela.Checked = false then
     begin
       Campostabela.Checked := True;
       TabSheet3.TabVisible := True;
     end
  else
    begin
      Campostabela.Checked := False;
      TabSheet3.TabVisible := False;
      Campostabela.Checked := False;
    end
end;

procedure TForm1.Fechararquivos1Click(Sender: TObject);
begin
  RichEdit1.Clear;
  If RichEdit1.Text <> '' then
     SalvarEstrutura.Enabled := True
  else
    SalvarEstrutura.Enabled := False;
  Label6.Caption := '  Total de Linhas: ' + IntToStr(RichEdit1.Lines.Count);
  Label6.Refresh;
end;

procedure TForm1.AbaArquivoClick(Sender: TObject);
begin
  { ***************************************** }
  { *** Mostra aba de ARQUIVO no programa *** }
  { ***************************************** }
  if AbaArquivo.Checked = False then
     begin
       AbaArquivo.Checked    := True;
       TabSheet2.TabVisible  := True;
       PageControl1.TabIndex := 2;
     end
  else
    begin
      TabSheet2.TabVisible := False;
      AbaArquivo.Checked   := False;
      RichEdit1.Clear;
    end
end;

procedure TForm1.StruturaSQL1Click(Sender: TObject);
Var
 TabebaCriar:String;
 iContaRegTabela,iContaColuna,iCampoGrid,ContExporta:Integer;
begin
  { *** Gera arquivo da estrutura SQL da tabela em txt*** }
  SaveDialog1.Title  := ' Visualiza Tabela - Salvar arquivo de Estrutura SQL.';
  SaveDialog1.Filter := ' Arquivo de texto|*.TXT';
  SaveDialog1.Execute;

  if SaveDialog1.FileName <> '' then
     begin
       NomeBaseSQL := LowerCase(InputBox(' Visualiza Tabela - Seleciona tabela.','Informe o nome do data base. ',''));
       DBGridAux             := TDBGrid.Create(Application);
       DataSourceAux         := TDataSource.Create(Application);
       DataSourceAux.DataSet := DataSourcePrincipal.DataSet;
       DBGridAux.DataSource  := DataSourceAux;

       DBGridAux.DataSource.DataSet.DisableControls;

       { *** Gerando arquivo *** }
       AssignFile(Saida,ExtractFileDir(SaveDialog1.FileName) + '\' + Bibliotecas.Sem_Extensao(ExtractFileName(SaveDialog1.FileName)) + '_ESTRUTURA_SQL.TXT');
       Rewrite(Saida);

       Writeln(Saida,'CREATE TABLE '+ NomeBaseSQL + '(');

       { *** Pega nome e tamanho campo *** }
       For iCampoGrid := 0 to DBGridAux.FieldCount-1 do
         begin
           TipoCampo := '';
           if DBGridAux.DataSource.DataSet.FieldDefs[iCampoGrid].FieldClass.ClassName = 'TAutoIncField' then
              TipoCampo := DBGridAux.FieldS[iCampoGrid].DisplayName + ' INT NOT NULL PRIMARY KEY AUTO_INCREMENT';

           if DBGridAux.DataSource.DataSet.FieldDefs[iCampoGrid].FieldClass.ClassName = 'TIntegerField' then
              TipoCampo := DBGridAux.FieldS[iCampoGrid].DisplayName + ' INT NOT NULL';

           if DBGridAux.DataSource.DataSet.FieldDefs[iCampoGrid].FieldClass.ClassName = 'TStringField' then
              TipoCampo := DBGridAux.FieldS[iCampoGrid].DisplayName + ' CHAR(' + IntToStr(DBGridAux.Fields[iCampoGrid].Size)+')';

           if DBGridAux.DataSource.DataSet.FieldDefs[iCampoGrid].FieldClass.ClassName = 'TFloatField' then
              TipoCampo := DBGridAux.FieldS[iCampoGrid].DisplayName + ' FLOAT NOT NULL ';

           if DBGridAux.DataSource.DataSet.FieldDefs[iCampoGrid].FieldClass.ClassName = 'TDateField' then
              TipoCampo := DBGridAux.FieldS[iCampoGrid].DisplayName + ' DATE';

           if DBGridAux.DataSource.DataSet.FieldDefs[iCampoGrid].FieldClass.ClassName = 'TTimeField' then
              TipoCampo := DBGridAux.FieldS[iCampoGrid].DisplayName + ' TIME';

           if iCampoGrid < DBGridAux.FieldCount-1 then
              TipoCampo := TipoCampo + ',';

           Writeln(Saida,'    ' + TipoCampo);
         end;

       Writeln(Saida,');');

       if Application.MessageBox('Deseja importar todo o caonteúdo da tabela para o script?','Confirmação',MB_ICONWARNING+ MB_YESNO+MB_DEFBUTTON2)=idyes then
          begin
            Try
              ContExporta := 0;

              vBookmark := '';
              vBookmark := DBGridPrincipal.DataSource.DataSet.Bookmark;

              Writeln(Saida,'');
              StatusBar1.Panels[2].Text := ' Status: Gerando dados da tabela, aguarde...';
              While not DBGridAux.DataSource.DataSet.Eof do
                 begin
                   Application.ProcessMessages;
                   Inc(ContExporta);

                   StatusBar1.Panels[1].Text := ' Registro(s): ' + IntToStr(ContExporta);
                   StatusBar1.Refresh;

                   { *** Pega o conteúdo do grid *** }
                   TipoCampo := 'INSERT INTO ' + NomeBaseSQL + ' VALUES("';
                   For iCampoGrid := 0 to DBGridAux.FieldCount-1 do
                     TipoCampo := TipoCampo + DBGridAux.FieldS[iCampoGrid].DisplayText + '","';

                   Writeln(Saida,'' + Copy(TipoCampo,1,length(TipoCampo)-2) + ');');

                   DBGridAux.DataSource.DataSet.Next;
                 end;
            Except
              MessageDlg('Não foi possível gerar o conteúdo da tabela em script!',mtError,[mbOK], 0);
            end;
          end;

       FreeAndNil(DBGridAux);
       FreeAndNil(DataSourceAux);

       DBGridPrincipal.DataSource.DataSet.Bookmark := vBookmark;

       CloseFile(Saida);
       MessageDlg('Fim do processo!',mtInformation,[mbOK], 0);
       StatusBar1.Panels[2].Text := ' Status: Inativo';
     end;
end;

procedure TForm1.ClasstabelaClick(Sender: TObject);
begin
  if EtapaB = 'SQL' then
     begin
       { *** Classificando tabela SQL *** }
       FormCampos := TFormCampos.create(application);
       try
         For I := 0 to ZQueryPrincipal.FieldDefs.Count - 1 do
            FormCampos.ComboBox1.Items.Add(ZQueryPrincipal.FieldDefs.Items[i].Name);
         FormCampos.ShowModal;

         ZQueryPrincipal.SQL.Clear;
         ZQueryPrincipal.SQL.Add('USE ' + NomeBaseSQL + ';');
         ZQueryPrincipal.ExecSQL;

         ZQueryPrincipal.SQL.Clear;
         ZQueryPrincipal.SQL.Add('SELECT * FROM ' + NomeTableSQL + ' ORDER BY ' + Form1.WNomeIndex  + ';');
         ZQueryPrincipal.Open;

       finally
         FormCampos.Release;
         FormCampos := nil;
       end;
     end
  else
    begin
      { *** Classificando tabela DBF *** }
      { *** Clonando tabela para classificar os dados pelo campo informado *** }
      ClassicouTabela := True;

      { *** Apurando os nomes dos campos e tamanho *** }
      For I := 0 to TabelaPrincipal.FieldCount-1 do
        begin
          WCampos[I]   := TabelaPrincipal.Fields[I].DisplayName;
          TamCampos[I] := TabelaPrincipal.Fields[I].Size;
        end;

      Continua := False;

      { *** Informa o campo para classificação INDEX *** }
      FormCampos := TFormCampos.create(application);
      try
        For I := 0 to TabelaPrincipal.FieldDefs.Count - 1 do
          FormCampos.ComboBox1.Items.Add(TabelaPrincipal.FieldDefs.Items[i].Name);
        FormCampos.ShowModal;
      finally
        FormCampos.Release;
        FormCampos := nil;
      end;

      { *** Desabilitando botões *** }
      DBGridPrincipal.Enabled := False;
      Arquiv1.Enabled         := False;
      Edio1.Enabled           := False;
      Exibir1.Enabled         := False;
      Movimentacao.Enabled    := False;
      Sobre1.Enabled          := False;

      Botoesmovimenta.Checked := True;
      BtnCancelar.Visible     := True;
      GroupBox5.Visible       := True;

      SBPrimeiro.Visible      := False;
      SBAnterior.Visible      := False;
      SBProximo.Visible       := False;
      SBUltimo.Visible        := False;
      SBExcluir.Visible       := False;

      { *** Verifica se o processo foi cancelado *** }
      if Continua = False then
         TabelaClass.Close
      else
        begin
          Form1.StatusBar1.Panels[2].Text := ' Status: Criando tabela auxiliar, aguarde...';
          Form1.StatusBar1.Refresh;
          try
            { *** Tabela que será classificada *** }
            if not Assigned(TabelaClass) then
               TabelaClass := TTable.Create(Application);
            TabelaClass.DatabaseName := TabelaPrincipal.DatabaseName;
            TabelaClass.TableName    := TabelaPrincipal.TableName;

            { *** Tabela que receberá os dados da tabela original *** }
            if not Assigned(TabelaAux) then
               TabelaAux := TTable.Create(Application);
            TabelaAux.DatabaseName := TabelaPrincipal.DatabaseName;
            TabelaAux.TableName    := TabelaPrincipal.TableName;

            TabelaAux.Open;

            if WNomeIndex <> '' then
               begin
                 { *** Criando tabela através das informações contidas no Array alimentado ao abrir a tabela *** }
                 if TabelaClass.State <> DsInactive then
                    TabelaClass.Close;

                 With TabelaClass do
                   begin
                     DatabaseName := TabelaPrincipal.DatabaseName;
                     TableName := 'DBFAUX.DBF';
                     TableType := ttDBase;
                   end;

                 I     := 0;
                 Lidos := 0;

                 With TabelaClass.FieldDefs do
                   begin
                     while WCampos[I] <> '' do
                       begin
                         Add(WCampos[I],ftString,TamCampos[I],False);
                         I := I + 1;
                       end;
                   end;

                 With TabelaClass.IndexDefs do
                   begin
                     Add('CHAVE',WNomeIndex,[]);
                   end;

                 TabelaClass.CreateTable;
                 TabelaClass.Close;

                 { *** Grava dados da tabela antiga *** }
                 TabelaClass.Open;
                 TabelaClass.IndexName := 'CHAVE';
                 TabelaClass.Active    := True;

                 Form1.StatusBar1.Panels[2].Text := ' Status: Classificando registros,aguarde... ';
                 Cont := 0;

                 { *** Copiando dados da tabela antiga *** }
                 While not TabelaAux.Eof do
                   begin
                     Application.ProcessMessages;
                     if Cancelar Then
                        Begin
                          Cancelar := False;

                          if Application.MessageBox('Deseja cancelar o processo de classificação?','Confirmação',MB_ICONWARNING+ MB_YESNO+MB_DEFBUTTON2)=idyes then
                             begin
                               FreeAndNil(TabelaClass);
                               FreeAndNil(TabelaAux);

                               DeleteFile(ExtractFileDir(OpAbreArquivo.FileName) + '\DBFAUX.DBF');
                               DeleteFile(ExtractFileDir(OpAbreArquivo.FileName) + '\DBFAUX.MDX');

                               DBGridPrincipal.Enabled         := True;
                               Arquiv1.Enabled         := True;
                               Edio1.Enabled           := True;
                               Exibir1.Enabled         := True;
                               Movimentacao.Enabled    := True;
                               Sobre1.Enabled          := True;

                               Botoesmovimenta.Checked := True;
                               BtnCancelar.Visible     := True;
                               GroupBox5.Visible       := True;
                               SBPrimeiro.Visible      := True;
                               SBAnterior.Visible      := True;
                               SBProximo.Visible       := True;
                               SBUltimo.Visible        := True;
                               SBExcluir.Visible       := True;

                               StatusBar1.Panels[2].Text := ' Status: Inativo';
                               StatusBar1.Refresh;
                               ClassicouTabela := False;
                               Abort;
                             end;
                        end;

                     TabelaClass.Insert;
                     Cont := Cont + 1;
                     Form1.StatusBar1.Panels[1].Text := ' Registro(s): ' + IntToStr(Cont);

                     For I := 0 to TabelaClass.FieldCount-1 do
                       TabelaClass.FieldByName(TabelaClass.FieldDefs.Items[I].Name).AsString := TabelaAux.FieldByName(TabelaAux.FieldDefs.Items[I].Name).AsString;

                     TabelaClass.Post;
                     TabelaAux.Next;
                   end;

                 { *** Fechando tabela desclassificada e abrindo a nova *** }
                 TabelaPrincipal.Close;
                 TabelaPrincipal.IndexName     := 'CHAVE';
//                 TabelaPrincipal.DatabaseName  := TabelaAux.DatabaseName;
                 TabelaPrincipal.TableName     := TabelaClass.TableName;

                 TabelaPrincipal.Open;
                 
                 FreeAndNil(TabelaAux);
                 FreeAndNil(TabelaClass);

                 BtnCancelar.Visible          := False;

                 TotalReg := TabelaPrincipal.RecordCount;

                 MessageDlg(' Fim do processo de classificação !',mtInformation,[mbOK], 0);

                 Form1.StatusBar1.Panels[2].Text := ' Status: Inativo';
                 Form1.StatusBar1.Refresh;
               end;
          except
            if ClassicouTabela = True then
               MessageDlg(' Erro ao classificar a tabela! processo cancelado...',mtInformation,[mbOK], 0);
          end;
        end;

      DBGridPrincipal.Enabled := True;
      Arquiv1.Enabled         := True;
      Edio1.Enabled           := True;
      Exibir1.Enabled         := True;
      Movimentacao.Enabled    := True;
      Sobre1.Enabled          := True;

      Botoesmovimenta.Checked := True;
      BtnCancelar.Visible     := True;
      GroupBox5.Visible       := True;
      SBPrimeiro.Visible      := True;
      SBAnterior.Visible      := True;
      SBProximo.Visible       := True;
      SBUltimo.Visible        := True;
      SBExcluir.Visible       := True;
    end;
end;

procedure TForm1.Visualiza1Click(Sender: TObject);
begin
  MessageDlg(#13 +'     Programa: Visualiza Tabela'+ #13 +
             '     Versão...: ' + sVersaoPrm + #13 + #13 +
             ' :: Descrição do produto ::'         + #13 +
             '     Lê tabela DBF ou SQL;'          + #13 +
             '     Lê arquivo de estrutura com parâmetros para criação das tabelas DBF/SQL;' + #13 +
             '     Gera arquivo de quantidade de registro(s) do conteúdo da tabela DBF/SQL;' + #13 +
             '     Exibe detalhes sobre a estrutura da tabela "campo, tipo e tamanho";' + #13 +
             '     Testa conexão com o MySQL local ou servidor;'+ #13 +
             '     Adiciona, edita e exclui registro(s) da tabela DBF/SQL;' + #13 +
             '     Gera arquivo TXT com o conteúdo da tabela DBF/SQL;'+ #13 + #13 +
             ' :: Desenvolvido por ::' + #13 +
             '     Alberto Vieira Lima',mtInformation,[mbOK], 0);

//             '     Contato: alberto.vlima@hotmail.com',mtInformation,[mbOK], 0);
end;

procedure TForm1.ConfiguracoeClick(Sender: TObject);
begin
  { *** Criando e limpando da memória o frm*** }
  FormConf := TFormConf.create(application);
  try
    if FileExists(ExtractFilePath(Application.ExeName) + 'logconex.ini') then
       FormConf.Memo1.Lines.LoadFromFile(ExtractFilePath(Application.ExeName) + 'logconex.ini');
    FormConf.ShowModal
  finally
    FormConf.Release;
    FormConf := nil;
  end;

end;
procedure TForm1.DBGridPrincipalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ((TabelaPrincipal = nil) or (ZQueryPrincipal = nil)) then
     begin
       Label8.Caption := '   Registro ' + IntToStr(DBGridPrincipal.DataSource.DataSet.RecNo) + ' de ' + IntToStr(DBGridPrincipal.DataSource.DataSet.RecordCount);
       Label8.Refresh;
     end;
end;

procedure TForm1.DBGridPrincipalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Label8.Caption := '   Registro ' + IntToStr(DBGridPrincipal.DataSource.DataSet.RecNo) + ' de ' + IntToStr(DBGridPrincipal.DataSource.DataSet.RecordCount);
  Label8.Refresh;
end;

procedure TForm1.RichEdit1Change(Sender: TObject);
begin
  Label6.Caption := '  Total de Linhas: ' + IntToStr(RichEdit1.Lines.Count);
  Label6.Refresh;

  if RichEdit1.Lines.Count > 0 then
     begin
       arquivos1.Enabled       := False;
       AbrirEstrutura.Enabled  := False;
       Alterarfonte1.Enabled   := True;
       Fechararquivos1.Enabled := True;
     end
  else
    begin
      arquivos1.Enabled       := True;
      AbrirEstrutura.Enabled  := True;
      Alterarfonte1.Enabled   := False;
      Fechararquivos1.Enabled := False;
    end;
end;

procedure TForm1.Alterarfonte1Click(Sender: TObject);
begin
  FontDialog1.Execute;
  RichEdit1.Font.Name  := FontDialog1.Font.Name;
  RichEdit1.Font.Size  := FontDialog1.Font.Size;
  RichEdit1.Font.Color := FontDialog1.Font.Color;
end;

procedure TForm1.DBFparaMySQLClick(Sender: TObject);
var
  ContExporta:Integer;
  bContinuaExp:Boolean;
begin
  bContinuaExp := True;
  if not Assigned(ZQueryPrincipal) then
     begin
       ZQueryPrincipal := TZQuery.Create(Application);
       ZQueryPrincipal.Connection := zConectaSQL;
     end;

  { *** Seleciona base de dados e tabela no MySQL *** }
  NomeBaseSQL  := InputBox('Visualiza Tabela','Informe o nome da Base de dados onde deseja criar a tabela.','');

  if NomeBaseSQL = '' then
     MessageDlg(' Você deve informar o nome da base de dados!',mtError,[mbOk], 0)
  else
    begin
      if VerificaBaseSQL(NomeBaseSQL) = True then
         begin
           { *** Informando nome da tabela que será crirada *** }
           NomeTableSQL := LowerCase(InputBox('Visualiza Tabela','Informe o nome da tabela que será criada.',''));
           if NomeTableSQL = '' then
              MessageDlg(' Você deve informar o nome da tabela!',mtError,[mbOk], 0)
           else
             begin
               if VerificaTabelaSQL(NomeTableSQL) = True then
                  begin
                    if Application.MessageBox(' Atenção! ' + #13 + ' A tabela já existe na base de dados, deseja substituir ?','Confirmação',MB_ICONWARNING+ MB_YESNO+MB_DEFBUTTON2)=idyes then
                       begin
                         Try
                           begin
                             Form1.StatusBar1.Panels[2].Text := ' Status: Criando tabela,aguarde...';

                             ZQueryPrincipal.SQL.Clear;
                             ZQueryPrincipal.SQL.Add('USE '+ NomeBaseSQL + ';');
                             ZQueryPrincipal.ExecSQL;

                             ZQueryPrincipal.SQL.Clear;
                             ZQueryPrincipal.SQL.Add('DROP TABLE IF EXISTS '+ LowerCase(Sem_Extensao(NomeTableSQL)) + ';');
                             ZQueryPrincipal.ExecSQL;

                             ZQueryPrincipal.SQL.Clear;
                             ZQueryPrincipal.SQL.Add('CREATE TABLE ' + LowerCase(Sem_Extensao(NomeTableSQL)) + '(' + CamposDBF + ');');
                             ZQueryPrincipal.ExecSQL;
                           end;
                         Except
                            MessageDlg(' Não foi possível criar a tebala!',mtError,[mbOK], 0);
                            bContinuaExp := False;
                         end;
                       end
                    else
                      begin
                        MessageDlg(' Operação cancelar!',mtInformation,[mbOK], 0);
                        bContinuaExp := False;
                      end;
                  end
               else
                 begin
                   Try
                     Form1.StatusBar1.Panels[2].Text := ' Status: Criando tabela,aguarde...';

                     { *** Exportando dados da DBf para SQL *** }
                     ZQueryPrincipal.SQL.Clear;
                     ZQueryPrincipal.SQL.Add('USE '+ NomeBaseSQL + ';');
                     ZQueryPrincipal.ExecSQL;

                     ZQueryPrincipal.SQL.Clear;
                     ZQueryPrincipal.SQL.Add('CREATE TABLE ' + LowerCase(Sem_Extensao(NomeTableSQL)) + '(' + CamposDBF + ');');
                     ZQueryPrincipal.ExecSQL;
                   Except
                     MessageDlg(' Não foi possível criar a tabela! ',mtError,[mbOK], 0)
                   end;

                 end;

               if bContinuaExp = True then
                  begin
                    { *** Inserindo dados na tabela *** }
                    StatusBar1.Panels[2].Text := ' Status: Inserindo dados na tabela, aguarde...';
                    StatusBar1.Refresh;

                    { *** Desabilitando botões *** }
                    DBGridPrincipal.Enabled := False;
                    Arquiv1.Enabled         := False;
                    Edio1.Enabled           := False;
                    Exibir1.Enabled         := False;
                    Movimentacao.Enabled    := False;
                    Sobre1.Enabled          := False;

                    Botoesmovimenta.Checked := True;
                    BtnCancelar.Visible     := True;
                    GroupBox5.Visible       := True;
                    SBPrimeiro.Visible      := False;
                    SBAnterior.Visible      := False;
                    SBProximo.Visible       := False;
                    SBUltimo.Visible        := False;
                    SBExcluir.Visible       := False;

                    vBookmark := '';
                    vBookmark := DBGridPrincipal.DataSource.DataSet.Bookmark;

                    DBGridAux             := TDBGrid.Create(Application);
                    DataSourceAux         := TDataSource.Create(Application);
                    DataSourceAux.DataSet := DataSourcePrincipal.DataSet;
                    DBGridAux.DataSource  := DataSourceAux;

                    DBGridPrincipal.DataSource.DataSet.DisableControls;

                    Try
                      While not DBGridPrincipal.DataSource.DataSet.Eof do
                        begin
                          Application.ProcessMessages;
                          if Cancelar Then
                             Begin
                               Cancelar := False;
                               if Application.MessageBox('Deseja cancelar o processo de exportação?','Confirmação',MB_ICONWARNING+ MB_YESNO+MB_DEFBUTTON2)=idyes then
                                  begin
                                    DBGridPrincipal.Enabled := True;
                                    Arquiv1.Enabled         := True;
                                    Edio1.Enabled           := True;
                                    Exibir1.Enabled         := True;
                                    Movimentacao.Enabled    := True;
                                    Sobre1.Enabled          := True;

                                    Botoesmovimenta.Checked := True;
                                    BtnCancelar.Visible     := True;
                                    GroupBox5.Visible       := True;
                                    SBPrimeiro.Visible      := True;
                                    SBAnterior.Visible      := True;
                                    SBProximo.Visible       := True;
                                    SBUltimo.Visible        := True;
                                    SBExcluir.Visible       := True;

                                    ZQueryPrincipal.Close;

                                    ZQueryPrincipal.SQL.Clear;
                                    ZQueryPrincipal.SQL.Add('DROP TABLE IF EXISTS '+ LowerCase(Sem_Extensao(NomeTableSQL)) + ';');
                                    ZQueryPrincipal.ExecSQL;

                                    StatusBar1.Panels[2].Text := ' Status: Inativo';
                                    StatusBar1.Refresh;

                                    Abort;
                                  end;
                             end;

                          ContExporta := ContExporta + 1;

                          StatusBar1.Panels[1].Text := ' Registro(s): ' + IntToStr(ContExporta);
                          StatusBar1.Refresh;

                          { *** Preparando linha de comando *** }
                          Comando_SQL := '';
                          For I := 0 to DBGridAux.Columns.Count -1 do
                            begin
                              Comando_SQL := Comando_SQL + '''' + StringReplace(DBGridAux.Columns[I].Field.DisplayText,'''',' ',[rfReplaceAll]);
                              if I < DBGridAux.Columns.Count -1 then
                                 Comando_SQL := Comando_SQL + ''',';
                            end;

                          Comando_SQL := Comando_SQL + '''';

                          ZQueryPrincipal.SQL.Clear;
                          ZQueryPrincipal.SQL.Add('INSERT INTO ' + LowerCase(Sem_Extensao(NomeTableSQL)) + ' VALUES (' + Comando_SQL + ');');
                          ZQueryPrincipal.ExecSQL;

                          DBGridAux.DataSource.DataSet.Next;
                        end;

                      StatusBar1.Panels[2].Text := ' Status: Inativo';
                      StatusBar1.Panels[1].Text := ' Total de registro(s): ' + IntToStr(ContExporta);
                      StatusBar1.Refresh;

                      MessageDlg(' Tabela exportada com sucesso !' + #13 + #13 + ':: Detalhes da exportação :: ' + #13 + #13 +
                                 '  Nome da base...: ' + NomeBaseSQL + #13 +
                                 '  Nome tabela....: ' + LowerCase(Sem_Extensao(NomeTableSQL)) + #13 +
                                 '  Total exportado: ' + InttoStr(ContExporta),mtInformation,[mbOK], 0);
                    except
                      MessageDlg('Não foi possível inserir os dados na tabela!',mtInformation,[mbOK], 0);
                    end;

                    DBGridPrincipal.DataSource.DataSet.Bookmark := vBookmark;
                    DBGridPrincipal.DataSource.DataSet.EnableControls;

                    FreeAndNil(DBGridAux);
                    FreeAndNil(DataSourceAux);
                  end;
             end;

            DBGridPrincipal.Enabled := True;
            Arquiv1.Enabled         := True;
            Edio1.Enabled           := True;
            Exibir1.Enabled         := True;
            Movimentacao.Enabled    := True;
            Sobre1.Enabled          := True;

            Botoesmovimenta.Checked := True;
            BtnCancelar.Visible     := False;
            SBPrimeiro.Visible      := True;
            SBAnterior.Visible      := True;
            SBProximo.Visible       := True;
            SBUltimo.Visible        := True;
            SBExcluir.Visible       := True;
         end;
    end;
  FreeAndNil(ZQueryPrincipal);
end;

procedure TForm1.MySQLparaDBFClick(Sender: TObject);
var
  ContExporta:Integer;
  NomeExporta,NomCampoIndex,NomCampoChave :String;
  label vorta;
begin
  { *** Exportando dados da Tabela SQL para DBF*** }
  SaveDialog1.Title  := 'Informe o nome do tabela e o caminho onde será salvo';
  SaveDialog1.Filter := '*.DBF';
  SaveDialog1.Execute;

  if SaveDialog1.FileName <> '' then
    begin
      Try
        NomeExporta := '';
        NomeExporta := Bibliotecas.Sem_Extensao(SaveDialog1.FileName) + '.DBF';
        ContExporta := 0;
        Achou       := False;

        { *** Desabilitando botões *** }
        DBGridPrincipal.Enabled := False;
        Arquiv1.Enabled         := False;
        Edio1.Enabled           := False;
        Exibir1.Enabled         := False;
        Movimentacao.Enabled    := False;
        Sobre1.Enabled          := False;

        Botoesmovimenta.Checked := True;
        BtnCancelar.Visible     := True;
        GroupBox5.Visible       := True;
        SBPrimeiro.Visible      := False;
        SBAnterior.Visible      := False;
        SBProximo.Visible       := False;
        SBUltimo.Visible        := False;
        SBExcluir.Visible       := False;

        Form1.StatusBar1.Panels[2].Text := ' Status: Criando estrutura da tabela DBF, aguarde...';
        Form1.StatusBar1.Refresh;

        if not Assigned(TabelaAux) then
          TabelaAux := TTable.Create(Application);

        { *** Limando campos *** }
        TabelaAux.FieldDefs.Clear;

        { *** Desativando table1 *** }
        if TabelaAux.State <> DsInactive then
           TabelaAux.Close;

        if Application.MessageBox(' Deseja criar um campo chave para a nova tabela ?','Confirmação',MB_ICONQUESTION+ MB_YESNO+MB_DEFBUTTON2)=idyes then
           begin
             vorta:
             NomCampoChave := '';
             NomCampoIndex := '';
             NomCampoChave := InputBox(' Visualiza Tabela','Informe o nome do campo. ','');
             NomCampoIndex := InputBox(' Visualiza Tabela','Informe o nome da CHAVE para o campo. ','');

             if ((NomCampoIndex = '') or (NomCampoChave = '')) then
                begin
                  if Application.MessageBox(' O campo está em BRANCO! Para criar o campo CHAVE na tabela, você deve informar um nome, caso queira clique em YES, se não clique em NO para criar a tabela sem um campo CHAVE!','Confirmação',MB_ICONQUESTION+ MB_YESNO+MB_DEFBUTTON2)=idyes then
                     goto vorta;
                end
             else
               With TabelaPrincipal.IndexDefs do
                 begin
                   Add(NomCampoIndex,NomCampoChave,[]);
                 end;
           end;

        { *** Preparando componente table *** }
        With TabelaAux do
          begin
            DatabaseName := SaveDialog1.FileName;
            TableName := NomeExporta;
            TableType := ttDBase;
          end;

        if not Assigned(ZQueryAux) then
           begin
             ZQueryAux := TZQuery.Create(Application);
             ZQueryAux.Connection := zConectaSQL;
           end;

        ZQueryAux.SQL.Clear;
        ZQueryAux.SQL.Add('SELECT * FROM ' + NomeTableSQL + ';');
        ZQueryAux.Open;

        { *** Adicionando campos para criação  *** }
        For I := 0 to ZQueryAux.FieldCount-1 do
          begin
            With TabelaAux.FieldDefs do
              begin
                if TipoCampos[I] = 'TStringField' then
                   add(WCampos[I],ftString,TamCampos[I],False)
                else
                  if TipoCampos[I] = 'TIntegerField' then
                     add(WCampos[I],ftInteger,TamCampos[I],False)
                  else
                    if TipoCampos[I] = 'TIntegerField' then
                       add(WCampos[I],ftInteger,TamCampos[I],False)
                    else
                      if TipoCampos[I] = 'TMemoField' then
                         add(WCampos[I],ftMemo,TamCampos[I],False)
                      else
                        begin
                          MessageDlg('Tipo do campo desconhecido!' + #13 + #13 + '   Processo cancelado!' ,mtError,[mbOK], 0);
                          Achou := True;
                          Break;
                        end;
              end;
          end;

        if Achou = False then
           begin
             try
               begin
               { *** Criando tabela com os campos apurados *** }
                 TabelaAux.CreateTable;
                 TabelaAux.Close;
               end;
             except
               MessageDlg('Não foi possível criar a tabela!',mtError,[mbOK], 0)
             end;

             try
               begin
                 { *** Inserindo dados na tabela *** }
                 TabelaAux.Open;

                 ContExporta := 0;

                 Form1.StatusBar1.Panels[2].Text := ' Status: Transferidno dados para tabela DBF, aguarde...';

                 while not ZQueryAux.Eof do
                   begin
                     Application.ProcessMessages;
                     if Cancelar Then
                        begin
                          Cancelar := False;
                          if MessageDlg('Deseja cancelar o processo de exportação?',mtConfirmation,[mbYes,mbNo],0) = mrYes Then
                             begin
                               DBGridPrincipal.Enabled         := True;
                               Arquiv1.Enabled         := True;
                               Edio1.Enabled           := True;
                               Exibir1.Enabled         := True;
                               Movimentacao.Enabled    := True;
                               Sobre1.Enabled          := True;

                               Botoesmovimenta.Checked := True;
                               BtnCancelar.Visible     := True;
                               GroupBox5.Visible       := True;
                               SBPrimeiro.Visible      := True;
                               SBAnterior.Visible      := True;
                               SBProximo.Visible       := True;
                               SBUltimo.Visible        := True;
                               SBExcluir.Visible       := True;

                               Form1.StatusBar1.Panels[2].Text := ' Status: Inativo';
                               Form1.StatusBar1.Panels[1].Text := ' Total de registro(s): ' + IntToStr(ZQueryPrincipal.RecordCount);
                               Form1.StatusBar1.Refresh;
                               TabelaPrincipal.Close;
                               FreeAndNil(ZQueryAux);

                               if MessageDlg('Deseja deletar a tabela criada?',mtConfirmation,[mbYes,mbNo],0) = mrYes Then
                                  DeleteFile(NomeExporta);

                               TotalReg := ZQueryPrincipal.RecordCount;
                               Abort;
                             end;
                        end;

                     StatusBar1.Panels[1].Text := ' Registro(s): ' + IntToStr(ContExporta);
                     StatusBar1.Refresh;

                     ContExporta := ContExporta + 1;
                     TabelaPrincipal.Insert;

                     For I := 0 to ZQueryAux.FieldCount-1 do
                        TabelaAux.FieldByName(ZQueryAux.FieldDefs[I].Name).AsString := ZQueryAux.FieldByName(ZQueryAux.FieldDefs[I].Name).AsString;

                     TabelaAux.Post;
                     ZQueryAux.Next;
                   end;

                 Form1.StatusBar1.Panels[2].Text := ' Status: Inativo';
                 Form1.StatusBar1.Panels[1].Text := ' Total de registro(s): ' + IntToStr(ZQueryPrincipal.RecordCount);
                 Form1.StatusBar1.Refresh;

                 MessageDlg('   Tabela exportada com sucesso !' + #13 + #13 +
                            '  :: Detalhes da exportação :: ' + #13 + #13 +
                            '  Local da tabela: ' + ExtractFileDir(SaveDialog1.FileName) + #13 +
                            '  Nome tabela....: ' + ExtractName(SaveDialog1.FileName)+ '.DBF' + #13 +
                            '  Total exportado: ' + InttoStr(ContExporta),mtInformation,[mbOK], 0)
               end;
             except
               MessageDlg(' Não foi possível inserir os dados na tabela!',mtError,[mbOK], 0)
             end
           end;
         FreeAndNil(ZQueryAux);
         FreeAndNil(TabelaAux);

      except
         MessageDlg(' Não foi possível inserir os dados na tabela!',mtError,[mbOK], 0)
      end;

      TotalReg := ZQueryPrincipal.RecordCount;

      DBGridPrincipal.Enabled         := True;
      Arquiv1.Enabled         := True;
      Edio1.Enabled           := True;
      Exibir1.Enabled         := True;
      Movimentacao.Enabled    := True;
      Sobre1.Enabled          := True;

      Botoesmovimenta.Checked := True;
      BtnCancelar.Visible     := True;
      GroupBox5.Visible       := True;
      SBPrimeiro.Visible      := True;
      SBAnterior.Visible      := True;
      SBProximo.Visible       := True;
      SBUltimo.Visible        := True;
      SBExcluir.Visible       := True;
    end;
end;

procedure TForm1.SpeedButton6Click(Sender: TObject);
begin
  try
    begin
      ZQueryPrincipal.SQL.Clear;
      ZQueryPrincipal.SQL.Add(RichEdit2.Text);
      ZQueryPrincipal.ExecSQL;

      RichEdit2.Clear;
    end;
  except
    MessageDlg(' Não foi possível utilizar esse comando!', mtError,[mbOk], 0);
  end;
  ZQueryPrincipal.Close;
  ZQueryPrincipal.Open;
end;

procedure TForm1.RichEdit2Change(Sender: TObject);
begin
  if RichEdit2.Text <> '' then
     SpeedButton6.Enabled := True
  else
     SpeedButton6.Enabled := False;
end;
procedure TForm1.TerminalSQLClick(Sender: TObject);
begin
  if TerminalSQL.Checked = False then
     begin
       TerminalSQL.Checked := True;
       GroupBox1.Visible := True;
       RichEdit2.Clear;
       RichEdit2.SetFocus;
       Form1.StatusBar1.Panels[2].Text := ' Status: Terminal SQL ativo';
     end
  else
     begin
       Form1.StatusBar1.Panels[2].Text := ' Status: Inativa';
       TerminalSQL.Checked := False;
       GroupBox1.Visible := False;
     end;
end;

procedure TForm1.DBGridPrincipalTitleClick(Column: TColumn);
var
 Campo:String;
begin
  if ((EtapaB = 'SQL') and (BtnCancelar.Visible = False)) then
     begin
       Campo:= Column.FieldName;    // CAMPO RECEBE O NOME DA COLUNA CLICADA,
       Application.ProcessMessages; // para considerar algo que aconteça no dbgrid durante a entrada nesta procedure

       ZQueryPrincipal.SQL.Clear;
       ZQueryPrincipal.SQL.Add('SELECT * FROM  '+ NomeTableSQL + ' ORDER BY ' + Campo);
       ZQueryPrincipal.Open;
     end;
end;

Function ColorToHtml(mColor: TColor): string;
begin
  mColor := ColorToRGB(mColor);
  Result := Format('#%.2x%.2x%.2x',
    [GetRValue(mColor), GetGValue(mColor), GetBValue(mColor)]);
end; { ColorToHtml }

Function StrToHtml(mStr: string; mFont: TFont = nil): string;
var
  vLeft, vRight: string;
begin
  Result := mStr;
  Result := StringReplace(Result,'&','&AMP;',[rfReplaceAll]);
  Result := StringReplace(Result,'<','&LT;', [rfReplaceAll]);
  Result := StringReplace(Result,'>','&GT;', [rfReplaceAll]);

  if not Assigned(mFont) then
     Exit;
  vLeft := Format('<font face="%s" color="%s" >',[mFont.Name, ColorToHtml(mFont.Color)]);
  vRight := '</font>';
  if fsBold in mFont.Style then
     begin
       vLeft := vLeft + '<b>';
       vRight := '</b>' + vRight;
     end;
  if fsItalic in mFont.Style then
     begin
       vLeft := vLeft + '<i>';
       vRight := '</i>' + vRight;
     end;
  if fsUnderline in mFont.Style then
     begin
       vLeft := vLeft + '<u>';
       vRight := '</u>' + vRight;
     end;
  if fsStrikeOut in mFont.Style then
     begin
       vLeft := vLeft + '<s>';
       vRight := '</s>' + vRight;
     end;
  Result := vLeft + Result + vRight;
end; { StrToHtml }

procedure TForm1.SalvaHTMLClick(Sender: TObject);
const
  cAlignText: array[TAlignment] of string = ('LEFT', 'RIGHT', 'CENTER');
var
  vColFormat,vColText,vBookmark,sNomeArquivo,sNomeTabela: string;
  vAllWidth,I, J,iLidos,iApura: Integer;
  vWidths: array of Integer;
  Saida:TextFile;
begin
  SaveDialog1.Title    := ' Visualiza Tabela - Informe o caminho e o nome do aruivo';
  SaveDialog1.FileName := '*.HTML';
  SaveDialog1.Filter   := '  Arquivo HTML|*.HTML';
  SaveDialog1.Execute;

  If SaveDialog1.FileName <> '' then
    begin
      sNomeTabela := '';

      if EtapaB = 'DBF' then
         sNomeTabela := TabelaPrincipal.TableName
      else
         sNomeTabela := NomeTableSQL;


      { *** Desebilitando outras funções *** }
      DBGridPrincipal.Enabled      := False;

      DBGridAux := TDBGrid.Create(Application);

      DBGridAux.DataSource := DataSourcePrincipal;

      Arquiv1.Enabled      := False;
      Edio1.Enabled        := False;
      Exibir1.Enabled      := False;
      Movimentacao.Enabled := False;
      sobre1.Enabled       := False;

      iApura := 0;

      Botoesmovimenta.Checked := True;
      BtnCancelar.Visible     := True;
      GroupBox5.Visible       := True;
      SBPrimeiro.Visible      := False;
      SBAnterior.Visible      := False;
      SBProximo.Visible       := False;
      SBUltimo.Visible        := False;
      SBExcluir.Visible       := False;

      Form1.StatusBar1.Panels[2].Text := ' Status:  Gerando arquivo HTML, aguarde ...';

      vBookmark := DBGridAux.DataSource.DataSet.Bookmark;
      DBGridAux.DataSource.DataSet.DisableControls;

      iLidos := 0;
      try
        J := 0;
        vAllWidth := 0;

        sNomeArquivo := Copy(ExtractFileName(SaveDialog1.FileName),1,length(ExtractFileName(SaveDialog1.FileName)) - length(ExtractFileExt(SaveDialog1.FileName)));

        AssignFile(Saida,sNomeArquivo + '.HTML');
        Rewrite(Saida);

        for I := 0 to DBGridAux.Columns.Count - 1 do
          if DBGridAux.Columns[I].Visible then
             begin
               Inc(J);
               SetLength(vWidths, J);
               vWidths[J - 1] := DBGridAux.Columns[I].Width;
               Inc(vAllWidth, DBGridAux.Columns[I].Width);
             end;

        if J <= 0 then
           Exit;

        Bibliotecas.CopyFile(ExtractFilePath(Application.ExeName) + '\visualiza.css',sNomeArquivo + '.css');

        Writeln(Saida,'<html>');
        Writeln(Saida,'  <head>');
        Writeln(Saida,'    <meta http-equiv="content-type" content="text/html; charset=ISO-8859" />');
        Writeln(Saida,'    <meta name="description" content="Sistema para Visualização de tabela DBF/MySQL ' + sVersaoPrm + '" />');
        Writeln(Saida,'    <meta name="author" content="alberto.vlima@hotmail.com" />');
        Writeln(Saida,'    <link rel="stylesheet" type="text/css" href="' + sNomeArquivo + '.css" media="screen,projection" />');
        Writeln(Saida,'    <title>Visualiza tabela DBF/MySQL '+ sVersaoPrm +'"' +  sNomeTabela + '"</title>');
        Writeln(Saida,'  </head>');
        Writeln(Saida,'  <body>');
        Writeln(Saida,Format('<table bgcolor="%s" border=1 width="100%%">',[ColorToHtml(DBGridAux.Color)]));

        if EtapaB = 'DBF' then
           begin
             TotalReg := TabelaPrincipal.RecordCount;
             if TabelaPrincipal.TableName <> '' then
                Writeln(Saida,Format('<caption>' + sNomeTabela + '</caption>', [StrToHtml(sNomeTabela)]));
           end
        else
          begin
            TotalReg := ZQueryPrincipal.RecordCount;
            if ZTable1.TableName <> '' then
               Writeln(Saida,Format('<caption>' + sNomeTabela + '</caption>', [StrToHtml(sNomeTabela)]));
          end;

        vColFormat := '';
        vColText   := '';
        vColFormat := vColFormat + '<tr>'#13#10;
        vColText   := vColText + '<tr>'#13#10;

        J := 0;

        for I := 0 to DBGridAux.Columns.Count - 1 do
          if DBGridAux.Columns[I].Visible then
             begin
               Application.ProcessMessages;
               if Cancelar Then
                  Begin
                    Cancelar := False;
                    if MessageDlg('Deseja cancelar o processo de conversão?',mtConfirmation,[mbYes,mbNo],0) = mrYes Then
                       begin
                         BtnCancelar.Visible := False;

                         SBPrimeiro.Visible  := True;
                         SBAnterior.Visible  := True;
                         SBProximo.Visible   := True;
                         SBUltimo.Visible    := True;
                         SBExcluir.Visible   := True;
                         DBGridPrincipal.Enabled     := True;

                         Form1.StatusBar1.Panels[2].Text := ' Status: Inativo';
                         Form1.StatusBar1.Refresh;

                         CloseFile(Saida);
                         DeleteFile(bibliotecas.Sem_Extensao(SaveDialog1.FileName) + '.HTML');
                         Abort;
                       end;
                  end;

               vColFormat := vColFormat + Format('  <td bgcolor="%s" align=%s width="%d%%">DisplayText%d</td>'#13#10,[ColorToHtml(DBGridAux.Columns[I].Color),
                                                 cAlignText[DBGridAux.Columns[I].Alignment],Round(vWidths[J] / vAllWidth * 100), J]);
               vColText   := vColText + Format('  <th bgcolor="%s" align=%s width="%d%%">%s</th>'#13#10,[ColorToHtml(DBGridAux.Columns[I].Title.Color),
                                                cAlignText[DBGridAux.Columns[I].Alignment],Round(vWidths[J] / vAllWidth * 100),StrToHtml(DBGridAux.Columns[I].Title.Caption,DBGridAux.Columns[I].Title.Font)]);
               Inc(J);
             end;

        vColFormat := vColFormat + '</tr>'#13#10;
        vColText   := vColText + '</tr>'#13#10;

        Writeln(Saida, vColText);

        DBGridAux.DataSource.DataSet.First;

        while not DBGridAux.DataSource.DataSet.Eof do
           begin
             iApura := iApura + 1;

             Application.ProcessMessages;
             if Cancelar Then
                Begin
                  Cancelar := False;
                  if MessageDlg('Deseja cancelar o processo de conversão?',mtConfirmation,[mbYes,mbNo],0) = mrYes Then
                     begin
                       BtnCancelar.Visible := False;
                       DBGridPrincipal.Enabled     := True;
                       SBPrimeiro.Visible  := True;
                       SBAnterior.Visible  := True;
                       SBProximo.Visible   := True;
                       SBUltimo.Visible    := True;
                       SBExcluir.Visible   := True;

                       Form1.StatusBar1.Panels[2].Text := ' Status: Inativo';
                       Form1.StatusBar1.Refresh;

                       FreeAndNil(DBGridAux);


                       if MessageDlg('Deseja manter o arquivo gerado com os dados até o cancelamento?',mtConfirmation,[mbYes,mbNo],0) = mrNo Then
                          DeleteFile(bibliotecas.Sem_Extensao(SaveDialog1.FileName) + '.HTML')
                       else
                         begin
                           Writeln(Saida,'</table>');
                           Writeln(Saida,'  </body>');
                           Writeln(Saida,'</html>');
                           CloseFile(Saida);
                         end;

                       Abort;
                     end;
                end;

             J := 0;
             vColText := vColFormat;
             for I := 0 to DBGridAux.Columns.Count - 1 do
                if DBGridAux.Columns[I].Visible then
                   begin
                     vColText := StringReplace(vColText, Format('>DisplayText%d<', [J]),Format('>%s<', [StrToHtml(DBGridAux.Columns[I].Field.DisplayText,DBGridAux.Columns[I].Font)]),[rfReplaceAll]);
                     Inc(J);
                   end;

             Writeln(Saida,vColText);

             DBGridAux.DataSource.DataSet.Next;
             iLidos := iLidos + 1;
             Form1.StatusBar1.Panels[1].Text := ' Registro(s): ' + IntToStr(iLidos);
           end;

        Writeln(Saida,'</table>');
        Writeln(Saida,'  </body>');
        Writeln(Saida,'</html>');

        CloseFile(Saida);

        MessageDlg(' Fim do processo!', mtInformation,[mbOk], 0);

        FreeAndNil(DBGridAux);

        Form1.StatusBar1.Panels[2].Text := ' Status: inativo';
        Form1.StatusBar1.Refresh;

        BtnCancelar.Visible := False;
        DBGridPrincipal.Enabled     := True;
        SBPrimeiro.Visible  := True;
        SBAnterior.Visible  := True;
        SBProximo.Visible   := True;
        SBUltimo.Visible    := True;
        SBExcluir.Visible   := True;

        if MessageDlg('Deseja abrir o arquivo HTML gerado?',mtConfirmation,[mbYes,mbNo],0) = mrYes Then
           HlinkNavigateString(nil,StringToOleStr(ExtractFileDir(SaveDialog1.FileName) + '\' + sNomeArquivo + '.HTML'));

      Finally
        DBGridPrincipal.DataSource.DataSet.Bookmark := vBookmark;
        DBGridPrincipal.DataSource.DataSet.EnableControls;
        vWidths := nil;

        { *** Desebilitando outras funções *** }
        Arquiv1.Enabled      := True;
        Edio1.Enabled        := True;
        Exibir1.Enabled      := True;
        Movimentacao.Enabled := True;
        Sobre1.Enabled       := True;
      end;

    end;
end;

procedure TForm1.AbrirTabelaClick(Sender: TObject);
begin
  Pergunta             := '';
  NomeBaseSQL          := '';
  NomeTableSQL         := '';

  if EtapaB = 'DBF' then
     begin
       if not Assigned(OpAbreArquivo) then
          OpAbreArquivo := TOpenDialog.Create(Application);

       OpAbreArquivo.Title  := ' Visualiza Tabela - Abre Tabela.';
       OpAbreArquivo.Filter := ' DataBase|*.DBF|DataBase|*.DB';
       OpAbreArquivo.Execute;

       { *** Abrindo Tabela DBF *** }
       If ((OpAbreArquivo.FileName <> '') and (FileExists(OpAbreArquivo.FileName)) or (Pergunta <> '')) then
          begin
            { *** Pergunta se a tabela possui campo index, se contar nos parâmetros de confiurão *** }
            if Etapa6 = 'A6' then
               begin
                 if Application.MessageBox('A tabela possui campo CHAVE','Confirmação',MB_ICONQUESTION+ MB_YESNO+MB_DEFBUTTON2)=idyes then
                    Pergunta := 'S'
                 else
                   Pergunta := 'N';
               end
            else
              Pergunta := 'N';

            if ((Pergunta <> 'S') and (Pergunta <> 'N')) then
               MessageDlg(' Para processeguir você deve informar S ou N!',mtError,[mbOk], 0)
            else
              AbreTabelaDBF();
          end;
        FreeAndNil(OpAbreArquivo);
     end
  else
    begin
      if not Assigned(ZQueryPrincipal) then
         begin
           ZQueryPrincipal := TZQuery.Create(Application);
           ZQueryPrincipal.Connection := zConectaSQL;
         end;

      if not Assigned(DataSourcePrincipal) then
        DataSourcePrincipal := TDataSource.Create(Application);

      AbreTabelaSQL();
    end;


  Form1.StatusBar1.Panels[2].Text := ' Status: Inativo';
end;

procedure TForm1.FecharTabela1Click(Sender: TObject);
begin
  { *** Fechando tabela e desabilitando botões *** }
  Form1.StatusBar1.Panels[2].Text := ' Status: Inativo';
  Form1.StatusBar1.Panels[1].Text := ' Total de registro(s): 0';

  PopFecharTabela.Enabled := False;
  Label8.Visible          := False;
  GeraTXT.Enabled         := False;
  LimparTabela.Enabled    := False;
  EditarTabela.Enabled    := False;
  ExcluirReg.Enabled      := False;
  GeraQtd.Enabled         := False;
  Pesquisar.Enabled       := False;
  ExcluirXateX.Enabled    := False;
  FecharTabela1.Enabled   := False;
  EstruTabela.Enabled     := False;
  DataSource1.AutoEdit    := False;
  AtualizarTabela1.Enabled:= False;
  Pesquisar.Checked       := False;
  Botoesmovimenta.Enabled := False;
  Campostabela.Enabled    := False;
  Movimentacao.Enabled    := False;
  SalvaHTML.Enabled       := False;
  Classtabela.Enabled     := False;
  TerminalSQL.Enabled     := False;
  Botoesmovimenta.Checked := False;
  BtnCancelar.Visible     := False;
  GroupBox1.Visible       := False;
  GroupBox5.Visible       := False;
  Exportacao.Enabled      := False;

  PopAbreTabela.Enabled   := True;
  AbrirTabela.Enabled     := True;
  AlimentarTabela.Enabled := True;
  CriaTabela.Enabled      := True;
  Configuracoe.Enabled    := True;

  FreeAndNil(TabelaPrincipal);
  FreeAndNil(DataSourcePrincipal);

  ZTable1.Close;
  Memo1.Clear;
  Form1.Caption     := '  Visualiza Tabela';
  GroupBox9.Visible := False;
  Edit1.Clear;

  ZTable1.Filtered  := False;

  Label8.Caption    := '   Registro 0 de 0';
  Label8.Refresh;

  GroupBox5.Visible := False;
  Botoesmovimenta.Checked := False;

  if ClassicouTabela = True then
     begin
       DeleteFile(ExtractFileDir(OpAbreArquivo.FileName) + '\DBFAUX.DBF');
       DeleteFile(ExtractFileDir(OpAbreArquivo.FileName) + '\DBFAUX.MDX');
     end;

  ClassicouTabela := False;

  if EtapaB = 'SQL' then
     begin
       FreeAndNil(ZQueryPrincipal);
       DataSource1.DataSet := ZTable1;
       ZTable1.Active;

       zConectaSQL.Connected := False;
     end;
end;

procedure TForm1.AbrirEstruturaClick(Sender: TObject);
begin
  Try
    {  *** Abre arquivo de estrutura/TXT *** }
    if not Assigned(OpAbreArquivo) then
       OpAbreArquivo := TOpenDialog.Create(Application);

    OpAbreArquivo.Title    := ' Visualiza Tabela - Abrir arquivo de estrutura.';
    OpAbreArquivo.Filter   := ' Arquivo de texto|*.TXT';
    OpAbreArquivo.FileName := '*.txt';
    OpAbreArquivo.Execute;

    try
      begin
        If ((OpAbreArquivo.FileName <> '') and (OpAbreArquivo.FileName <> '*.txt')) then
          if not ((FileExists(OpAbreArquivo.FileName)) or (UpperCase(ExtractFileExt(OpAbreArquivo.FileName)) <> '.TXT')) then
             MessageDlg(' O arquivo indicado não existe!',mtError,[mbOk], 0)
          else
            begin
              if Etapa1 = 'B1' then
                 begin
                   AbaArquivo.Checked    := True;
                   TabSheet2.TabVisible  := True;
                   PageControl1.TabIndex := 2;
                   RichEdit1.Lines.LoadFromFile(OpAbreArquivo.FileName);
                 end;

              if Etapa1 = 'A1' then
                 begin
                   { *** Verifica qual editor existe na máquina *** }
                   if not FileExists('C:\Program Files\JGsoft\EditPadLite\EDITPAD.EXE') then
                      Bibliotecas.ExecutePrograma('"notepad.exe "',OpAbreArquivo.FileName)
                   else
                     ExecutePrograma({'"notepad.exe "'}'"C:\Program Files\JGsoft\EditPadLite\EDITPAD.EXE "',OpAbreArquivo.FileName);
                 end;
            end;
      end;
    Except
       MessageDlg(' Erro ao carregar o arquivo! Tente novamente',mtInformation,[mbOK], 0);
    end;

  Finally
     FreeAndNil(OpAbreArquivo);
  end;

end;

procedure TForm1.AtualizarTabela1Click(Sender: TObject);
begin
  if EtapaB = 'DBF' then
    TabelaPrincipal.Refresh
  else
    ZQueryPrincipal.Refresh;
end;
procedure TForm1.DBGridPrincipalCellClick(Column: TColumn);
begin
  Label8.Caption := '   Registro ' + IntToStr(DBGridPrincipal.DataSource.DataSet.RecNo) + ' de ' + IntToStr(DBGridPrincipal.DataSource.DataSet.RecordCount);
  Label8.Refresh;
end;

procedure TForm1.BtnCancelarClick(Sender: TObject);
begin
  Cancelar := True;
end;

{ *** Abre tabela DBF*** }
Function TForm1.AbreTabelaDBF():string;
Begin
  Try
    if not Assigned(DataSourcePrincipal) then
      DataSourcePrincipal := TDataSource.Create(Application);

    if not Assigned(TabelaPrincipal) then
       TabelaPrincipal := TTable.Create(Application);

    DataSourcePrincipal.DataSet := TabelaPrincipal;

    Form1.StatusBar1.Panels[2].Text := ' Status: Abrindo tabela [' + ExtractFileName(OpAbreArquivo.FileName) + '], aguarde...';
    Form1.StatusBar1.Panels[1].Text := ' Apurando quantidade...';
    Form1.StatusBar1.Refresh;

   { *** Guarda nome da tabela e diretório para gera estrutura *** }
   WNomearq := Sem_Extensao(ExtractFileName(OpAbreArquivo.FileName));
   DirEstru := ExtractFileDir(OpAbreArquivo.FileName);

   NomeTableDBF                 := '';
   TabelaPrincipal.DatabaseName := ExtractFileDir(OpAbreArquivo.FileName);
   TabelaPrincipal.TableName    := ExtractFileName(OpAbreArquivo.FileName);
   DBGridPrincipal.DataSource   := DataSourcePrincipal;
   NomeTableDBF                 := TabelaPrincipal.TableName;

   If ((Pergunta = 'S') or (Pergunta = 's')) then
      begin
        Pergunta := '';
        InputQuery('Visualiza DBF','informe o campo index da tabela.',Pergunta);
        TabelaPrincipal.IndexName := Pergunta;
      end;

   TabelaPrincipal.Open;
   TabelaPrincipal.Active:= True;

   Memo1.Lines.Add(' ------------------------------------------------------------');
   Memo1.Lines.Add(' Nome da tabela....: ' + ExtractFileName(OpAbreArquivo.FileName));
   Memo1.Lines.Add(' Total de campos...: ' + IntToStr(TabelaPrincipal.FieldCount));
   Memo1.Lines.Add(' Tamanho do arquivo: ' + Bibliotecas.strByteSize(Bibliotecas.FileSize(ExtractFileName(OpAbreArquivo.FileName))));
   Memo1.Lines.Add(' Total de Registro.: ' + IntToStr(TabelaPrincipal.RecordCount));
   Memo1.Lines.Add(' ------------------------------------------------------------');
   Memo1.Lines.Add(Bibliotecas.AjustaStr(' CAMPO',20)+ Bibliotecas.AjustaStr('   TAMANHO DO CAMPO ',20)+ '   ' +Bibliotecas.AjustaStr('   TIPO DO CAMPO ',20));
   Memo1.Lines.Add(' ------------------------------------------------------------');

   CamposDBF := '';
   For I:= 0 to TabelaPrincipal.FieldCount-1 do
     begin
       { *** apurando Dados da Tabela e aguarda campos da Tabela DBF *** }
       if CamposDBF <> '' then
          CamposDBF := CamposDBF + ',';

       if TabelaPrincipal.Fields[I].Size = 0 then
          Memo1.Lines.Add(' ' + Bibliotecas.AjustaStr(TabelaPrincipal.FieldDefs[I].Name,20) + '        ' + Bibliotecas.AjustaStr('-',15) + '   ' + Bibliotecas.AjustaStr(TabelaPrincipal.FieldDefs[I].FieldClass.ClassName,20))
       else
         Memo1.Lines.Add(' '  + Bibliotecas.AjustaStr(TabelaPrincipal.FieldDefs[I].Name,20)+ '        '+ Bibliotecas.AjustaStr(IntToStr(TabelaPrincipal.Fields[I].Size),15) + '   ' + Bibliotecas.AjustaStr(TabelaPrincipal.FieldDefs[I].FieldClass.ClassName,20));

       { *** Verificando o tipo dos campos e guardando o tamanho *** }
       if TabelaPrincipal.FieldDefs[I].FieldClass.ClassName = 'TAutoIncField' then
          CamposDBF := CamposDBF + TabelaPrincipal.FieldDefs[I].Name + ' INT AUTO_INCREMENT PRIMARY KEY';

       if TabelaPrincipal.FieldDefs[I].FieldClass.ClassName = 'TDateField' then
          CamposDBF := CamposDBF + TabelaPrincipal.FieldDefs[I].Name + ' DATE';

       if TabelaPrincipal.FieldDefs[I].FieldClass.ClassName = 'TIntegerField' then
          CamposDBF := CamposDBF + TabelaPrincipal.FieldDefs[I].Name + ' INT';

       if TabelaPrincipal.FieldDefs[I].FieldClass.ClassName = 'TFloatField' then
          CamposDBF := CamposDBF + TabelaPrincipal.FieldDefs[I].Name + ' FLOAT';

       if TabelaPrincipal.FieldDefs[I].FieldClass.ClassName = 'TTimeField' then
          CamposDBF := CamposDBF + TabelaPrincipal.FieldDefs[I].Name + ' TIME';

       if TabelaPrincipal.FieldDefs[I].FieldClass.ClassName = 'TStringField' then
          CamposDBF := CamposDBF + TabelaPrincipal.FieldDefs[I].Name + ' VARCHAR(' + IntToStr(TabelaPrincipal.Fields[I].Size) + ')';
     end;

   Memo1.Lines.Add(' ------------------------------------------------------------');
   
   Form1.Caption := '  Visualiza Tabela - ' +   ExtractFileName(OpAbreArquivo.FileName);

   AtivaBotaoAux(TabelaPrincipal.RecordCount,'DBF');

   TotalReg       := DBGridPrincipal.DataSource.DataSet.RecordCount;
   Label8.Caption := '   Registro 1 de ' + IntToStr(TotalReg);
   Label8.Refresh;

   Form1.StatusBar1.Panels[1].Text := ' Total de registro(s): ' + IntToStr(DBGridPrincipal.DataSource.DataSet.RecordCount);
   Form1.StatusBar1.Refresh;

   DBGridPrincipal.Enabled := True;
  Except
    begin
      DBGridPrincipal.Enabled := False;
      Form1.StatusBar1.Panels[1].Text := ' Total de registro(s): 0';
      Form1.StatusBar1.Refresh;
      MessageDlg('Não foi possível carregar a tabela favor verificar !',mtError,[mbOK], 0);
    end;
  end;
end;

{ *** Abre tabela SQL *** }
Function TForm1.AbreTabelaSQL():string;
Begin
  { *** Seleciona base de dados e tabela no MySQL *** }
  NomeBaseSQL  := LowerCase(InputBox(' Visualiza Tabela - Seleciona tabela.','Informe o nome do data base. ',''));
  if NomeBaseSQL = '' then
     MessageDlg(' Você deve informar o nome da base de dados!',mtError,[mbOk], 0)
  else
    begin
      NomeTableSQL := LowerCase(InputBox(' Visualiza Tabela - Seleciona tabela.','Informe o nome da tabela.',''));
      if NomeTableSQL = '' then
         MessageDlg(' Você deve informar o nome da tabela!',mtError,[mbOk], 0)
      else
        if VerificaBaseeTabela(NomeBaseSQL,NomeTableSQL) = True then
           begin
             Try
               ZQueryPrincipal.Close;

               ZQueryPrincipal.SQL.Clear;
               ZQueryPrincipal.SQL.Add('USE '+ NomeBaseSQL + ';');
               ZQueryPrincipal.ExecSQL;

               StatusBar1.Panels[2].Text := ' Status: Abrindo tabela[' + NomeTableSQL + '] - Database[' + NomeBaseSQL + '], aguarde...';
               StatusBar1.Panels[1].Text := ' Apurando quantidade...';
               StatusBar1.Refresh;

               DBGridPrincipal.DataSource  := DataSourcePrincipal;
               DataSourcePrincipal.DataSet := ZQueryPrincipal;

               ZQueryPrincipal.SQL.Clear;

               { *** Guarda nome da tabela e diretório para gera estrutura *** }
               if Application.MessageBox(' Deseja index a tabela ?','Confirmação',MB_ICONWARNING+ MB_YESNO+MB_DEFBUTTON2)=idyes then
                  begin
                    InputQuery('Visualiza DBF','informe o campo index da tabela.',Pergunta);
                    ZQueryPrincipal.SQL.Add('SELECT * FROM ' + NomeTableSQL + ' ORDER BY ' + Pergunta + ';');
                    ZTable1.IndexFieldNames := Pergunta;
                  end
               else
                 ZQueryPrincipal.SQL.Add('SELECT * FROM ' + NomeTableSQL + ';');

               ZQueryPrincipal.Open;

               Memo1.ReadOnly   := True;
               Memo1.Lines.Add(' ------------------------------------------------------------');
               Memo1.Lines.Add(' Nome da Base......: ' + NomeBaseSQL);
               Memo1.Lines.Add(' Nome da tabela....: ' + NomeTableSQL);
               Memo1.Lines.Add(' Total de campos...: ' + IntToStr(ZQueryPrincipal.FieldCount));
               Memo1.Lines.Add(' Total de Registro.: ' + IntToStr(ZQueryPrincipal.RecordCount));
               Memo1.Lines.Add(' ------------------------------------------------------------');
               Memo1.Lines.Add(Bibliotecas.AjustaStr(' CAMPO',20)+ Bibliotecas.AjustaStr('   TAMANHO DO CAMPO ',20)+ '   ' +Bibliotecas.AjustaStr('   TIPO DO CAMPO ',20));
               Memo1.Lines.Add(' ------------------------------------------------------------');

               { *** apurando Dados da Tabela e guarda na variavel *** }
               For I := 0 to ZQueryPrincipal.FieldCount-1 do
                 begin
                   TamCampos[I] := ZQueryPrincipal.FieldDefs[I].Size;
                   WCampos[I]   := ZQueryPrincipal.FieldDefs[I].Name;
                   TipoCampos[I]:= ZQueryPrincipal.FieldDefs[I].FieldClass.ClassName;
                 end;

               For I := 0 to ZQueryPrincipal.FieldCount-1 do
                 Memo1.Lines.Add(' ' + Bibliotecas.AjustaStr(WCampos[I],20) + '        ' + Bibliotecas.AjustaStr(IntToStr(TamCampos[I]),15) + '   ' + Bibliotecas.AjustaStr(ZQueryPrincipal.FieldDefs[I].FieldClass.ClassName,20));

               Form1.Caption := '  Visualiza Tabela - ' +   NomeTableSQL + ' - MySQL';

               AtivaBotaoAux(ZQueryPrincipal.RecordCount,'SQL');

               Label8.Caption := '   Registro ' + IntToStr(DBGridPrincipal.DataSource.DataSet.RecNo) + ' de ' + IntToStr(DBGridPrincipal.DataSource.DataSet.RecordCount);
               Label8.Refresh;

               StatusBar1.Panels[1].Text := ' Total de registro(s): ' + IntToStr(ZQueryPrincipal.RecordCount);
               StatusBar1.Refresh;

               DBGridPrincipal.Enabled := True;
             Except
               begin
                 StatusBar1.Panels[1].Text := ' Total de registro(s): 0';
                 StatusBar1.Refresh;

                 MessageDlg('Não foi possível carregar a tabela favor verificar !',mtError,[mbOK], 0);
                 FreeAndNil(ZQueryPrincipal);
                 DBGridPrincipal.Enabled := False;
               end;

             end;
           end
        else
          MessageDlg('Dados incorretos favor verificar !',mtError,[mbOK], 0);
    end;
end;

Function TForm1.AtivaBotaoAux(quantidade:Integer;tipo:string):string;
Begin
  If Quantidade > 0 then
    begin
      AbrirEstrutura.Enabled  := False;
      AlimentarTabela.Enabled := False;
      CriaTabela.Enabled      := False;
      SalvarEstrutura.Enabled := False;
      AbrirTabela.Enabled     := False;
      Configuracoe.Enabled    := False;

      if Tipo = 'SQL' then
         begin
          MySQLparaDBF.Enabled  := True;
           DBFparaMySQL.Enabled := False;
          TerminalSQL.Enabled   := True;
         end
      else
        begin
          MySQLparaDBF.Enabled := False;
          DBFparaMySQL.Enabled := True;
          TerminalSQL.Enabled  := False;
        end;

      SalvaHTML.Enabled      := True;
      GeraQtd.Enabled        := True;
      GeraTXT.Enabled        := True;
      EstruTabela.Enabled    := True;
      FecharTabela1.Enabled  := True;
      Exportacao.Enabled     := True;
      EditarTabela.Enabled   := True;
      LimparTabela.Enabled   := True;
      ExcluirReg.Enabled     := True;
      ExcluirXateX.Enabled   := True;
      Classtabela.Enabled    := True;
    AtualizarTabela1.Enabled := True;
      Pesquisar.Enabled      := True;
     Botoesmovimenta.Enabled := True;
       Campostabela.Enabled  := True;
       Movimentacao.Enabled  := True;
     Botoesmovimenta.Checked := True;
     GroupBox5.Visible       := True;
    end
  else
    begin
      AbrirEstrutura.Enabled  := False;
      AlimentarTabela.Enabled := False;
      CriaTabela.Enabled      := False;
      SalvarEstrutura.Enabled := False;
      GeraQtd.Enabled         := False;
      GeraTXT.Enabled         := False;
      AbrirTabela.Enabled     := False;
      Configuracoe.Enabled    := False;
      Exportacao.Enabled      := False;
      EditarTabela.Enabled    := False;
      LimparTabela.Enabled    := False;
      ExcluirReg.Enabled      := False;
      ExcluirXateX.Enabled    := False;
      Classtabela.Enabled     := False;
     Botoesmovimenta.Enabled  := False;
       Movimentacao.Enabled   := False;
      MySQLparaDBF.Enabled    := False;
      DBFparaMySQL.Enabled    := False;
      Pesquisar.Enabled       := False;
      SalvaHTML.Enabled       := True;
      EstruTabela.Enabled     := True;
      FecharTabela1.Enabled   := True;
    AtualizarTabela1.Enabled  := True;
      Campostabela.Enabled    := True;

      if Tipo = 'SQL' then
         TerminalSQL.Enabled := True
      else
        TerminalSQL.Enabled  := False;
    end;

  PopFecharTabela.Enabled := True;
  PopAbreTabela.Enabled   := False;
  Label8.Visible          := True;
end;
procedure TForm1.Edit1Change(Sender: TObject);
begin
  if Edit1.Text <> '' then
     btnPesquisa.Enabled  := True
  else
    btnPesquisa.Enabled  := False;
end;

procedure TForm1.deletaRegistro();
begin
  if Application.MessageBox(' Deseja realmente excluir o registro da tabela?','Confirmação',MB_ICONWARNING+ MB_YESNO+MB_DEFBUTTON2)=idyes then
     begin
       DBGridPrincipal.DataSource.DataSet.Delete;

       StatusBar1.Panels[1].Text := ' Total de registro(s): ' + IntToStr(DBGridPrincipal.DataSource.DataSet.RecordCount);
       StatusBar1.Refresh;

       Label8.Caption := '   Registro ' + IntToStr(DBGridPrincipal.DataSource.DataSet.RecNo) + ' de ' + IntToStr(DBGridPrincipal.DataSource.DataSet.RecordCount);
       Label8.Refresh;
     end;
end;

procedure TForm1.ArquivosDeParem();
begin
  if not FileExists(ExtractFilePath(APPLICATION.ExeName) + 'sisconf.ini') then
     MessageDlg('Está faltando arquivo de parâmetros, favor verificar!', mtWarning,[mbOk], 0)
  else
    begin
      AssignFile(Entrada,ExtractFilePath(APPLICATION.ExeName) + 'sisconf.ini');
      Reset(Entrada);

      While not Eof(Entrada) do
        begin
          Readln(Entrada,Linha);
          if Copy(Linha,1,5) = 'CONF1' then
             Etapa1 := Copy(Linha,7,2);
          if Copy(Linha,1,5) = 'CONF2' then
             Etapa2 := Copy(Linha,7,2);
          if Copy(Linha,1,5) = 'CONF3' then
             Etapa3 := Copy(Linha,7,2);
          if Copy(Linha,1,5) = 'CONF4' then
             Etapa4 := Copy(Linha,7,2);
          if Copy(Linha,1,5) = 'CONF5' then
             Etapa5 := Copy(Linha,7,2);
          if Copy(Linha,1,5) = 'CONF6' then
             Etapa6 := Copy(Linha,7,2);
          if Copy(Linha,1,5) = 'CONFV' then
             EtapaV := Copy(Linha,7,2);
          if Copy(Linha,1,5) = 'CONFB' then
             EtapaB := Copy(Linha,7,3);
          if Copy(Linha,1,5) = 'CONFN' then
             EtapaN := Copy(Linha,7,7);

          { *** Parâmetros de conexão MySQL *** }
          if Copy(Linha,1,7) = 'CONEX=1' then
             LocalSQL := Copy(Linha,8,Length(Linha));

          if Copy(Linha,1,7) = 'CONEX=2' then
             UserSQL := Copy(Linha,8,Length(Linha));

          if Copy(Linha,1,7) = 'CONEX=3' then
             PassSQL := Copy(Linha,8,Length(Linha));

          if Copy(Linha,1,7) = 'CONEX=4' then
             DataBaseSQL := Copy(Linha,8,Length(Linha));

          if Copy(Linha,1,7) = 'CONEX=5' then
             PortSQL := Copy(Linha,8,Length(Linha));

          if UpperCase(Copy(Linha,1,11)) = 'CONEX=6TRUE' then
             bConectaSQL := True
          else
            bConectaSQL := False;
        end;

      Try
        if not Assigned(zConectaSQL) then
           begin
             zConectaSQL := TZConnection.create(Application);
             With zConectaSQL do
               begin
                 HostName := LocalSQL;
                 Database := DataBaseSQL;
                 User     := UserSQL;
                 Password := PassSQL;
                 Protocol := 'mysql-5';
                 Port     :=  StrToInt(PortSQL);
               end;
             zConectaSQL.Connected := bConectaSQL;
           end;
      Except
        begin
          MessageDlg('Não foi possível conectar com o MySQL o programa será finalizado!',mtError,[mbOK], 0);
          Application.Terminate;
        end;
      end;

      CloseFile(Entrada);

      { *** Ativa opção do MySQL em configuração *** }
      ErroSql := True;

      StatusBar1.Panels[0].Text := ' Formato da tabela: ' + EtapaB;

      Label6.Caption := '  Total de Linhas: ' + IntToStr(RichEdit1.Lines.Count);
      Label6.Refresh;
    end;
end;

procedure TForm1.btnPesquisaClick(Sender: TObject);
begin
  { *** Iniciando pesquisa *** }
  StatusBar1.Panels[2].Text := ' Status: Pesquisando, aguarde...';
  StatusBar1.Refresh;

  if EtapaB = 'DBF' then
     begin
       if Etapa2 = 'A2' then
         begin
           TabelaPrincipal.Filter := ExtractFileName(Combobox1.Items[ComboBox1.ItemIndex]) + ' = ' + QuotedStr(UpperCase(Edit1.Text) + '*') + ' or ' +
                                     ExtractFileName(Combobox1.Items[ComboBox1.ItemIndex]) + ' = ' + QuotedStr(LowerCase(Edit1.Text) + '*') + ' or ' +
                                     ExtractFileName(Combobox1.Items[ComboBox1.ItemIndex]) + ' = ' + QuotedStr(trim(Bibliotecas.CaixaMista(Edit1.Text)) + '*');

           TabelaPrincipal.Filtered := True;
           Form1.StatusBar1.Panels[2].Text := ' Status: Inativo';
           Form1.StatusBar1.Refresh;
         end
       else
         if Etapa2 = 'B2' then
           begin
             RichEdit1.Clear;
             AbaArquivo.Checked    := True;
             TabSheet2.TabVisible  := True;
             PageControl1.TabIndex := 2;

             if not Assigned(TabelaAux) then
                TabelaAux := TTable.Create(Application);

             TabelaAux.DatabaseName := TabelaPrincipal.DatabaseName;
             TabelaAux.TableName    := TabelaPrincipal.TableName;
             TabelaAux.IndexName    := TabelaPrincipal.IndexName ;
             TabelaAux.Open;

             while not TabelaAux.Eof do
               begin
                 Application.ProcessMessages;
                 I := 1;

                 Recebe1 := UpperCase(Copy(Edit1.Text,I,Length(Edit1.Text)));
                 Recebe2 := UpperCase(Copy(TabelaAux.FieldByName(ExtractFileName(Combobox1.Items[ComboBox1.ItemIndex])).AsString,Y,Length(Edit1.Text)));

                 if Recebe1 = Recebe2 then
                   begin
                     RichEdit1.Lines.Add(TabelaAux.FieldByName(ExtractFileName(Combobox1.Items[ComboBox1.ItemIndex])).AsString);
                     I := I + 1
                   end;
                 TabelaAux.Next;
               end;

             FreeAndNil(TabelaAux);
             MessageDlg(' Fim do processo!', mtInformation,[mbOk], 0);
           end
         else
           begin
             TabelaPrincipal.Filter := ExtractFileName(Combobox1.Items[ComboBox1.ItemIndex]) + ' = ' + QuotedStr(UpperCase(Edit1.Text) + '*') + ' or ' +
                                       ExtractFileName(Combobox1.Items[ComboBox1.ItemIndex]) + ' = ' + QuotedStr(LowerCase(Edit1.Text) + '*') + ' or ' +
                                       ExtractFileName(Combobox1.Items[ComboBox1.ItemIndex]) + ' = ' + QuotedStr(trim(Bibliotecas.CaixaMista(Edit1.Text)) + '*');
             TabelaPrincipal.Filtered := True;

             Form1.StatusBar1.Panels[2].Text := ' Status: Inativo';
             Form1.StatusBar1.Refresh;

             RichEdit1.Clear;

             if not Assigned(TabelaAux) then
                TabelaAux := TTable.Create(Application);

             DataSourcePrincipal.DataSet := TabelaAux;

             TabelaAux.DatabaseName := TabelaPrincipal.DatabaseName;
             TabelaAux.TableName    := TabelaPrincipal.TableName;
             TabelaAux.IndexName    := TabelaPrincipal.IndexName;
             TabelaAux.Open;

             while not TabelaAux.Eof do
               begin
                 Application.ProcessMessages;
                 I := 1;

                 Recebe1 := UpperCase(Copy(Edit1.Text,I,Length(Edit1.Text)));
                 Recebe2 := UpperCase(Copy(TabelaAux.FieldByName(ExtractFileName(Combobox1.Items[ComboBox1.ItemIndex])).AsString,Y,Length(Edit1.Text)));

                 if Recebe1 = Recebe2 then
                   begin
                     RichEdit1.Lines.Add(TabelaAux.FieldByName(ExtractFileName(Combobox1.Items[ComboBox1.ItemIndex])).AsString);
                     I := I + 1
                   end;
                 TabelaAux.Next;
               end;

             FreeAndNil(TabelaAux);
             MessageDlg(' Fim do processo!', mtInformation,[mbOk], 0);
           end;
     end;

  if EtapaB = 'SQL' then
     begin
       if Etapa2 = 'A2' then
         begin
           DataSource1.DataSet := ZQueryPrincipal;

           ZQueryPrincipal.SQL.Clear;
           ZQueryPrincipal.SQL.Add('SELECT * FROM ' + NomeTableSQL + ' WHERE ' + ExtractFileName(Combobox1.Items[ComboBox1.ItemIndex]) + ' LIKE ''' + Edit1.Text + '%'';');
           ZQueryPrincipal.Open;

           StatusBar1.Panels[2].Text := ' Status: Inativo';
           StatusBar1.Refresh;
         end
       else
         if Etapa2 = 'B2' then
           begin
             RichEdit1.Clear;
             ZTable2.TableName       := ZTable1.TableName;
             ZTable2.IndexFieldNames := ZTable1.IndexFieldNames ;
             ZTable2.Open;
             ZTable2.Active:= True;

             while not ZTable2.Eof do
               begin
                 I := 1;
                 Recebe1 := Copy(Edit1.Text,I,Length(Edit1.Text));
                 Recebe2 := Copy(ZTable2.FieldByName(ExtractFileName(Combobox1.Items[ComboBox1.ItemIndex])).AsString,Y,Length(Edit1.Text));

                 If Recebe1 = Recebe2 then
                    begin
                      RichEdit1.Lines.Add(ZTable2.FieldByName(ExtractFileName(Combobox1.Items[ComboBox1.ItemIndex])).AsString);
                      I := I + 1
                    end;

                 ZTable2.Next;
               end;

             ZTable2.First;
             MessageDlg(' Fim do processo!',mtInformation,[mbOk], 0);
           end
         else
           begin
             Form1.StatusBar1.Panels[2].Text := ' Status: Inativo';
             Form1.StatusBar1.Refresh;

             RichEdit1.Clear;
             ZTable2.TableName          := ZTable1.TableName;
             ZTable2.IndexFieldNames    := ZTable1.IndexFieldNames ;

             ZTable2.Open;
             ZTable2.Active:= True;

             while not ZTable2.Eof do
               begin
                 I := 1;
                 Recebe1 := Copy(Edit1.Text,I,Length(Edit1.Text));
                 Recebe2 := Copy(ZTable2.FieldByName(ExtractFileName(Combobox1.Items[ComboBox1.ItemIndex])).AsString,Y,Length(Edit1.Text));
                 If Recebe1 = Recebe2 then
                   begin
                     RichEdit1.Lines.Add(ZTable2.FieldByName(ExtractFileName(Combobox1.Items[ComboBox1.ItemIndex])).AsString);
                     I := I + 1
                   end;
                 ZTable2.Next;
               end;
             DataSource1.DataSet := ZQueryPrincipal;

             ZQueryPrincipal.SQL.Clear;
             ZQueryPrincipal.SQL.Add('SELECT * FROM ' + NomeTableSQL + ' WHERE ' + ExtractFileName(Combobox1.Items[ComboBox1.ItemIndex]) + ' LIKE ''' + Edit1.Text + '%'';');
             ZQueryPrincipal.Open;

             ZTable2.First;

             MessageDlg(' Fim do processo!', mtInformation,[mbOk], 0);
           end;
     end;
end;

Function TForm1.VerificaBaseeTabela(sNomeBase,sNomeTabela:String):Boolean;
begin
  if not Assigned(ZQueryAux) then
     begin
       ZQueryAux := TZQuery.Create(Application);
       ZQueryAux.Connection := zConectaSQL;
     end;

  { *** Verifica se base de dados e tabela no MySQL existem *** }
  ZQueryAux.SQL.Clear;
  ZQueryAux.SQL.Text := 'USE information_schema;';
  ZQueryAux.ExecSQL;

  ZQueryAux.SQL.Clear;
  ZQueryAux.SQL.Text := 'SELECT * FROM schemata WHERE schema_name="' + sNomeBase + '";';
  ZQueryAux.Open;

  if ZQueryAux.RecordCount <= 0 then
     Result := False
  else
    begin
      ZQueryAux.Close;

      ZQueryAux.SQL.Clear;
      ZQueryAux.SQL.Add('USE information_schema;');
      ZQueryAux.ExecSQL;

      ZQueryAux.SQL.Clear;
      ZQueryAux.SQL.Add('SELECT * FROM tables WHERE table_name="' + sNomeTabela + '";');
      ZQueryAux.Open;

      if ZQueryAux.RecordCount <= 0 then
         Result := False
      else
         Result := True;
    end;

  FreeAndNil(ZQueryAux);
end;

Function TForm1.VerificaTabelaSQL(sNomeTabela:String):Boolean;
begin
  if not Assigned(ZQueryAux) then
     begin
       ZQueryAux := TZQuery.Create(Application);
       ZQueryAux.Connection := zConectaSQL;
     end;

  ZQueryAux.SQL.Clear;
  ZQueryAux.SQL.Add('USE information_schema;');
  ZQueryAux.ExecSQL;

  ZQueryAux.SQL.Clear;
  ZQueryAux.SQL.Add('SELECT * FROM tables WHERE table_name="' + sNomeTabela + '";');
  ZQueryAux.Open;

  if ZQueryAux.RecordCount <= 0 then
     Result := False
  else
    Result := True;

  FreeAndNil(ZQueryAux);
end;

Function TForm1.VerificaBaseSQL(sNomeBase:String):Boolean;
begin
  if not Assigned(ZQueryAux) then
     begin
       ZQueryAux := TZQuery.Create(Application);
       ZQueryAux.Connection := zConectaSQL;
     end;

  { *** Verifica se base de dados e tabela no MySQL existem *** }
  ZQueryAux.SQL.Clear;
  ZQueryAux.SQL.Text := 'USE information_schema;';
  ZQueryAux.ExecSQL;

  ZQueryAux.SQL.Clear;
  ZQueryAux.SQL.Text := 'SELECT * FROM schemata WHERE schema_name="' + sNomeBase + '";';
  ZQueryAux.Open;

  if ZQueryAux.RecordCount <= 0 then
     Result := False
  else
    Result := True;

  FreeAndNil(ZQueryAux);
end;


end.
