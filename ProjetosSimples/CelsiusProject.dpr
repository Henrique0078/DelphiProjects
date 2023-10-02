program CelsiusProject;

uses
  Vcl.Forms,
  CalcCelsius in 'CalcCelsius.pas' {Celsius};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TCelsius, Celsius);
  Application.Run;
end.
