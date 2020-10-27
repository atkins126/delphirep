unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses ins_dol, ins_etap, ins_work, ins_woreker;

{$R *.dfm}

procedure TForm1.N3Click(Sender: TObject);
begin
fins_dol.ShowModal;
end;

procedure TForm1.N4Click(Sender: TObject);
begin
Fins_etap.ShowModal;
end;

procedure TForm1.N5Click(Sender: TObject);
begin
Fins_work.ShowModal;

end;

procedure TForm1.N6Click(Sender: TObject);
begin
fins_woreker.ShowModal;
end;

end.
