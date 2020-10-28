unit ins_woreker;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ComCtrls, DBCtrls, ExtCtrls, Mask;

type
  Tfins_woreker = class(TForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    LabeledEdit1: TLabeledEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    LabeledEdit3: TLabeledEdit;
    GroupBox3: TGroupBox;
    Button1: TButton;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    LabeledEdit2: TLabeledEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fins_woreker: Tfins_woreker;

implementation

uses main, fdm;

{$R *.dfm}

procedure Tfins_woreker.Button1Click(Sender: TObject);
begin
DM1.ins_rabotnic.Parameters.ParamValues['@fio']:=LabeledEdit1.Text;
DM1.ins_rabotnic.Parameters.ParamValues['@N_dol']:=DBLookupComboBox1.KeyValue;
DM1.ins_rabotnic.Parameters.ParamValues['@Iphone']:=StrToInt(LabeledEdit2.Text);
DM1.ins_rabotnic.Parameters.ParamValues['@st_rab']:=LabeledEdit3.Text;
DM1.ins_rabotnic.Parameters.ParamValues['@date_pr']:=DateToStr(DateTimePicker1.Date);
DM1.ins_rabotnic.ExecProc;
dm1.Querywoker.Close;
DM1.Querywoker.Open;
ShowMessage('��������� �������');

end;

procedure Tfins_woreker.FormActivate(Sender: TObject);
begin
DM1.Querywoker.Open;
DM1.Querydol.Open;
end;

procedure Tfins_woreker.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DM1.Querywoker.close;
DM1.Querydol.close;
end;

end.
