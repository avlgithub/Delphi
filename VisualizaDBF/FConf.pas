unit FConf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls;

type
  TFormConf = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox2: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    GroupBox3: TGroupBox;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    GroupBox4: TGroupBox;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    CheckBox2: TCheckBox;
    GroupBox5: TGroupBox;
    RadioButton8: TRadioButton;
    RadioButton9: TRadioButton;
    GroupBox6: TGroupBox;
    RadioButton10: TRadioButton;
    RadioButton11: TRadioButton;
    Button1: TButton;
    Button2: TButton;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    GroupBox7: TGroupBox;
    SpeedButton1: TSpeedButton;
    GroupBox8: TGroupBox;
    RadioButton12: TRadioButton;
    RadioButton13: TRadioButton;
    GroupBox9: TGroupBox;
    Panel1: TPanel;
    Label4: TLabel;
    Edit4: TEdit;
    Edit3: TEdit;
    Label3: TLabel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Edit5: TEdit;
    SpeedButton2: TSpeedButton;
    CheckBox3: TCheckBox;
    Label7: TLabel;
    Memo1: TMemo;
    procedure SpeedButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
    procedure RadioButton6Click(Sender: TObject);
    procedure RadioButton7Click(Sender: TObject);
    procedure RadioButton8Click(Sender: TObject);
    procedure RadioButton9Click(Sender: TObject);
    procedure RadioButton10Click(Sender: TObject);
    procedure RadioButton11Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure RadioButton12Click(Sender: TObject);
    procedure RadioButton13Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
     MEtapa1,MEtapa2,MEtapa3,MEtapa4,MEtapa5,MEtapa6,MEtapaV,MEtapaB,MEtapaN:String;
  end;

var
  FormConf: TFormConf;
  Cont:Integer;
  Saida:TextFile;
  PerguntaSQL :string;

  implementation

  uses VISUALIZA, FRel, ZConnection;

{$R *.dfm}

procedure TFormConf.SpeedButton1Click(Sender: TObject);
begin
  if ((Form1.Etapa1 <> MEtapa1) or (Form1.Etapa2 <> MEtapa2) or
      (Form1.Etapa3 <> MEtapa3) or (Form1.Etapa4 <> MEtapa4) or
      (Form1.Etapa5 <> MEtapa5) or (Form1.Etapa6 <> MEtapa6) or
      (Form1.EtapaV <> MEtapaV) or (Form1.EtapaB <> MEtapaB) or
      (Form1.EtapaN <> MEtapaN)) then
      Pergunta := UpperCase(InputBox(' Visualiza Tabela','                 ********** ATENÇÃO **********' + #13 +
                                     '              As configurações foram alteradas...' + #13  +
                                     '                         Deseja salva-las ?'+ #13+ #13 +
                                     '                    Informe [S]Sim ou [N]Não.','N'));

  if ((Form1.LocalSQL    <> Edit1.Text) or (Form1.PortSQL <> Edit2.Text) or
      (Form1.UserSQL     <> Edit3.Text) or (Form1.PassSQL <> Edit4.Text) or
      (Form1.DataBaseSQL <> Edit5.Text)) then
      PerguntaSQL := UpperCase(InputBox(' Visualiza Tabela','                 ********** ATENÇÃO **********' + #13 +
                                     '              As configurações foram alteradas...' + #13  +
                                     '                         Deseja salva-las ?'+ #13+ #13 +
                                     '                    Informe [S]Sim ou [N]Não.','N'));

  if ((Pergunta = 'S') or (PerguntaSQL = 'S'))then
     begin
       { *** Altera arquivo de configuração *** }
       AssignFile(Saida,ExtractFilePath(APPLICATION.ExeName) + 'sisconf.ini');
       Rewrite(Saida);
       Writeln(Saida,'[VISUALIZA]');
       Writeln(Saida,'CONF1=' + MEtapa1);
       Writeln(Saida,'CONF2=' + MEtapa2);
       Writeln(Saida,'CONF3=' + MEtapa3);
       Writeln(Saida,'CONF4=' + MEtapa4);
       Writeln(Saida,'CONF5=' + MEtapa5);
       Writeln(Saida,'CONF6=' + MEtapa6);
       Writeln(Saida,'CONFV=' + MEtapaV);
       Writeln(Saida,'CONFB=' + MEtapaB);
       Writeln(Saida,'CONFN=' + MEtapaN);

       if RadioButton12.Checked = True then
          begin
            Writeln(Saida,'CONEX=1localhost'); // Server host
            Writeln(Saida,'CONEX=2root'     ); // Usuário
            Writeln(Saida,'CONEX=3'         ); // Senha
            Writeln(Saida,'CONEX=4mysql'    ); // Database
            Writeln(Saida,'CONEX=50'        ); // Porta
            Writeln(Saida,'CONEX=6False'    );
            zConectaSQL.Connected := False;
          end
       else
         begin
           Writeln(Saida,'CONEX=1' + Edit1.Text); // Server host
           Writeln(Saida,'CONEX=2' + Edit3.Text); // Usuário
           Writeln(Saida,'CONEX=3' + Edit4.Text); // Senha
           Writeln(Saida,'CONEX=4' + Edit5.Text); // Database
           Writeln(Saida,'CONEX=5' + Edit2.Text); // Porta
           Writeln(Saida,'CONEX=6True'         );
           zConectaSQL.Connected := True;
         end;

       CloseFile(Saida);

       Form1.StatusBar1.Panels[0].Text := ' Formato da tabela: ' + MEtapaB;

       { *** Atualiza var do form1 *** }
       Form1.Etapa1 := MEtapa1;
       Form1.Etapa2 := MEtapa2;
       Form1.Etapa3 := MEtapa3;
       Form1.Etapa4 := MEtapa4;
       Form1.Etapa5 := MEtapa5;
       Form1.Etapa6 := MEtapa6;
       Form1.EtapaV := MEtapaV;
       Form1.EtapaB := MEtapaB;
       Form1.EtapaN := MEtapaN;
     end;
  Close;
