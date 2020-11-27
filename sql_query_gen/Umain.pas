unit Umain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, ComCtrls, StdCtrls, Grids, DBGrids, Menus;

type
  TFmain = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Button1: TButton;
    Panel1: TPanel;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    DBGrid1: TDBGrid;
    Memo1: TMemo;
    GroupBox5: TGroupBox;
    Button2: TButton;
    GroupBox6: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    ListBox1: TListBox;
    ListBox2: TListBox;
    ListBox3: TListBox;
    ListBox4: TListBox;
    GroupBox7: TGroupBox;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    SD1: TSaveDialog;
    GroupBox8: TGroupBox;
    ListBox5: TListBox;
    ListBox6: TListBox;
    ListBox7: TListBox;
    ListBox8: TListBox;
    GroupBox9: TGroupBox;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    RadioButton9: TRadioButton;
    RadioButton10: TRadioButton;
    GroupBox10: TGroupBox;
    Button3: TButton;
    GroupBox11: TGroupBox;
    DBGrid2: TDBGrid;
    GroupBox12: TGroupBox;
    Memo2: TMemo;
    GroupBox13: TGroupBox;
    Button4: TButton;
    GroupBox14: TGroupBox;
    RadioButton11: TRadioButton;
    RadioButton12: TRadioButton;
    SD2: TSaveDialog;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    Od1: TOpenDialog;
    OD2: TOpenDialog;
    SD3: TSaveDialog;
    OD3: TOpenDialog;
    OD4: TOpenDialog;
    SD4: TSaveDialog;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure ListBox4Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure ListBox3Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure RadioButton6Click(Sender: TObject);
    procedure ListBox2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure RadioButton7Click(Sender: TObject);
    procedure ListBox8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fmain: TFmain;
  var str:string;

implementation

uses Udm, DB;

{$R *.dfm}

procedure TFmain.Button1Click(Sender: TObject);
begin
fdm.querytest.Close;
fdm.querytest.SQL.Clear;
fdm.querytest.SQL.Text:=str;
ShowMessage(fdm.querytest.SQL.Text);
fdm.querytest.Open;
end;

procedure TFmain.Button2Click(Sender: TObject);

begin
str:=Memo1.Text;
ShowMessage(str);
ShowMessage( fdm.querytest.SQL.Text);
end;

procedure TFmain.FormActivate(Sender: TObject);
var i:Integer;
begin
fDM.Queryspec.Open;
fdm.Querystud.Open;
fDM.Querykaph.Open;
fDM.Querygrupp.Open;
fdm.querytest.Open;
Button1.Enabled:=False;
with GroupBox1 do
for I := 0 to ControlCount - 1 do
if (Controls[i] is TListBox) then
begin
(Controls[i] as TListBox).Visible:=False;
end;

end;

procedure TFmain.FormClose(Sender: TObject; var Action: TCloseAction);
var i:Integer;
begin
fDM.Queryspec.Close;
fdm.Querystud.Close;
fDM.Querykaph.Close;
fDM.Querygrupp.Close;
fdm.querytest.Close;
with GroupBox7 do
for I := 0 to ControlCount - 1 do
  begin
    if (Controls[i] is TRadioButton ) then
    begin
      (Controls[i] as TRadioButton).Enabled:=True;
    end;
  end;
end;

procedure TFmain.ListBox1Click(Sender: TObject);
var i:Integer;
begin
for I := 0 to ListBox1.Items.Count - 1 do
begin
if ListBox1.Selected[i] then Memo1.Lines.Add(ListBox1.Items.Strings[i]);
end;
end;

procedure TFmain.ListBox2Click(Sender: TObject);
var i:Integer;
begin
for I := 0 to ListBox2.Items.Count - 1 do
begin
  if ListBox2.Selected[i] then Memo1.Lines.Add(ListBox2.Items.Strings[i]);
end;

end;

procedure TFmain.ListBox3Click(Sender: TObject);
var i:Integer;
begin
for I := 0 to ListBox3.Items.Count - 1 do
  begin
    if ListBox3.Selected[i] then Memo1.Lines.Add(ListBox3.Items.Strings[i]);
  end;
end;

