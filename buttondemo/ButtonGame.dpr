program ButtonGame;

uses
  Forms,
  Umain in 'Umain.pas' {Fmain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFmain, Fmain);
  Application.Run;
end.