end;

procedure TFormConf.RadioButton2Click(Sender: TObject);
begin
  if RadioButton2.Checked then
     begin
       RadioButton2.Color := clMoneyGreen;
       RadioButton1.Color := clBtnFace;
       MEtapa1       := 'A1';
     end;
end;

procedure TFormConf.RadioButton1Click(Sender: TObject);
begin
  if RadioButton1.Checked then
     begin
       RadioButton1.Color := clMoneyGreen;
       RadioButton2.Color := clBtnFace;
       MEtapa1       := 'B1';
     end;
end;

procedure TFormConf.RadioButton3Click(Sender: TObject);
begin
  if RadioButton3.Checked then
     begin
       RadioButton3.Color := clMoneyGreen;
       RadioButton4.Color := clBtnFace;
       RadioButton5.Color := clBtnFace;
       MEtapa2       := 'A2';
     end;
end;

procedure TFormConf.RadioButton4Click(Sender: TObject);
begin
  if RadioButton4.Checked then
     begin
       RadioButton4.Color := clMoneyGreen;
       RadioButton3.Color := clBtnFace;
       RadioButton5.Color := clBtnFace;
       MEtapa2       := 'B2';
     end;
end;

procedure TFormConf.RadioButton5Click(Sender: TObject);
begin
  if RadioButton5.Checked then
     begin
       RadioButton5.Color := clMoneyGreen;
       RadioButton4.Color := clBtnFace;
       RadioButton3.Color := clBtnFace;
       MEtapa2       := 'C2';
     end;
end;

procedure TFormConf.RadioButton6Click(Sender: TObject);
begin
  if RadioButton6.Checked then
     begin
       RadioButton6.Color := clMoneyGreen;
       RadioButton7.Color := clBtnFace;
       MEtapa3       := 'A3';
     end;
end;

procedure TFormConf.RadioButton7Click(Sender: TObject);
begin
  if RadioButton7.Checked then
     begin
       RadioButton7.Color := clMoneyGreen;
       RadioButton6.Color := clBtnFace;
       MEtapa3       := 'B3';
     end;
end;

procedure TFormConf.RadioButton8Click(Sender: TObject);
begin
  { ***  Definição do nome das tabelas  *** }
  if RadioButton8.Checked then
     begin
       RadioButton8.Color := clMoneyGreen;
       RadioButton9.Color := clBtnFace;
       MEtapa4            := 'A4';
       MEtapaN            := 'Padrao';
     end;
