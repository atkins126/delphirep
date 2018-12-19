unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Grids, StdCtrls, Spin, ExtCtrls;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    asm1: TMenuItem;
    Crvvf1: TMenuItem;
    min1: TMenuItem;
    max1: TMenuItem;
    sr1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Panel1: TPanel;
    Panel2: TPanel;
    SpinEdit1: TSpinEdit;
    Memo1: TMemo;
    T: TStringGrid;
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure min1Click(Sender: TObject);
    procedure max1Click(Sender: TObject);
    procedure sr1Click(Sender: TObject);
    procedure Crvvf1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  var x:array[1..100] of integer;
var  i,j,k:Integer;
var  max,min:Integer;
var   xc,xb:Integer;
var c, sum,ost,sr:Integer;

implementation

{$R *.dfm}

procedure TForm1.Crvvf1Click(Sender: TObject);
Label go, Met1;
begin
asm
mov xc,ecx
mov xb,ebx
xor eax,eax
xor ebx,ebx
xor ecx, ecx
xor edx,edx
mov sum,0
mov	ECX,C
lea	EBX,x
go:

  mov EAX,dword ptr[EBX]
  add Sum,EAX
  add EBX,4
	loop	go

Met1:
	mov EBX,xb
  mov ECX,xc

end;
  Memo1.Lines.Add('����� �������='+IntToStr(sum));
end;

procedure TForm1.max1Click(Sender: TObject);
begin
//ShowMessage(IntToStr(max));
end;

procedure TForm1.min1Click(Sender: TObject);
begin
//ShowMessage(IntToStr(min));
end;

procedure TForm1.N1Click(Sender: TObject);
begin
T.ColCount:=SpinEdit1.Value;
t.RowCount:=SpinEdit1.Value;
c:=t.ColCount*t.RowCount;
k:=1;
min:=1000; max:=-1;
for I := 0 to t.ColCount-1 do
for j := 0 to t.RowCount-1 do
  begin
    t.Cells[i,j]:=IntToStr(Random(11));
    x[k]:=StrToInt(t.Cells[i,j]);
    inc(k);
  end;

end;

procedure TForm1.N3Click(Sender: TObject);
begin
Form1.Close;
end;

procedure TForm1.sr1Click(Sender: TObject);
   Label go,Met1;
begin
asm
  xor eax,eax
  xor ebx,ebx
  xor ecx, ecx
  xor edx,edx
  mov sum, 0
  mov ecx,c
  lea ebx,x
  go:
  mov eax,dword ptr[ebx]
  add sum, eax
  add ebx,4
  loop go
  Met1:
  mov eax, sum
  div c
  mov sr,eax
  mov ost,edx
  mov ebx, xb
  mov ecx, xc
end;
Memo1.Lines.Add('������� ���� �������='+IntToStr(sr)+' ������� �� �������� '+IntToStr(ost));
end;


procedure TForm1.N2Click(Sender: TObject);
begin
  Memo1.Clear;
end;

end.
