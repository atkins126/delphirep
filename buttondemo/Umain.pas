unit Umain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFmain = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    BClick: TButton;
    procedure BClickClick(Sender: TObject);
    procedure BClickMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fmain: TFmain;

implementation

{$R *.dfm}

procedure TFmain.BClickClick(Sender: TObject);
begin
ShowMessage('Enter не честно нажимать(! ');
end;

procedure TFmain.BClickMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
  var index:Integer;
begin
index:=random(4);
case index of
0:BClick.Left:=BClick.Left+BClick.Width;
1:BClick.Left:=BClick.Left-BClick.Width;
2:BClick.top:=BClick.top-BClick.Height;
3:BClick.top:=BClick.top+BClick.Height;
end; //case
if BClick.left<0 then BClick.Left:=0;
if BClick.top<0 then BClick.top:=0;
if(BClick.Left+BClick.Width)>Fmain.Width then BClick.Left:=Fmain.Width-BClick.Width;
if(BClick.top+BClick.Height)>Fmain.Height then BClick.top:=Fmain.Height-BClick.Height;
end;

procedure TFmain.Button1Click(Sender: TObject);
begin
Fmain.Close;
end;

end.
