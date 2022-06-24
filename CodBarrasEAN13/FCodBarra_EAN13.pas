unit FCodBarra_EAN13;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Printers, QRPRNTR;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Label1: TLabel;
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    Procedure GeraBarrasEAN13(CodBarras: string; Imagem: TQRPrinter; iPosX : Integer; iPosY : Integer; iTam : Integer);
    Procedure DesenhaBarras(SequenciaHexa: string; Imagem: TQRPrinter; iHorizontal : Integer; iVertical: Integer; iTamanho : Integer);
    Function CalculaDigEAN13(Cod:String):String;


    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Rel : TQRPrinter;
  Entrada,Saida:TextFile;
  sDigitoVerificador,sCodigo,sLinha : String;
  I,Y, PosX, PosY, NFolhas,SaltoX,SaltoY,iCodX,iCodY,iCont,iQtd,iContFolha,
  iTamanho : Integer;

implementation
{ ***
   Desenvolvido pelo parceiro Eduardo Cordeiro Data: 09/06/2009
   Modificado por: Alberto V.Lima              Data: 23/06/2009
 *** }

{$R *.dfm}

//------------------------------------------------------------------------------
//
// .------------------------------------.
// | | Tabela A | Tabela B | Tabela C |
// |---+----------+----------+----------|
// | 0 | 0001101 | 0100111 | 1110010 |
// | 1 | 0011001 | 0110011 | 1100110 |
// | 2 | 0010011 | 0011011 | 1101100 |
// | 3 | 0111101 | 0011011 | 1000010 |
// | 4 | 0100011 | 0011101 | 1011100 |
// | 5 | 0110001 | 0111001 | 1001110 |
// | 6 | 0101111 | 0000101 | 1010000 |
// | 7 | 0111011 | 0010001 | 1000100 |
// | 8 | 0110111 | 0001001 | 1001000 |
// | 9 | 0001011 | 0010111 | 1110100 |
// .------------------------------------.
// Tabela Auxiliar
// .-----------------------.
// | Algarismo | Seqüência |
// |-----------+-----------|
// | 0 | AAAAAA |
// | 1 | AABABB |
// | 2 | AABBAB |
// | 3 | AABBBA |
// | 4 | ABAABB |
// | 5 | ABBAAB |
// | 6 | ABBBAA |
// | 7 | ABABAB |
// | 8 | ABABBA |
// | 9 | ABBABA |
// .-----------------------.
//
// Gerae código de barras padrão EAN13

procedure TForm1.GeraBarrasEAN13(CodBarras: string; Imagem: TQRPrinter; iPosX : Integer; iPosY : Integer; iTam : Integer);
const
  TabelaA: array[0..9] of string[7] = ('0001101', '0011001', '0010011', '0111101', '0100011', '0110001', '0101111', '0111011', '0110111', '0001011');
  TabelaB: array[0..9] of string[7] = ('0100111', '0110011', '0011011', '0011011', '0011101', '0111001', '0000101', '0010001', '0001001', '0010111');
  TabelaC: array[0..9] of string[7] = ('1110010', '1100110', '1101100', '1000010', '1011100', '1001110', '1010000', '1000100', '1001000', '1110100');
  TabAux: array[0..9] of string[6] = ('AAAAAA', 'AABABB', 'AABBAB', 'AABBBA', 'ABAABB', 'ABBAAB', 'ABBBAA', 'ABABAB', 'ABABBA', 'ABBABA');
var
  Codigo: string;
  Formato: string;
  PegaDaTabela: string;
  DecimoTerceiroDig: Byte;
  Cont: Byte;
begin
  Formato := '';
  Codigo := CodBarras;
  DecimoTerceiroDig := StrToIntDef(CodBarras[1], 0);
  {----------------------------------------------------------------------------}
  { Tendo o 13º dígito definido, posso definir o padrão de impressão das barras}
  { no primeiro conjunto de 6 dígitos baseado na tabela Auxiliar. }
  {----------------------------------------------------------------------------}
  PegaDaTabela := TabAux[DecimoTerceiroDig] + 'CCCCCC';
  Formato := Formato + '101'; //--> Barra Auxiliar de Guarda 'Esquerda'
  for Cont := 1 to Length(PegaDaTabela) do
    begin
      case PegaDaTabela[Cont] of
        'A': Formato := Formato + TabelaA[StrToInt(Codigo[Cont + 1])];
        'B': Formato := Formato + TabelaB[StrToInt(Codigo[Cont + 1])];
        'C': Formato := Formato + TabelaC[StrToInt(Codigo[Cont + 1])];
      end;

      if Cont = 6 then
         Formato := Formato + '01010'; //--> Barra Auxiliar de Guarda 'Central'
    end;
  Formato := Formato + '101'; //--> Barra Auxiliar de Guarda 'Direita'

  //------ Desenha o código alfa-numérico na imagem
  Imagem.Canvas.Font.Size := 9;
  Imagem.Canvas.Brush.Color := ClWhite;
  Imagem.Canvas.Pen.Color := ClBlack;
  Imagem.Canvas.TextOut(02 + iPosx , 51 + iPosy - ( -iTam) , Copy(CodBarras, 01, 01));
  Imagem.Canvas.TextOut(13 + iPosx , 51 + iPosy - ( -iTam) , Copy(CodBarras, 02, 06));
  Imagem.Canvas.TextOut(60 + iPosx , 51 + iPosy - ( -iTam) , Copy(CodBarras, 08, 06));
  //------ Desenha as barras na imagem
  DesenhaBarras(Formato, Imagem, iPosX, iPosY, iTam);