procedure TFmain.ListBox4Click(Sender: TObject);
var i:Integer;
begin
for i := 0 to ListBox4.Items.Count - 1 do
begin
  if ListBox4.Selected[i] then Memo1.Lines.Add(ListBox4.Items.Strings[i]);
end;
  
end;

procedure TFmain.ListBox8Click(Sender: TObject);
var i:Integer;
begin
for I := 0 to ListBox8.Items.Count - 1 do
  begin
if ListBox8.Selected[i] then Memo2.Lines.Add(ListBox8.Items.Strings[i]);
  end;

end;

procedure TFmain.N1Click(Sender: TObject);
begin
Memo1.Visible:=true;
Memo1.SetFocus;
Memo1.Clear;
Memo1.SelStart:=0;
PageControl1.ActivePageIndex:=0;
if PageControl1.ActivePageIndex=0 then
begin
Memo1.Lines.Add('select');
end;




end;

procedure TFmain.N2Click(Sender: TObject);
begin
if SD1.Execute then
begin
Memo1.Lines.SaveToFile(SD1.FileName+'.'+'sql');
ShowMessage('���� �������� � ������'+SD1.FileName+'.'+'sql' );
end;
end;

procedure TFmain.N3Click(Sender: TObject);
begin
if od1.Execute then
begin
Memo1.Clear;
Memo1.Lines.LoadFromFile(OD1.FileName);
ShowMessage('��������� �� �����'+ OD1.FileName);
end;
end;

procedure TFmain.N4Click(Sender: TObject);
begin
Close;
end;

procedure TFmain.RadioButton1Click(Sender: TObject);
begin
RadioButton1.Checked:=true;
if RadioButton1.Checked=true then
begin
Button1.Enabled:=False;
Memo1.SetFocus;
ShowMessage('���������� ������');
end;
end;

procedure TFmain.RadioButton2Click(Sender: TObject);
begin
RadioButton2.Checked:=true;
if RadioButton2.Checked=true then
begin
Button1.Enabled:=true;
end;

end;

procedure TFmain.RadioButton3Click(Sender: TObject);
var i:Integer;
begin
ListBox4.Visible:=true;
fdm.Queryspec.Open;
fdm.Queryspec.First;
for i:=0 to fDM.Queryspec.FieldCount-1 do
begin
  ListBox4.Items.Add(fDM.Queryspec.Fields[i].FieldName);
end;
fdm.Queryspec.Close;
RadioButton3.Enabled:=False;
end;

procedure TFmain.RadioButton4Click(Sender: TObject);
var i:Integer;
begin
ListBox3.Visible:=true;
fdm.Querystud.Open;
fdm.Querystud.First;
for I := 0 to fdm.Querystud.FieldCount - 1 do
begin
  ListBox3.Items.Add(fdm.Querystud.Fields[i].FieldName);
end;
fdm.Querystud.Close;
RadioButton4.Enabled:=False;
end;

procedure TFmain.RadioButton5Click(Sender: TObject);
var i:Integer;
begin
ListBox1.Visible:=true;
fdm.Querygrupp.open;
fdm.Querygrupp.First;
for I := 0 to fdm.Querygrupp.FieldCount - 1 do
begin
  ListBox1.Items.Add(fdm.Querygrupp.Fields[i].FieldName);
end;
fdm.Querygrupp.Close;
RadioButton5.Enabled:=false;
end;

procedure TFmain.RadioButton6Click(Sender: TObject);
var i:Integer;
begin
ListBox2.Visible:=true;
fdm.Querykaph.Open;
fdm.Querykaph.First;
for I := 0 to fdm.Querykaph.FieldCount - 1 do
begin
ListBox2.Items.Add(fdm.Querykaph.Fields[i].FieldName);
end;
fdm.Querykaph.Close;
RadioButton6.Enabled:=False;
end;

procedure TFmain.RadioButton7Click(Sender: TObject);
var i:Integer;
begin
ListBox8.Visible:=true;
fDM.Queryspec.Open;
for I := 0 to fdm.Queryspec.FieldCount - 1 do
  begin
  ListBox8.Items.Add(fDM.Queryspec.Fields[i].FullName);
  end;
fdm.Queryspec.Close;
RadioButton7.Enabled:=False;
end;

end.