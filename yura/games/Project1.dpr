program Project1;

uses
  Forms,
  main in 'main.pas' {Form1},
  fdm in 'fdm.pas' {DM1: TDataModule},
  ins_dol in 'ins_dol.pas' {Fins_dol},
  ins_etap in 'ins_etap.pas' {Fins_etap},
  ins_work in 'ins_work.pas' {Fins_work},
  ins_woreker in 'ins_woreker.pas' {fins_woreker},
  ins_proekt in 'ins_proekt.pas' {Fins_proekt},
  ins_zadan in 'ins_zadan.pas' {Fins_zadan},
  otchet in 'otchet.pas' {fptchet},
  Utest in 'Utest.pas' {Ftest};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDM1, DM1);
  Application.CreateForm(TFins_dol, Fins_dol);
  Application.CreateForm(TFins_etap, Fins_etap);
  Application.CreateForm(TFins_work, Fins_work);
  Application.CreateForm(Tfins_woreker, fins_woreker);
  Application.CreateForm(TFins_proekt, Fins_proekt);
  Application.CreateForm(TFins_zadan, Fins_zadan);
  Application.CreateForm(Tfptchet, fptchet);
  Application.CreateForm(TFtest, Ftest);
  Application.Run;
end.
