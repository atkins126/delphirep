unit author;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  Tauthorisze = class(TForm)
    GroupBox1: TGroupBox;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  authorisze: Tauthorisze;

implementation

uses fmain;

{$R *.dfm}

procedure Tauthorisze.Button1Click(Sender: TObject);
begin
if (LabeledEdit1.Text='�����') and (LabeledEdit2.Text='������') then
begin
authorisze.Hide;
main.ShowModal;
end
else ShowMessage('������ ������ �����');
end;

procedure Tauthorisze.FormShow(Sender: TObject);
begin
LabeledEdit1.Text:='�����';
LabeledEdit2.Text:='������';
end;

end.
