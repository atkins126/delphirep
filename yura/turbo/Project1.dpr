program Project1;

uses
  Forms,
  Umain in 'Umain.pas' {Fmain},
  Udm in 'Udm.pas' {dM: TDataModule},
  Ureg in 'Ureg.pas' {Freg},
  Umen in 'Umen.pas' {Fmen},
  Usotr in 'Usotr.pas' {Fsotr};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFreg, Freg);
  Application.CreateForm(TFmen, Fmen);
  Application.CreateForm(TFmain, Fmain);
  Application.CreateForm(TdM, dM);
  Application.CreateForm(TFsotr, Fsotr);
  Application.Run;
end.
