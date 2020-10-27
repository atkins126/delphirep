program Project1;

uses
  Forms,
  main in 'main.pas' {Form1},
  fdm in 'fdm.pas' {DM1: TDataModule},
  ins_dol in 'ins_dol.pas' {Fins_dol},
  ins_etap in 'ins_etap.pas' {Fins_etap},
  ins_work in 'ins_work.pas' {Fins_work},
  ins_woreker in 'ins_woreker.pas' {fins_woreker};

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
  Application.Run;
end.
