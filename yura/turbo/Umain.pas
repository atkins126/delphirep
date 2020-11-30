unit Umain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, StdCtrls, DBCtrls, ExtCtrls,dateutils;

type
  TFmain = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    laka: TGroupBox;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    LabeledEdit3: TLabeledEdit;
    LabeledEdit4: TLabeledEdit;
    Label3: TLabel;
    DateTimePicker2: TDateTimePicker;
    GroupBox1: TGroupBox;
    Button1: TButton;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox3: TGroupBox;
    Label4: TLabel;
    DateTimePicker3: TDateTimePicker;
    GroupBox4: TGroupBox;
    DBGrid2: TDBGrid;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    DBGrid3: TDBGrid;
    DBLookupComboBox2: TDBLookupComboBox;
    Label7: TLabel;
    DateTimePicker4: TDateTimePicker;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    DBGrid4: TDBGrid;
    Label8: TLabel;
    Label9: TLabel;
    DateTimePicker5: TDateTimePicker;
    DateTimePicker6: TDateTimePicker;
    GroupBox9: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    DateTimePicker7: TDateTimePicker;
    DateTimePicker8: TDateTimePicker;
    GroupBox10: TGroupBox;
    DBGrid5: TDBGrid;
    TabSheet6: TTabSheet;
    GroupBox11: TGroupBox;
    GroupBox12: TGroupBox;
    GroupBox13: TGroupBox;
    Button2: TButton;
    DBGrid6: TDBGrid;
    LabeledEdit5: TLabeledEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    Label12: TLabel;
    TabSheet7: TTabSheet;
    GroupBox14: TGroupBox;
    GroupBox15: TGroupBox;
    GroupBox16: TGroupBox;
    LabeledEdit6: TLabeledEdit;
    Label13: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    Button3: TButton;
    DBGrid7: TDBGrid;
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    function DateToStr_(Dat : TDate): String;
    procedure DateTimePicker3Change(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure DateTimePicker5Change(Sender: TObject);
    procedure DateTimePicker7Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fmain: TFmain;

implementation

uses Ureg, Udm, DB;

{$R *.dfm}
procedure TFmain.Button2Click(Sender: TObject);
begin
try
dm.Ins_dol.Parameters.ParamByName('@Nam_dol').Value:=LabeledEdit5.Text;
dm.Ins_dol.Parameters.ParamByName('@id_manager').Value:=dm.Querymanager.FieldByName('id_manager').AsString;

if LabeledEdit5.Text='' then
   begin
   MessageDlg('�������� ���� �����',mtInformation,[mbOK],0);
  Exit;
   end;
   dm.Ins_dol.ExecProc;
   MessageDlg('��������� �������',mtInformation,[mbOK],0);
   dm.Querydol.Close;
   dm.Querydol.sql.Clear;
   dm.Querydol.sql.text:='select * from Dolshnost';
   dm.Querydol.Open;
   dm.Querydol.Next;
   dm.Querydol.first;
   dm.Querydol.last;
except on e:Exception do
begin
ShowMessage('���� ���������');
exit;
end;
end;
end;

procedure TFmain.Button3Click(Sender: TObject);
begin
try
dm.Ins_manager.Parameters.ParamByName('@fio').Value:=LabeledEdit6.Text;
dm.Ins_manager.Parameters.ParamByName('@usverid').Value:=DBLookupComboBox4.KeyValue;
if  LabeledEdit6.Text='' then
begin
MessageDlg('������ �����',mtWarning,[mbAbort],0);
Exit;
end;
dm.Ins_manager.ExecProc;
MessageDlg('��������� �������',mtInformation,[mbOK],0);
dm.Querymanager.Close;
dm.Querymanager.sql.Clear;
dm.Querymanager.sql.Text:='select * from manager';
dm.Querymanager.Open;
dm.Querymanager.Next;
dm.Querymanager.First;
dm.Querymanager.last;
except on e:exception do
begin
MessageDlg('������ �����',mtWarning,[mbAbort],0);
Exit;
end;
end;
end;

procedure TFmain.DateTimePicker3Change(Sender: TObject);
begin
try
dm.Queryot.Close;
dm.Queryot.SQL.Clear;
dm.Queryot.SQL.Text:='exec report1' +QuotedStr(DateToStr_(DateTimePicker3.Date));
dm.Queryot.ExecSQL;
dm.Queryot.Open;
except on e:Exception do
begin
ShowMessage('�� ������� ��������� ������');
exit;
end;
end;
end;

procedure TFmain.DateTimePicker5Change(Sender: TObject);
begin
try
//exec t7 '2012-12-12','2020-12-12'
 dm.Queryot.Close;
 dm.Queryot.SQL.Clear;
 dm.Queryot.SQL.Text:='exec t7 '+QuotedStr(DateToStr_(DateTimePicker5.Date))+','+
 QuotedStr(DateToStr_(DateTimePicker6.Date));
 dm.Queryot.ExecSQL;
 dm.Queryot.Open;
except on e:Exception do
begin
ShowMessage('�� ������� ��������� ������');
Exit;
end;
end;
end;

procedure TFmain.DateTimePicker7Change(Sender: TObject);
begin
try
dm.Queryot.Close;
dm.Queryot.sql.Clear;
dm.Queryot.sql.text:='exec t8'+ QuotedStr(DateToStr_(DateTimePicker7.Date))+','
+QuotedStr(DateToStr_(DateTimePicker8.Date));
dm.Queryot.ExecSQL;
dm.Queryot.Open;
except on e:Exception do
begin
ShowMessage('�� ������� ��������� ������ ');
exit;
end;
end;

end;

function TFmain.DateToStr_(Dat : TDate): String;
begin
  Result:= IntToStr(MonthOf(Dat))+'.'
  +IntToStr(DayOf(Dat))+'.'
  +IntToStr(YearOf(Dat));
end;


procedure TFmain.DBLookupComboBox2Click(Sender: TObject);
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

procedure TFmain.Button1Click(Sender: TObject);
begin
if ((LabeledEdit3.Text='') or(LabeledEdit4.Text=''))  then
begin
MessageDlg('������ ����� ��������� ',mtWarning,[mbAbort],0);
  Exit;
end
else
begin
try
dm.ins_proekt.Parameters.ParamByName('@Nam_proect').Value:=LabeledEdit1.Text;
dm.ins_proekt.Parameters.ParamByName('@janr').Value:=LabeledEdit2.Text;
dm.ins_proekt.Parameters.ParamByName('@data_nash').Value:=DateToStr_(DateTimePicker1.Date);
dm.ins_proekt.Parameters.ParamByName('@id_manager').Value:=dm.Querymanager.FieldByName('id_manager').AsString;
dm.ins_proekt.Parameters.ParamByName('@cost_plan').Value:=StrToFloat(LabeledEdit3.Text);
dm.ins_proekt.Parameters.ParamByName('@cost_fact').Value:=StrToFloat(LabeledEdit4.Text);
dM.ins_proekt.Parameters.ParamByName('@dataendplan').Value:=DateToStr_(DateTimePicker2.Date);
if ((LabeledEdit1.Text='')or(LabeledEdit2.Text='') or(LabeledEdit3.Text='')or(LabeledEdit4.Text='')) then
begin
  MessageDlg('�������� ���� �����',mtInformation,[mbOK],0);
  Exit;
end;
dm.ins_proekt.ExecProc;
MessageDlg('��������� �������',mtInformation,[mbYes],0);
dm.Queryproekt.Close;
dm.Queryproekt.sql.Clear;
dm.Queryproekt.SQL.Text:='select * from Proect';
dm.Queryproekt.Open;
dm.Queryproekt.Next;
dm.Queryproekt.First;
dm.Queryproekt.Last;

except
MessageDlg('������ �����',mtWarning,[mbAbort],0);
Exit;
end;
end;
end;

procedure TFmain.FormActivate(Sender: TObject);
begin
dm.Queryproekt.Open;
dm.Queryot.Open;
dm.Querymanager.Open;
dm.Querydol.Open;
dm.Querypass.Open;
end;

procedure TFmain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dm.Queryot.Close;
dm.Queryproekt.Close;
dm.Querymanager.Close;
dm.Querydol.Close;
dm.Querypass.Close;
end;

procedure TFmain.FormShow(Sender: TObject);
begin
Freg.ShowModal;
end;

end.