end;

procedure TFormConf.RadioButton9Click(Sender: TObject);
begin
  { ***  Definição do nome das tabelas  *** }
  if RadioButton9.Checked then
     begin
       RadioButton9.Color := clMoneyGreen;
       RadioButton8.Color := clBtnFace;
       MEtapa4            := 'B4';
       MEtapaN            := 'Usuario';
     end;
end;

procedure TFormConf.RadioButton10Click(Sender: TObject);
begin
  if RadioButton10.Checked then
     begin
       RadioButton10.Color := clMoneyGreen;
       RadioButton11.Color := clBtnFace;
       Button1.Enabled     := True;
       Button2.Enabled     := False;
       MEtapa5             := 'A5';
     end;
end;

procedure TFormConf.RadioButton11Click(Sender: TObject);
begin
  if RadioButton11.Checked then
     begin
       RadioButton11.Color := clMoneyGreen;
       RadioButton10.Color := clBtnFace;
       Button2.Enabled     := True;
       Button1.Enabled     := False;
       MEtapa5             := 'B5';
     end;
end;

procedure TFormConf.FormCreate(Sender: TObject);
begin
  { *** VERIFICANDO CONFIGURAÇÕES SALVAS ***}

  //  Como abrir os arquivo de estrutura (TXT)
  if Form1.Etapa1 = 'A1' then
     RadioButton2.Checked := True
  else
     RadioButton1.Checked := True;

  //  Resultado da pesquisa
  if Form1.Etapa2 = 'A2' then
     RadioButton3.Checked := True
  else
    if Form1.Etapa2 = 'B2' then
       RadioButton4.Checked := True
    else
       RadioButton5.Checked := True;

  //   Definindo arquivo de saida
  if Form1.Etapa3 = 'A3' then
     RadioButton6.Checked := True
  else
    RadioButton7.Checked := True;

  if Form1.Etapa4 = 'A4' then
     RadioButton8.Checked := True
  else
     RadioButton9.Checked := True;


  if ((FileExists(ExtractFilePath(APPLICATION.ExeName) + 'modpad.ini') = False) or
      (FileExists(ExtractFilePath(APPLICATION.ExeName) + 'modalter.ini') = False)) then
     begin
      if Form1.Etapa5 = 'A5' then
        RadioButton10.Checked := True
      else
        RadioButton11.Checked := True;
        
      Button1.Enabled := False;
      Button2.Enabled := False;
      RadioButton10.Enabled := False;
      RadioButton11.Enabled := False;
     end
  else
    //  Relatório de quantidade
    if Form1.Etapa5 = 'A5' then
      RadioButton10.Checked := True
    else
      RadioButton11.Checked := True;

  //  Pergunta INDEX
  if Form1.Etapa6 = 'A6' then
     CheckBox1.Checked := True
  else
     CheckBox1.Checked := false;

  //  Pergunta Pergunta de geração de arquivo de conteudo da tabela
  if Form1.EtapaV = 'V' then
     CheckBox2.Checked := True
  else
     CheckBox2.Checked := false;

  //  Pergunta Pergunta de geração de arquivo de conteudo da tabela
  if Form1.EtapaB = 'DBF' then
     begin
       if Form1.ErroSql = False then
          begin
            RadioButton12.Checked := True;
            RadioButton13.Enabled := False;
            Label7.Visible        := True;

            Label1.Enabled        := False;
            Label2.Enabled        := False;
            Label3.Enabled        := False;
            Label4.Enabled        := False;
            Label5.Enabled        := False;
            Label6.Enabled        := False;

            Edit1.Enabled         := False;
            Edit2.Enabled         := False;
            Edit3.Enabled         := False;
            Edit4.Enabled         := False;
            Edit5.Enabled         := False;
            CheckBox3.Enabled     := False;
          end
       else
        begin
          RadioButton12.Checked := True;
          RadioButton13.Enabled := True;
          Label7.Visible        := True;

          Label1.Enabled        := False;
          Label2.Enabled        := False;
          Label3.Enabled        := False;
          Label4.Enabled        := False;
          Label5.Enabled        := False;
          Label6.Enabled        := False;

          Edit1.Enabled         := False;
          Edit2.Enabled         := False;
          Edit3.Enabled         := False;
          Edit4.Enabled         := False;
          Edit5.Enabled         := False;
          CheckBox3.Enabled     := False;

