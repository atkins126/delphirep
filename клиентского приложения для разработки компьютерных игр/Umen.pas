unit Umen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Grids, DBGrids, DBCtrls,DateUtils;

type
  TFmen = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    grougrou: TPageControl;
    TabSheet3: TTabSheet;
    GroupBox1: TGroupBox;
    Button1: TButton;
    GroupBox2: TGroupBox;
    LabeledEdit2: TLabeledEdit;
    GroupBox3: TGroupBox;
    DBGrid1: TDBGrid;
    TabSheet4: TTabSheet;
    GroupBox4: TGroupBox;
    Button2: TButton;
    GroupBox5: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    LabeledEdit1: TLabeledEdit;
    DateTimePicker1: TDateTimePicker;
    DBLookupComboBox1: TDBLookupComboBox;
    GroupBox6: TGroupBox;
    DBGrid2: TDBGrid;
    TabSheet5: TTabSheet;
    GroupBox7: TGroupBox;
    Button3: TButton;
    GroupBox8: TGroupBox;
    DBGrid3: TDBGrid;
    GroupBox9: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DateTimePicker2: TDateTimePicker;
    DBLookupComboBox2: TDBLookupComboBox;
    LabeledEdit3: TLabeledEdit;
    DateTimePicker3: TDateTimePicker;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    TabSheet6: TTabSheet;
    GroupBox10: TGroupBox;
    DBGrid4: TDBGrid;
    GroupBox11: TGroupBox;
    Button4: TButton;
    GroupBox12: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    LabeledEdit4: TLabeledEdit;
    DBLookupComboBox5: TDBLookupComboBox;
    LabeledEdit5: TLabeledEdit;
    LabeledEdit6: TLabeledEdit;
    DateTimePicker4: TDateTimePicker;
    DBLookupComboBox6: TDBLookupComboBox;
    TabSheet2: TTabSheet;
    TabSheet10: TTabSheet;
    GroupBox13: TGroupBox;
    GroupBox14: TGroupBox;
    GroupBox15: TGroupBox;
    Button5: TButton;
    DBGrid5: TDBGrid;
    DBLookupComboBox7: TDBLookupComboBox;
    Label11: TLabel;
    Label12: TLabel;
    DateTimePicker5: TDateTimePicker;
    PageControl3: TPageControl;
    TabSheet7: TTabSheet;
    GroupBox16: TGroupBox;
    Label13: TLabel;
    DateTimePicker6: TDateTimePicker;
    GroupBox17: TGroupBox;
    DBGrid6: TDBGrid;
    Label14: TLabel;
    DBLookupComboBox8: TDBLookupComboBox;
    procedure LabeledEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    function DateToStr_(Dat : TDate): String;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure DBLookupComboBox8Click(Sender: TObject);
    procedure DateTimePicker6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fmen: TFmen;

implementation

uses Udm, Ureg;

{$R *.dfm}
procedure TFmen.Button2Click(Sender: TObject);
begin
try
dm.ins_work.Parameters.ParamByName('@Nam_work').Value:=LabeledEdit1.Text;
dm.ins_work.Parameters.ParamByName('@T_days').Value:=DateToStr_(DateTimePicker1.Date);
dm.ins_work.Parameters.ParamByName('@N_Etap').Value:=DBLookupComboBox1.KeyValue;
if(LabeledEdit1.Text='') then
begin
MessageDlg('������ ����� ������������ ������ ',mtWarning,[mbAbort],0);
exit;
end;
dm.ins_work.ExecProc;
dm.Querywork.Close;
dm.Querywork.sql.clear;
dm.Querywork.sql.Text:='select * from work';
dm.Querywork.Open;
dm.Querywork.Next;
dm.Querywork.First;
dm.Querywork.Last;
except  on e:Exception do
begin
MessageDlg('���� ��������� ',mtWarning,[mbAbort],0);
Exit;
end;

end;
end;

procedure TFmen.Button3Click(Sender: TObject);
begin
try
dm.ins_zadanie.Parameters.ParamByName('@Sr_vip').Value:=DateToStr_(DateTimePicker2.Date);
dm.ins_zadanie.Parameters.ParamByName('@N_Rab').Value:=DBLookupComboBox2.KeyValue;
dm.ins_zadanie.Parameters.ParamByName('@St_rab').Value:=LabeledEdit3.Text;
dm.Ins_zadanie.Parameters.ParamByName('@Data_nash').Value:=DateToStr_(DateTimePicker3.Date);
dm.Ins_zadanie.Parameters.ParamByName('@N_Proekta').Value:=DBLookupComboBox3.KeyValue;
dm.Ins_zadanie.Parameters.ParamByName('@N_Work').Value:=DBLookupComboBox4.KeyValue;
if (LabeledEdit3.Text='') then
begin
MessageDlg('��������� ���� ',mtWarning,[mbAbort],0);
exit;
end;
dm.ins_zadanie.ExecProc;
dm.Querytask.Close;
dm.Querytask.sql.Clear;
dm.Querytask.sql.text:='select * from zadanie';
dm.Querytask.Open;
dm.Querytask.Next;
dm.Querytask.First;
dm.Querytask.last;
except on e:Exception do
begin
MessageDlg('���� ��������� ',mtWarning,[mbAbort],0);
Exit;
end;
end;
end;

procedure TFmen.Button4Click(Sender: TObject);
begin
if ((LabeledEdit5.Text='') )  then
begin
MessageDlg('�� ������ �������  ',mtWarning,[mbAbort],0);
  Exit;
