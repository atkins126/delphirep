program Project1;

uses
  Forms,
  Unit5 in 'Unit5.pas' {Form5},
  Unit2 in 'Unit2.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
