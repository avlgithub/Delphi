unit fFonteContaRegistro;

interface

Uses Classes,SysUtils,Dialogs,FileCtrl,StdCtrls, ExtCtrls;

type
  TContador = Class(TThread)
  protected
    procedure Execute;
  override;

end;

var
 iTotalLinha : Integer;
 iContaLinha : Integer;
 iContador   : Integer;
 tfEntrada   : TextFile;
 tfSaida     : TextFile;
 sLinha      : String;

implementation

Uses fContaRegistros;

{ TContador}

procedure TContador.Execute;

begin
  Priority := tpLower;

  Try
    iContaLinha := 0;
    iTotalLinha := 0;

    AssignFile(tfSaida,FPrincipal.FileListBox1.Directory + '\RELATORIO_DE_QTD_REGISTRO.TXT');
    Append(tfSaida);


    For iContador := 0 to FPrincipal.CheckListBox1.Count-1 do
      if FPrincipal.CheckListBox1.Checked[iContador] = True then
         begin
           AssignFile(tfEntrada,FPrincipal.CheckListBox1.Items[iPosicaoArquivo]);
           Reset(tfEntrada);

           While not Eof(tfEntrada) do
             begin
               Inc(iTotalLinha);
               Inc(iContaLinha);
               Readln(tfEntrada,sLinha);

               FPrincipal.Label1.Caption := '  Registro(s) Lido(s).: ' + IntToStr(iTotalLinha);
               FPrincipal.Label1.Refresh;
             end;

           CloseFile(tfEntrada);

           Writeln(tfSaida,FPrincipal.CheckListBox1.Items[iPosicaoArquivo] + '   ' + IntToStr(iContaLinha));
           iContaLinha := 0;

           Writeln(tfSaida,'');
           Writeln(tfSaida,'Total.: ' + IntToStr(iContaLinha));

           CloseFile(tfSaida);

           MessageDlg('Fim do processo!', mtInformation,[mbOk], 0,);
         end;
  Finally
    FPrincipal.SBProcessar.Enabled := True;
  end;

  inherited;
end;
end.
