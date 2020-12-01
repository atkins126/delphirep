unit Ureg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls;

type
  TFreg = class(TForm)
    GroupBox2: TGroupBox;
    GroupBox1: TGroupBox;
    Button1: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    LabeledEdit1: TLabeledEdit;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Label2DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Freg: TFreg;

implementation

uses Udm, Umain, DB, Umen, Usotr, Uadmpass;

{$R *.dfm}



procedure TFreg.Button1Click(Sender: TObject);

begin
if ((LabeledEdit1.Text=dm.Querypass.FieldByName('usver_pass').AsString ) and(LabeledEdit1.Text='boss')) then
begin
Fmain.Show;
end
else if ((LabeledEdit1.Text=dm.Querypass.FieldByName('usver_pass').AsString ) and(LabeledEdit1.Text='men'))  then
begin
fmen.Show;
end
// ��� ����������
else if((LabeledEdit1.Text=dM.Querypass.FieldByName('usver_pass').AsString)and(LabeledEdit1.Text='work'))  then
begin
Fsotr.Show;
end
else
begin
ShowMessage('�������� ������');
exit;
end;
end;

procedure TFreg.FormActivate(Sender: TObject);

begin
dm.Querypass.Open;
//LabeledEdit1.Text:='boss';
//LabeledEdit1.Text:='men';
LabeledEdit1.Text:='work';
LabeledEdit1.PasswordChar:='*';
end;

procedure TFreg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dm.Querypass.Close;
end;

procedure TFreg.Label2DblClick(Sender: TObject);
begin
Fadminpass.ShowModal;
end;

end.
