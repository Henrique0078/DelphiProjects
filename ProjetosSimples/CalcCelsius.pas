unit CalcCelsius;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TCelsius = class(TForm)
    Label1: TLabel;
    Input: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Fim: TLabel;
    procedure InputChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Celsius: TCelsius;
  c, r: Single;

implementation

{$R *.dfm}

function celciusToFahrenheit(f: Single): Single;
begin
var
  resultado: Single;

  resultado:= (f * 9/5) + 32;
  Result:= round(resultado);

end;

procedure TCelsius.InputChange(Sender: TObject);
begin
  If Input.Text <> '' Then
  Begin
    c:= StrToFloat(Input.text);
    r:= celciusToFahrenheit(c);
    Fim.Caption:= FloatToStr(r);
  End
  Else
  Begin
  Fim.Caption:= '0';
  End;

end;

end.