{          Label7.Visible        := False;
          Label1.Enabled        := True;
          Label2.Enabled        := True;
          Label3.Enabled        := True;
          Label4.Enabled        := True;
          Label5.Enabled        := True;
          Label6.Enabled        := True;

          Edit1.Enabled         := True;
          Edit2.Enabled         := True;
          Edit3.Enabled         := True;
          Edit4.Enabled         := True;
          Edit5.Enabled         := True;
          CheckBox3.Enabled     := True;  }
        end;
     end
  else
    begin
      if Form1.ErroSql = False then
         begin
           RadioButton12.Checked := True;
           RadioButton13.Enabled := False;
           Label7.Visible        := True;

           Label1.Enabled        := False;
           Label2.Enabled        := False;
           Label3.Enabled        := False;
           Label4.Enabled        := False;
           Label5.Enabled        := False;
           Label6.Enabled        := False;

           Edit1.Enabled         := False;
           Edit2.Enabled         := False;
           Edit3.Enabled         := False;
           Edit4.Enabled         := False;
           Edit5.Enabled         := False;
           CheckBox3.Enabled     := False;
         end
      else
        begin
          Label7.Visible        := False;
          RadioButton13.Checked := True;

          Label1.Enabled        := True;
          Label2.Enabled        := True;
          Label3.Enabled        := True;
          Label4.Enabled        := True;
          Label5.Enabled        := True;
          Label6.Enabled        := True;

          Edit1.Enabled         := True;
          Edit2.Enabled         := True;
          Edit3.Enabled         := True;
          Edit4.Enabled         := True;
          Edit5.Enabled         := True;
          CheckBox3.Enabled     := True;          
        end;
    end;


  if zConectaSQL.HostName <> '' then
    Edit1.Text := zConectaSQL.HostName
  else
    Edit1.Text := 'localhost';

  if zConectaSQL.port <> 0 then
     Edit2.Text := IntToStr(zConectaSQL.port)
  else
     Edit2.Text := '3306';

  if zConectaSQL.user <> '' then
    Edit3.Text := zConectaSQL.user
  else
    Edit3.Text := 'root';

  if zConectaSQL.Password <> '' then
     Edit4.Text := zConectaSQL.Password
  else
    Edit4.Text := '';

  if zConectaSQL.Database <> '' then
     Edit5.Text := zConectaSQL.Database
  else
     Edit5.Text := 'mysql';

  MEtapa1 := Form1.Etapa1;
  MEtapa2 := Form1.Etapa2;
  MEtapa3 := Form1.Etapa3;
  MEtapa4 := Form1.Etapa4;
  MEtapa5 := Form1.Etapa5;
  MEtapa6 := Form1.Etapa6;
  MEtapaV := Form1.EtapaV;
  MEtapaB := Form1.EtapaB;
  MEtapaN := Form1.EtapaN;
end;

procedure TFormConf.CheckBox1Click(Sender: TObject);
begin
  If CheckBox1.Checked = True then
     begin
       MEtapa6 := 'A6';
       CheckBox1.Color := clMoneyGreen;
     end
  else
    begin
      MEtapa6 := 'B6';
      CheckBox1.Color := clBtnFace;
    end;
end;

procedure TFormConf.Button1Click(Sender: TObject);
begin
  { *** Criando e limpando da memória o frm*** }
  FormRel := TFormRel.create(application);
  try
    FormRel.ShowModal
  finally
    FormRel.Release;
    FormRel := nil;
  end;
end;

procedure TFormConf.Button2Click(Sender: TObject);
begin
  FormRel := TFormRel.create(application);
  try
    FormRel.ShowModal
  finally
    FormRel.Release;
    FormRel := nil;
  end;
end;

