unit Teste;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus;

type
  TSoma = class(TForm)
    valor1: TEdit;
    Label1: TLabel;
    Soma: TButton;
    valor2: TEdit;
    Label2: TLabel;
    resultado: TLabel;
    Subtrai: TButton;
    Multiplica: TButton;
    Divide: TButton;
    Button1: TButton;
    procedure SomaClick(Sender: TObject);
    procedure SubtraiClick(Sender: TObject);
    procedure MultiplicaClick(Sender: TObject);
    procedure DivideClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Soma: TSoma;
  a, b, c: Single;

implementation

{$R *.dfm}


procedure TSoma.DivideClick(Sender: TObject);
begin
  a:=StrToFloat(valor1.Text);
  b:=StrToFloat(valor2.Text);
  c:=a/b;
  resultado.Caption:=FloatToStr(c);
end;

procedure TSoma.MultiplicaClick(Sender: TObject);
begin
  a:=StrToFloat(valor1.Text);
  b:=StrToFloat(valor2.Text);
  c:=a*b;
  resultado.Caption:=FloatToStr(c);
end;

procedure TSoma.SomaClick(Sender: TObject);

begin
  a:=StrToFloat(valor1.Text);
  b:=StrToFloat(valor2.Text);
  c:=a+b;
  resultado.Caption:=FloatToStr(c);

end;

procedure TSoma.SubtraiClick(Sender: TObject);
begin
  a:=StrToFloat(valor1.Text);
  b:=StrToFloat(valor2.Text);
  c:=a-b;
  resultado.Caption:=FloatToStr(c);
end;

end.
