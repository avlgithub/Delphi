// Captura o nome do arquivo SEM a extensão  //
unit NomeArq;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

  Function Sem_Extensao(CurrFile : String) : String;

implementation
Var
    N1,N2 : Integer;
    Wnomearq : String;
Function Sem_Extensao(CurrFile : String) : String;
begin
  N1 := Length(CurrFile);
  N2 := 0;
  Wnomearq := '';
  While N1 <> N2 do
    begin
      N2 := N2 + 1;
      if Copy(CurrFile,N2,01) = '.' then
        begin
          N2 := N2 - 1;
          break;
        end;
      Wnomearq := Wnomearq + Copy(CurrFile,N2,01);
    end;
  Result := Wnomearq;
end;
end.