procedure TFormConf.CheckBox2Click(Sender: TObject);
begin
  If CheckBox2.Checked = True then
     begin
       MEtapaV := 'V';
       CheckBox2.Color := clMoneyGreen;
     end
  else
    begin
      MEtapaV := 'F';
      CheckBox2.Color := clBtnFace;
    end;
end;
procedure TFormConf.RadioButton12Click(Sender: TObject);
begin
  { *** Define criaçao do banco com DBF *** }
  if RadioButton12.Checked = True then
     begin
       zConectaSQL.Connected := False;
       Memo1.Enabled         := False;
       RadioButton12.Color   := clMoneyGreen;
       RadioButton13.Color   := clBtnFace;
       MEtapaB               := 'DBF';
       Label1.Enabled        := False;
       Label2.Enabled        := False;
       Label3.Enabled        := False;
       Label4.Enabled        := False;
       Label5.Enabled        := False;
       Label6.Enabled        := False;

       Edit1.Enabled         := False;
       Edit2.Enabled         := False;
       Edit3.Enabled         := False;
       Edit4.Enabled         := False;
       Edit5.Enabled         := False;
       CheckBox3.Enabled     := False;
    SpeedButton2.Enabled     := False;
     end
end;

procedure TFormConf.RadioButton13Click(Sender: TObject);
begin
  { *** Define criaçao do banco com DBF *** }
  if RadioButton13.Checked = True then
     begin
       RadioButton12.Color   := clBtnFace;
       RadioButton13.Color   := clMoneyGreen;
       MEtapaB               := 'SQL';
       zConectaSQL.Connected := True;
       Memo1.Enabled         := True;

       Label1.Enabled        := True;
       Label2.Enabled        := True;
       Label3.Enabled        := True;
       Label4.Enabled        := True;
       Label5.Enabled        := True;
       Label6.Enabled        := True;

       Edit1.Enabled         := True;
       Edit2.Enabled         := True;
       Edit3.Enabled         := True;
       Edit4.Enabled         := True;
       Edit5.Enabled         := True;
       CheckBox3.Enabled     := True;
    SpeedButton2.Enabled     := True;           
     end
end;

