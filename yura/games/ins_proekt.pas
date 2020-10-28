unit ins_proekt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ComCtrls, ExtCtrls;

type
  TFins_proekt = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    LabeledEdit1: TLabeledEdit;
    DateTimePicker1: TDateTimePicker;
    LabeledEdit3: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    GroupBox3: TGroupBox;
    Button1: TButton;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    LabeledEdit4: TLabeledEdit;
    LabeledEdit5: TLabeledEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fins_proekt: TFins_proekt;

implementation

uses fdm, main;

{$R *.dfm}

procedure TFins_proekt.Button1Click(Sender: TObject);
begin
DM1.ins_proect.Parameters.ParamValues['@Nam_proect']:=LabeledEdit1.Text;
DM1.ins_proect.Parameters.ParamValues['@janr']:=LabeledEdit2.Text;
DM1.ins_proect.Parameters.ParamValues['@data_nash']:=DateToStr(DateTimePicker1.Date);
DM1.ins_proect.Parameters.ParamValues['@menager']:=LabeledEdit3.Text;
DM1.ins_proect.Parameters.ParamValues['@cost_plan']:=StrToFloat(LabeledEdit4.Text);
DM1.ins_proect.Parameters.ParamValues['@cost_fact']:=StrToFloat(LabeledEdit5.Text);
DM1.ins_proect.ExecProc;
DM1.Queryproect.Close;
DM1.Queryproect.Open;
ShowMessage('��������� �������');
end;

procedure TFins_proekt.FormActivate(Sender: TObject);
begin
DM1.Queryproect.Open;
end;

procedure TFins_proekt.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DM1.Queryproect.close;
end;

end.