end;

procedure TForm1.DesenhaBarras(SequenciaHexa: string; Imagem: TQRPrinter; iHorizontal : Integer; iVertical: Integer; iTamanho : Integer);
var
  X, Y, H: LongInt;
  A, B, C, D: TPoint;
  I: Boolean;
begin
  Imagem.Canvas.Brush.Color := ClWhite;
  Imagem.Canvas.Pen.Color := ClBlack;
  x := 10 + iHorizontal;
  i := True;
  for y := 1 to Length(SequenciaHexa) do
    begin
      if SequenciaHexa[y] = '0' then
         Imagem.Canvas.Pen.Color := ClWhite
      else
        Imagem.Canvas.Pen.Color := ClBlack;
      h := 1;
      a.x := x;
      a.y := 00 + iVertical ;
      b.x := x;
      b.y := 50 + iVertical - ( -iTamanho);
      c.x := x  + h - 1;
      c.y := 50 + iVertical - ( -iTamanho);
      d.x := x  + h - 1;
      d.y := 00 + iVertical;
      case Y of
        1..3, 46..50, 93..95:
          begin
            b.y := 55 + iVertical - ( -iTamanho);
            c.y := 55 + iVertical - ( -iTamanho);
          end;
      end;
      Imagem.Canvas.Polygon([A, B, C, D]);
      i := not (i);
      x := x + h;
    end;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  iQtd   := 0;
  iContFolha := 0;
  SaltoX := 45;
  SaltoY := 10;

  iTamanho := -18;

  Rel :=  TQRPrinter.Create;
  Rel.Orientation := poPortrait;
  Rel.BeginDoc;
  Rel.NewPage;

  try
   AssignFile(Entrada,ExtractFileDir(Application.ExeName) + '\seqcod.ini');
   Rewrite(Entrada);

   For iCodY := 1 to StrToInt(Edit1.Text) do
     begin
       For iCodX := 1 to 5 do
         begin
           { *** Para o primeiro For*** }
           if iQtd >= StrToInt(Edit1.Text) then
              Break;

           sCodigo := FormatFloat('000000000000',iCont);
           sDigitoVerificador := CalculaDigEAN13(sCodigo);
           GeraBarrasEAN13(sCodigo + sDigitoVerificador,Rel,SaltoX,SaltoY, iTamanho);

           iQtd   := iQtd  + 1;
           iContFolha := iContFolha + 1;
           SaltoX := SaltoX + 150;
           iCont  := iCont + 1;
         end;

       { *** Para o segundo For*** }
       if iQtd >= StrToInt(Edit1.Text) then
          Break;

       SaltoY := SaltoY + 70;
       SaltoX := 45;

       if iContFolha >= 80 then
          begin
            Rel.NewPage;
            iContFolha := 0;
            SaltoX := 45;
            SaltoY := 10;
          end;
     end;

   Rel.Preview;
   Rel.EndDoc;
   Writeln(Entrada,IntToStr(iCont));

   CloseFile(Entrada);
  except
    ShowMessage('Não foi possível gerar código(s) de barras !');
  end
end;

Function TForm1.CalculaDigEAN13(Cod:String):String;
  Function Par(Cod:Integer):Boolean;
    begin
      Result:= Cod Mod 2 = 0 ;
    end;
Var
  i,SomaPar, SomaImpar:Integer;
begin
  SomaPar:=0;
  SomaImpar:=0;
  for i:=1 to 12 do
    if Par(i) then
       SomaPar:=SomaPar+StrToInt(Cod[i])
    else
      SomaImpar:=SomaImpar+StrToInt(Cod[i]);

  SomaPar:=SomaPar*3;
  i:=0;

  while i < (SomaPar+SomaImpar) do
    Inc(i,10);

  Result:=IntToStr(i-(SomaPar+SomaImpar));
end;
procedure TForm1.FormCreate(Sender: TObject);
begin
  try
    AssignFile(Entrada,ExtractFileDir(Application.ExeName) + '\seqcod.ini');
    Reset(Entrada);

    Readln(Entrada,sLinha);

    iCont := StrToInt(sLinha);
    CloseFile(Entrada);
  except
    ShowMessage('Não foi possível ler a ultimo sequência gerado!');
  end;
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
  if Edit1.Text <> '' then
     btn1.Enabled := True
  else
    btn1.Enabled := False;
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
     btn1.SetFocus
  else
    if (Key < #48) Or (Key >#57) then
        Key := #0;
end;

end.