end
else
begin
try
dm.ins_rabotnic.Parameters.ParamByName('@Fio').Value:=LabeledEdit4.Text;
dm.ins_rabotnic.Parameters.ParamByName('@N_dol').Value:=DBLookupComboBox5.KeyValue;
dm.ins_rabotnic.Parameters.ParamByName('@Iphone').Value:=StrToInt(LabeledEdit5.Text);
dm.ins_rabotnic.Parameters.ParamByName('@St_rab').Value:=LabeledEdit6.Text;
dm.ins_rabotnic.Parameters.ParamByName('@Date_pr').Value:=DateToStr_(DateTimePicker4.Date);
dm.ins_rabotnic.Parameters.ParamByName('@usverid').Value:=DBLookupComboBox6.KeyValue;
if ((LabeledEdit4.Text='')or(LabeledEdit5.Text='')or(LabeledEdit6.Text='')) then
begin
MessageDlg('���� ���������  ',mtWarning,[mbAbort],0);
Exit;
end;
dm.ins_rabotnic.ExecProc;
MessageDlg('��������� �������  ',mtInformation,[mbOK],0);
dm.Queryrabotnik.Close;
dm.Queryrabotnik.sql.Clear;
dm.Queryrabotnik.sql.text:='select * from rabotnik';
dm.Queryrabotnik.Open;
dm.Queryrabotnik.Next;
dm.Queryrabotnik.First;
dm.Queryrabotnik.Last;
except on e:Exception do
begin
MessageDlg('���� ���������  ',mtWarning,[mbAbort],0);
Exit;
end;
end;
end;
end;

procedure TFmen.Button5Click(Sender: TObject);
begin
try
dm.upd_rab.Parameters.ParamByName('@N_rab').Value:=DBLookupComboBox7.KeyValue;
dm.upd_rab.Parameters.ParamByName('@date_yv').Value:=DateToStr_(DateTimePicker5.Date);
dm.upd_rab.ExecProc;
MessageDlg('��������� �������',mtInformation,[mbYes],0);
dm.Queryuv.Close;
dm.Queryuv.sql.Clear;
dm.Queryuv.sql.text:='select * from rabotnik where Date_yv is not  null';
dm.Queryuv.Open;
dm.Queryuv.Next;
dm.Queryuv.First;
dm.Queryuv.Last;
except on e:Exception do
begin
MessageDlg('���� ��������� ',mtWarning,[mbAbort],0);
Exit;
end;
end;
end;

procedure TFmen.DateTimePicker6Click(Sender: TObject);
begin
try
//exec report2 1, '2020-12-12'
dm.Queryot.Close;
dm.Queryot.SQL.Clear;
dm.Queryot.SQL.Text:='exec report2 ' +dm.Queryproekt.FieldByName('N_proekta').AsString+ ',' +QuotedStr(DateToStr_(DateTimePicker4.Date)) ;
dm.Queryot.ExecSQL;
dm.Queryot.Open;
except on e:Exception do
begin
ShowMessage('�� ������� ��������� ������');
exit;
end;
end;
end;

function Tfmen.DateToStr_(Dat : TDate): String;
begin
  Result:= IntToStr(MonthOf(Dat))+'.'
  +IntToStr(DayOf(Dat))+'.'
  +IntToStr(YearOf(Dat));
end;


procedure TFmen.DBLookupComboBox8Click(Sender: TObject);
begin
try
//exec report2 1, '2020-12-12'
dm.Queryot.Close;
dm.Queryot.SQL.Clear;
dm.Queryot.SQL.Text:='exec report2 ' +dm.Queryproekt.FieldByName('N_proekta').AsString+ ',' +QuotedStr(DateToStr_(DateTimePicker4.Date)) ;
dm.Queryot.ExecSQL;
dm.Queryot.Open;
except on e:Exception do
begin
ShowMessage('�� ������� ��������� ������');
exit;
end;
end;

end;

procedure TFmen.Button1Click(Sender: TObject);
begin
try
dm.ins_etap.Parameters.ParamByName('@Nam_etap').Value:=LabeledEdit2.Text;
if LabeledEdit2.Text='' then
begin
MessageDlg('������ �����  �������� ����� ',mtWarning,[mbAbort],0);
Exit;
end;
dm.ins_etap.ExecProc;
MessageDlg('��������� �������',mtInformation,[mbYes],0);
dm.etapQuery.Close;
dm.etapQuery.sql.Clear;
dm.etapQuery.sql.Text:='select * from etap';
dm.etapQuery.Open;
dm.etapQuery.Next;
dm.etapQuery.First;
dm.etapQuery.Last;
Except on e:Exception do
begin
MessageDlg('������ ����� ����� ',mtWarning,[mbAbort],0);
Exit;
end;
end;
end;

procedure TFmen.FormActivate(Sender: TObject);
begin
dm.etapQuery.Open;
dm.Querywork.Open;
dm.Querytask.Open;
dm.Queryproekt.Open;
dm.Queryrabotnik.Open;
dm.Querypass.Open;
dm.Querydol.Open;
dm.Queryuv.Open;
dm.Queryot.Open;
end;

procedure TFmen.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dm.etapQuery.close;
dm.Querywork.Close;
dm.Querytask.Close;
dm.Queryproekt.Close;
dm.Queryrabotnik.Close;
dm.Querypass.Close;
dm.Querydol.Close;
dm.Queryuv.Close;
dm.Queryot.Close;
end;

procedure TFmen.LabeledEdit2KeyPress(Sender: TObject; var Key: Char);
begin
if  not    ( key in ['�'..'�', '�'..'�', '1'..'9','0']) then
begin
  ShowMessage('�� ��� ����');
  exit;
end;
end;

end.
