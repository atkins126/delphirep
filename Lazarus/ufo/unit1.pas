unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs;

type

  { TForm1 }

  TForm1 = class(TForm)
    procedure FormCreate(Sender: TObject);
    //
     procedure FormPaint(Sender: TObject);
    procedure Trg(x,y:integer);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}


{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin

end;
procedure TForm1.Trg(x,y:integer);
begin
with Canvas do
 begin
   moveto(x,y);
   lineto(x-30,y-20);
   lineto(x+30,y-20);
   lineto(x,y);
  end;
end;

procedure TForm1.FormPaint(Sender: TObject);
var i,n,x,y:integer;
begin
randomize;
n:=15+random(20);
for i:=1 to n do
 begin
   x:=30+random(clientwidth-60);
   y:=20+random(clientheight-40);
   Trg(x,y);
 end;
end;


end.

