unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm7 = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Button1: TButton;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

uses Unit6;

{$R *.dfm}

procedure TForm7.Button1Click(Sender: TObject);
begin
if ((LabeledEdit2.Text='������')and(LabeledEdit1.Text='�����') )then
begin
Form6.ShowModal;
Form7.Close;
end
else
begin
  ShowMessage('����� ������ �����������');
end;


end;

procedure TForm7.FormShow(Sender: TObject);
begin
LabeledEdit1.Text:='�����';
LabeledEdit2.Text:='������';
end;

end.
