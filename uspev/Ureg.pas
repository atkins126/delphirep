unit Ureg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    GroupBox2: TGroupBox;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit1: TLabeledEdit;
    Panel1: TPanel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Umain;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
if ((LabeledEdit1.Text='�������������') and (LabeledEdit2.Text='������ - ����'))  then
begin
  form1.Close;
//  Fmain.Show;
end
else
begin
  ShowMessage('�� ��� ������');
  Exit;
end;

end;

procedure TForm1.FormActivate(Sender: TObject);
var i:Integer;
begin
LabeledEdit1.Text:='�������������';
LabeledEdit2.Text:='������ - ����';
with GroupBox2 do for I := 0 to ControlCount - 1 do
if (Controls[i] is TLabeledEdit)  then
begin
  (Controls[i]as TLabeledEdit).PasswordChar:='*';
end;
end;

end.
