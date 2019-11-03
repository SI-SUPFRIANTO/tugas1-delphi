program Projrct1;

uses
  System.StartUpCopy,
  FMX.Forms,
  kalkulator in 'kalkulator.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
