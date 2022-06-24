unit UFicha_arrecadacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  TFrm_FichaArrecada = class(TForm)
    edt_codBarras: TEdit;
    PN_NORMAL: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edt_id_produto: TEdit;
    edt_id_segmento: TEdit;
    edt_id_valor: TEdit;
    edt_digito: TEdit;
    edt_valor: TEdit;
    edt_id_empresa: TEdit;
    edt_campo_livre: TEdit;
    edt_numero: TEdit;
    Panel2: TPanel;
    PN_ERRO: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    PN_DIGITO: TPanel;
    Label10: TLabel;
    Label12: TLabel;
    MM_INCONSISTENCIA: TMemo;
    LB_LINHA: TLabel;
    Bevel2: TBevel;
    SpeedButton1: TSpeedButton;
    procedure edt_codBarrasChange(Sender: TObject);

    Function CALCM10(WString:String):string;
    Function CALCM11(WString:String):string;
    procedure limpa();
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_FichaArrecada: TFrm_FichaArrecada;
  wresult,aux:string;

implementation

uses UATENCAO;

{$R *.dfm}

procedure TFrm_FichaArrecada.edt_codBarrasChange(Sender: TObject);
begin
  if length(edt_codbarras.Text) > 44 then
     begin
       PN_NORMAL.Visible:=TRUE;
       PN_ERRO.Visible:=FALSE;
       pn_digito.Visible:=false;
       aux:=copy(edt_codBarras.Text,45,1);
       limpa();
     end;

  if length(edt_codbarras.Text) = 43 then
     begin
       edt_codbarras.Text:=aux+edt_codbarras.Text;
       aux:='';
       edt_codbarras.Refresh;
     end;

  if length(edt_codBarras.Text) = 44 then
     begin
       if copy(edt_codBarras.Text,1,1) = '8' then
          begin
            edt_id_produto.Text     :=  copy(edt_codBarras.Text,1,1);
            edt_id_segmento.Text    :=  copy(edt_codBarras.Text,2,1);
            edt_id_valor.Text       :=  copy(edt_codBarras.Text,3,1);

            LB_LINHA.Caption:= copy(edt_codBarras.Text,01,11)+'-'+calcm10(copy(edt_codBarras.Text,01,11))+
                               copy(edt_codBarras.Text,12,11)+'-'+calcm10(copy(edt_codBarras.Text,12,11))+
                               copy(edt_codBarras.Text,23,11)+'-'+calcm10(copy(edt_codBarras.Text,23,11))+
                               copy(edt_codBarras.Text,34,11)+'-'+calcm10(copy(edt_codBarras.Text,34,11));

            case strtoint(edt_id_valor.Text) of
              6:
                BEGIN
                  edt_digito.Text         := calcm10(copy(edt_codBarras.Text,1,3)+copy(edt_codBarras.Text,5,44));
                  LB_LINHA.Caption:= copy(edt_codBarras.Text,01,11)+'-'+calcm10(copy(edt_codBarras.Text,01,11))+'  '+
                                     copy(edt_codBarras.Text,12,11)+'-'+calcm10(copy(edt_codBarras.Text,12,11))+'  '+
                                     copy(edt_codBarras.Text,23,11)+'-'+calcm10(copy(edt_codBarras.Text,23,11))+'  '+
                                     copy(edt_codBarras.Text,34,11)+'-'+calcm10(copy(edt_codBarras.Text,34,11));
                END;
              7:
                BEGIN
                  edt_digito.Text         := calcm10(copy(edt_codBarras.Text,1,3)+copy(edt_codBarras.Text,5,44));
                  LB_LINHA.Caption:= copy(edt_codBarras.Text,01,11)+'-'+calcm10(copy(edt_codBarras.Text,01,11))+'  '+
                                     copy(edt_codBarras.Text,12,11)+'-'+calcm10(copy(edt_codBarras.Text,12,11))+'  '+
                                     copy(edt_codBarras.Text,23,11)+'-'+calcm10(copy(edt_codBarras.Text,23,11))+'  '+
                                     copy(edt_codBarras.Text,34,11)+'-'+calcm10(copy(edt_codBarras.Text,34,11));
                END;
              8:
                BEGIN
                  edt_digito.Text         := calcm11(copy(edt_codBarras.Text,1,3)+copy(edt_codBarras.Text,5,44));
                  LB_LINHA.Caption:= copy(edt_codBarras.Text,01,11)+'-'+calcm11(copy(edt_codBarras.Text,01,11))+'  '+
                                     copy(edt_codBarras.Text,12,11)+'-'+calcm11(copy(edt_codBarras.Text,12,11))+'  '+
                                     copy(edt_codBarras.Text,23,11)+'-'+calcm11(copy(edt_codBarras.Text,23,11))+'  '+
                                     copy(edt_codBarras.Text,34,11)+'-'+calcm11(copy(edt_codBarras.Text,34,11));
                END;
              9:
                BEGIN
                  edt_digito.Text         := calcm11(copy(edt_codBarras.Text,1,3)+copy(edt_codBarras.Text,5,44));
                  LB_LINHA.Caption:= copy(edt_codBarras.Text,01,11)+'-'+calcm11(copy(edt_codBarras.Text,01,11))+'  '+
                                     copy(edt_codBarras.Text,12,11)+'-'+calcm11(copy(edt_codBarras.Text,12,11))+'  '+
                                     copy(edt_codBarras.Text,23,11)+'-'+calcm11(copy(edt_codBarras.Text,23,11))+'  '+
                                     copy(edt_codBarras.Text,34,11)+'-'+calcm11(copy(edt_codBarras.Text,34,11));
                END;
            end;
            if edt_digito.Text = copy(edt_codBarras.Text,4,1) then
               begin
                 if edt_id_segmento.Text = '6' then
                    begin
                      edt_id_empresa.Text     :=  copy(edt_codBarras.Text,16,8);
                      edt_campo_livre.Text    :=  copy(edt_codBarras.Text,24,21);
                    end
                 else
                   begin
                     edt_id_empresa.Text     :=  copy(edt_codBarras.Text,16,4);
                     edt_campo_livre.Text    :=  copy(edt_codBarras.Text,20,25);
                   end;
                 edt_valor.Text          :=  copy(edt_codBarras.Text,5,11);

                 if (edt_id_valor.Text = '6') or (edt_id_valor.Text ='8') then
                    begin
                      if edt_valor.Text = '00000000000' then
                         begin
                           pn_digito.Visible:=true;
                           pn_normal.Visible:=false;
                           mm_inconsistencia.Clear;
                           mm_inconsistencia.Lines.Add('O IDENTIFICADOR DE VALOR NÃO PERMITE VALOR IGUAL A ZERO!');
                           mm_inconsistencia.SelectAll;
                           mm_inconsistencia.SetFocus;
                           edt_codbarras.SetFocus;
                         end
                      else
                        begin
                          edt_campo_livre.SetFocus;
                          edt_codbarras.SetFocus;
                        end;
                    end;
                 if (edt_id_valor.Text = '7') or (edt_id_valor.Text ='9')  then
                    begin
                      edt_campo_livre.SetFocus;
                      edt_codbarras.SetFocus;
                    end;

               end
            else
              begin
                pn_digito.Visible:=true;
                pn_normal.Visible:=false;
                mm_inconsistencia.Clear;
                mm_inconsistencia.Lines.Add('O DIGITÃO LIDO NÃO É O MESMO QUE O CALCULADO!');
                mm_inconsistencia.Lines.Add('LIDO: '+copy(edt_codBarras.Text,4,1));
                mm_inconsistencia.Lines.Add('CALCULADO: '+edt_digito.Text);
                mm_inconsistencia.SelectAll;
                mm_inconsistencia.SetFocus;
                edt_codbarras.SetFocus;
              end;
          end
       else
         begin
           PN_ERRO.Visible:=TRUE;
           PN_NORMAL.Visible:=FALSE;
         end;
     end;
