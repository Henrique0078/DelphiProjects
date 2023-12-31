program QuilometrosProject;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
entrada,a: string;
b,c: Single;

//Escreva um programa para converter velocidades de quil�metros por hora
//em metros por segundo e vice-versa.
function kmTom(km: single): string;
var
m: single;
begin
  m:= km * 1000;
  Result:= FloatToStr(m);
end;

function mTokm(m: single): string;
var
km: single;
begin
  km:= m / 1000;
  Result:= FloatToStr(km);
end;

begin
  try
    while True do
    begin
      Writeln('Bem vindo!');
      Writeln('Voce deseja fazer a convers�o de metro para quilometros, ou quilometros para metros?');
      Writeln('[0] Sair');
      Writeln('[1] Metros para quilometros');
      Writeln('[2] Quilometros para metros');
      Readln(Input, entrada);
      if entrada = '1' then
        begin
          Writeln('Informe o valor em metros: ');
          Readln(Input, a);
          b:= StrToFloat(a);
          Writeln(a + ' metros � equivalente a ' + mTokm(b) + ' quilometros!');
          Writeln('');
        end
      else
        if entrada = '2' then
          begin
            Writeln('Informe o valor em quilometros');
            Readln(Input, a);
            b:= StrToFloat(a);
            Writeln(a + ' quilometro � equivalente a ' + kmTom(b) + ' metros!');
            Writeln('');
          end
          else
          if entrada = '0' then
            begin
             break
            end;
    end;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