procedure TFormConf.SpeedButton2Click(Sender: TObject);
begin
  try
   DeleteFile(ExtractFilePath(Application.ExeName) + 'logconex.ini');
   { *** Conectando com MySQL *** }
   if CheckBox3.Checked = false then
      begin
        Memo1.Lines.Add(' ' + FormatDateTime('dd/mm/yy  hh:mm:ss',now) + ' - Conectando com o banco: ');
        Memo1.Lines.Add('+--------------------------------------------+');
        Memo1.Lines.Add(' Hostname: ' + Edit1.Text);
        Memo1.Lines.Add(' Porta...: ' + Edit2.Text);
        Memo1.Lines.Add(' Usuário.: ' + Edit3.Text);
        Memo1.Lines.Add(' Senha...: ' + Edit4.Text);
        Memo1.Lines.Add(' DataBase: ' + Edit5.Text);
        Memo1.Lines.Add('+--------------------------------------------+');

        zConectaSQL.Connected := False;
        zConectaSQL.HostName  := Edit1.Text {'192.168.0.7'};
        zConectaSQL.Port      := StrToInt(Edit2.Text) {'root'};
        zConectaSQL.User      := Edit3.Text {'root'};
        zConectaSQL.Password  := Edit4.Text {'123456'};
        zConectaSQL.Database  := Edit5.Text;
        zConectaSQL.Connected := True;

        if CheckBox3.Checked = false then
           Memo1.Lines.Add(' ' + FormatDateTime('dd/mm/yy  hh:mm:ss',now) + ' - Conectado com sucesso!');
        Memo1.Lines.Add('::-----------------------------------------::');
      end;
  except
    begin
      Memo1.Lines.Add(' ' + FormatDateTime('dd/mm/yy  hh:mm:ss',now) + ' - Não foi possível conectar ao banco, verifique se os dados estão corretos!');
      Memo1.Lines.Add('::-----------------------------------------::');
    end;
  end;


  { *** Criando database *** }
  try
    if CheckBox3.Checked = True then
      begin
        Memo1.Lines.Add(' ' + FormatDateTime('dd/mm/yy  hh:mm:ss',now) + ' - Conectando com o banco.');
        Memo1.Lines.Add('+--------------------------------------------+');
        Memo1.Lines.Add(' Hostname: ' + Edit1.Text);
        Memo1.Lines.Add(' Porta...: ' + Edit2.Text);
        Memo1.Lines.Add(' Usuário.: ' + Edit3.Text);
        Memo1.Lines.Add(' Senha...: ' + Edit4.Text);
        Memo1.Lines.Add(' DataBase: ' + Edit5.Text);
        Memo1.Lines.Add('+--------------------------------------------+');

        zConectaSQL.Connected := False;
        zConectaSQL.HostName  := Edit1.Text {'192.168.0.7'};
        zConectaSQL.Port      := StrToInt(Edit2.Text) {'root'};
        zConectaSQL.User      := Edit3.Text {'root'};
        zConectaSQL.Password  := Edit4.Text {'123456'};
        zConectaSQL.Database  := 'mysql';
        zConectaSQL.Connected := True;
        Memo1.Lines.Add(' ' + FormatDateTime('dd/mm/yy  hh:mm:ss',now) + ' - Criando base de dados.');

        ZQueryPrincipal.SQL.Clear;
        if MEtapaN = 'Padrao' then
           begin
              { *** Verifica se base de dados e tabela no MySQL existem *** }
               Achou := False;
               ZQueryPrincipal.SQL.Clear;
               ZQueryPrincipal.SQL.Add('use information_schema;');
               ZQueryPrincipal.ExecSQL;

               ZQueryPrincipal.SQL.Clear;
               ZQueryPrincipal.SQL.Add('select * from schemata;');
               ZQueryPrincipal.Active := True;
               Achou :=  ZQueryPrincipal.Locate('schema_name',Edit5.Text,[]);

               if Achou = true then
                  ShowMessage('Base de dados já existe!')
               else
                 begin
                   ZQueryPrincipal.SQL.Clear;
                   ZQueryPrincipal.SQL.Add('create database ' + Edit5.Text + ';');
                   ZQueryPrincipal.ExecSQL;
                   Memo1.Lines.Add(' ' + FormatDateTime('dd/mm/yy  hh:mm:ss',now) + ' - Base de dados  ''visualiza'' criada com sucesso!');
                 end;
           end
        else
          if ((Edit5.Text <> '') and (CheckBox3.Checked = True)) then
             begin
              { *** Verifica se base de dados e tabela no MySQL existem *** }
               Achou := False;
               ZQueryPrincipal.SQL.Clear;
               ZQueryPrincipal.SQL.Add('USE information_schema;');
               ZQueryPrincipal.ExecSQL;

               ZQueryPrincipal.SQL.Clear;
               ZQueryPrincipal.SQL.Add('SELECT * FROM schemata;');
               ZQueryPrincipal.Open;

               Achou :=  ZQueryPrincipal.Locate('schema_name',NomeBaseSQL,[]);

               if Achou = true then
                  ShowMessage('Base de dados já existe!')
               else
                 begin
                   ZQueryPrincipal.SQL.Clear;
                   ZQueryPrincipal.SQL.Add('CREATE DATABASE '+ Edit5.Text + ';');
                   ZQueryPrincipal.ExecSQL;

                   Memo1.Lines.Add(' ' + FormatDateTime('dd/mm/yy  hh:mm:ss',now) + ' - Base de dados ''' + Edit5.Text + ''' criada com sucesso!');
                   Memo1.Lines.Add('::-----------------------------------------::');
                 end;
             end;
      end;
  except
     begin
       Memo1.Lines.Add(' ' + FormatDateTime('dd/mm/yy  hh:mm:ss',now) + ' - erro na criação da base de dados ''' + Edit5.Text + ''' certifique-se que a mesma não exista e tente novamente!');
       Memo1.Lines.Add('::-----------------------------------------::');
     end;
  end;
  Memo1.Lines.SaveToFile(ExtractFilePath(Application.ExeName) + 'logconex.ini');
end;
procedure TFormConf.SpeedButton2MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if CheckBox3.Checked = True then
     SpeedButton2.Hint := 'Criar nova base de dados'
  else
    SpeedButton2.Hint := 'Testar conexão com o banco de dados';
end;

end.


