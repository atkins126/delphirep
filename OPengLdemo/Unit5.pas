unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,OPenGL;

type
  TForm5 = class(TForm)
    procedure FormCreate(Sender: TObject);
    procedure FormPaint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  var HRC:HGLRC;

implementation

{$R *.dfm}
procedure setDCPIXELFORMAt(hdc:HDC);
var p:PIXELFORMATDESCRIPTOR;
var n:Integer;
begin
FillChar(p,sizeof(p),0);
n:=ChoosePixelFormat(hdc,@p);
SetPixelFormat(hdc, n,@p);
end;

procedure TForm5.FormCreate(Sender: TObject);
begin
setDCPIXELFORMAt(Canvas.Handle);
HRC:=wglCreateContext(Canvas.Handle);
wglMakeCurrent(Canvas.Handle,HRC);
end;


procedure TForm5.FormPaint(Sender: TObject);
begin
glClearColor(0.5,0.5,0.75,1.0);
glClear(GL_COLOR_BUFFER_BIT or GL_DEPTH_BUFFER_BIT);
wglMakeCurrent(0,0)
end;

end.