end;

Function tfrm_fichaArrecada.CALCM10(WString:String):string;
Var
    WRes, WSoma, I : Integer;
    WDig : Boolean;
Begin
    WDig := True;
    Wsoma := 0;
    For I := Length(WString) downto 1 do
        Begin
            If WDig = True then
                WRes := StrToInt(Copy(WString,I,1)) * 2
            Else
                WRes := StrToInt(Copy(WString,I,1)) * 1;

            If Length(IntToStr(WRes)) = 2 Then
                WRes := StrToInt(Copy(IntToStr(WRes),1,1)) + StrToInt(Copy(IntToStr(WRes),2,1));

            WSoma := WSoma + WRes;
            WDig := Not(WDig);
        End;

     Case (10-(WSoma mod 10)) of
         10 : wresult := IntToStr(0);
         0 : wresult := IntToStr(0);
     Else
         wresult := IntToStr(10-(WSoma mod 10));
     End;

     result := (wresult);
End;

Function tfrm_fichaArrecada.CALCM11(WString:String):string;
Var
  WRes, WSoma, I, WMult: Integer;
  wresult : String;
Begin
  WMult := 2;
  WSoma := 0;
  For I := Length(Wstring) downto 1 do
    Begin
      WRes := StrToInt(Copy(Wstring,I,1)) * WMult;
      WSoma := WSoma + WRes;

      WMult := WMult + 1;
      If WMult = 10 Then
         WMult := 2;
    End;

  Case (11-(WSoma mod 11)) of
    0,1,10,11 : wresult := IntToStr(1)
  Else
    wresult := IntToStr(11-(WSoma mod 11));
  End;

  result := (wresult);
End;

procedure tfrm_fichaarrecada.limpa();
begin
  edt_numero.Clear;
  edt_id_produto.Clear;
  edt_id_segmento.Clear;
  edt_id_valor.Clear;
  edt_digito.Clear;
  edt_valor.Clear;
  edt_id_empresa.Clear;
  edt_campo_livre.Clear;
  edt_codbarras.Clear;
  edt_codbarras.Visible := True;
  edt_codbarras.SetFocus;
  edt_numero.Clear;
  PN_NORMAL.Visible     := True;
  PN_ERRO.Visible       := False;
  pn_digito.Visible     := False;
  lb_linha.Caption      := '';
end;

procedure TFrm_FichaArrecada.SpeedButton1Click(Sender: TObject);
begin
  limpa();
end;

end.
