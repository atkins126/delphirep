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
    Deletes: TTabSheet;
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
    SD3: TSaveDialog;
    OD3: TOpenDialog;
    OD4: TOpenDialog;
    SD4: TSaveDialog;
    N5: TMenuItem;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Panel3: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    GroupBox15: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    GroupBox16: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    N6: TMenuItem;
    FD1: TFontDialog;
    GroupBox17: TGroupBox;
    ListBox9: TListBox;
    ListBox10: TListBox;
    ListBox11: TListBox;
    ListBox12: TListBox;
    GroupBox18: TGroupBox;
    RadioButton13: TRadioButton;
    RadioButton14: TRadioButton;
    RadioButton15: TRadioButton;
    RadioButton16: TRadioButton;
    Panel4: TPanel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    GroupBox19: TGroupBox;
    Button5: TButton;
    GroupBox20: TGroupBox;
    Button6: TButton;
    GroupBox21: TGroupBox;
    RadioButton17: TRadioButton;
    RadioButton18: TRadioButton;
    GroupBox22: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    GroupBox23: TGroupBox;
    DBGrid3: TDBGrid;
    GroupBox24: TGroupBox;
    Memo3: TMemo;
    GroupBox25: TGroupBox;
    Button7: TButton;
    GroupBox26: TGroupBox;
    RadioButton19: TRadioButton;
    RadioButton20: TRadioButton;
    GroupBox27: TGroupBox;
    Label26: TLabel;
    Od1: TOpenDialog;
    SD1: TSaveDialog;
    OD2: TOpenDialog;
    GroupBox28: TGroupBox;
    ListBox13: TListBox;
    ListBox14: TListBox;
    ListBox15: TListBox;
    ListBox16: TListBox;
    GroupBox29: TGroupBox;
    RadioButton21: TRadioButton;
    RadioButton22: TRadioButton;
    RadioButton23: TRadioButton;
    RadioButton24: TRadioButton;
    Panel5: TPanel;
    Label25: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    GroupBox30: TGroupBox;
    Button8: TButton;
    GroupBox31: TGroupBox;
    DBGrid4: TDBGrid;
    Memo4: TMemo;
    GroupBox32: TGroupBox;
    Button9: TButton;
    GroupBox33: TGroupBox;
    RadioButton25: TRadioButton;
    RadioButton26: TRadioButton;
    GroupBox34: TGroupBox;
    Label30: TLabel;
    Label31: TLabel;
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
    procedure RadioButton8Click(Sender: TObject);
    procedure RadioButton9Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure RadioButton10Click(Sender: TObject);
    procedure ListBox7Click(Sender: TObject);
    procedure ListBox5Click(Sender: TObject);
    procedure ListBox6Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure Label9Click(Sender: TObject);
    procedure Label10Click(Sender: TObject);
    procedure Label11Click(Sender: TObject);
    procedure Label12Click(Sender: TObject);
    procedure Label13Click(Sender: TObject);
    procedure Label15Click(Sender: TObject);
    procedure Label14Click(Sender: TObject);
    procedure Label16Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label2Clic(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure Label7Click(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure RadioButton12Click(Sender: TObject);
    procedure RadioButton11Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure RadioButton13Click(Sender: TObject);
    procedure RadioButton14Click(Sender: TObject);
    procedure RadioButton15Click(Sender: TObject);
    procedure RadioButton16Click(Sender: TObject);
    procedure ListBox12Click(Sender: TObject);
    procedure ListBox11Click(Sender: TObject);
    procedure Label17Click(Sender: TObject);
    procedure Label19Click(Sender: TObject);
    procedure Label20Click(Sender: TObject);
    procedure Label18Click(Sender: TObject);
    procedure Label26Click(Sender: TObject);
    procedure RadioButton19Click(Sender: TObject);
    procedure RadioButton20Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure ListBox9Click(Sender: TObject);
    procedure ListBox10Click(Sender: TObject);
    procedure RadioButton21Click(Sender: TObject);
    procedure RadioButton22Click(Sender: TObject);
    procedure RadioButton23Click(Sender: TObject);
    procedure RadioButton24Click(Sender: TObject);
    procedure ListBox16Click(Sender: TObject);
    procedure ListBox15Click(Sender: TObject);
    procedure ListBox13Click(Sender: TObject);
    procedure ListBox14Click(Sender: TObject);
    procedure Label25Click(Sender: TObject);
    procedure Label27Click(Sender: TObject);
    procedure Label28Click(Sender: TObject);
    procedure Label29Click(Sender: TObject);
    procedure Label30Click(Sender: TObject);
    procedure Label31Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure RadioButton26Click(Sender: TObject);
    procedure RadioButton25Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
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

procedure TFmain.Button3Click(Sender: TObject);
begin
fdm.querytest.SQL.Clear;
fdm.querytest.SQL.Text:=str;
ShowMessage(fdm.querytest.SQL.Text);
fdm.querytest.ExecSQL;
fdm.querytest.Close();
fdm.querytest.SQL.Text:='select * from spec';
fdm.querytest.open();
end;

procedure TFmain.Button4Click(Sender: TObject);
begin
str:=Memo2.Text;
ShowMessage(str);
ShowMessage( fdm.querytest.SQL.Text);
end;

procedure TFmain.Button5Click(Sender: TObject);
begin
fdm.querytest.SQL.Clear;
fdm.querytest.SQL.Text:=str;
ShowMessage(fdm.querytest.SQL.Text);
fdm.querytest.ExecSQL;
fdm.querytest.Close();
fdm.querytest.SQL.Text:='select * from spec';
fdm.querytest.open();
end;

procedure TFmain.Button7Click(Sender: TObject);
begin
str:=Memo3.Text;
ShowMessage(str);
ShowMessage( fdm.querytest.SQL.Text);
end;

procedure TFmain.Button8Click(Sender: TObject);
begin
fdm.querytest.SQL.Clear;
fdm.querytest.SQL.Text:=str;
ShowMessage(fdm.querytest.SQL.Text);
fdm.querytest.ExecSQL;
fdm.querytest.Close();
fdm.querytest.SQL.Text:='select * from spec';
fdm.querytest.open();
end;

procedure TFmain.Button9Click(Sender: TObject);
begin
str:=Memo4.Text;
ShowMessage(str);
ShowMessage(fdm.querytest.SQL.Text);
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
 with Fmain do
 for I := 0 to ControlCount - 1 do
 begin
 if Controls[i] is TDBGrid then
 begin
 (Controls[i] as TDBGrid).ReadOnly:=true;
 end;
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

procedure TFmain.Label10Click(Sender: TObject);
begin
Memo1.Lines.Add(Label10.Caption);
end;

procedure TFmain.Label11Click(Sender: TObject);
begin
Memo1.Lines.Add(Label11.Caption);
end;

procedure TFmain.Label12Click(Sender: TObject);
begin
Memo1.Lines.Add(Label12.Caption);
end;

procedure TFmain.Label13Click(Sender: TObject);
begin
Memo2.Lines.Add(Label13.Caption);
end;

procedure TFmain.Label14Click(Sender: TObject);
begin
Memo2.Lines.Add(Label14.Caption);
end;

procedure TFmain.Label15Click(Sender: TObject);
begin
Memo2.Lines.Add(Label15.Caption);
end;

procedure TFmain.Label16Click(Sender: TObject);
begin
Memo2.Lines.Add(Label16.Caption);
end;

procedure TFmain.Label17Click(Sender: TObject);
begin
Memo3.Lines.Add(Label17.Caption);
end;

procedure TFmain.Label18Click(Sender: TObject);
begin
Memo3.Lines.Add(Label18.Caption);
end;

procedure TFmain.Label19Click(Sender: TObject);
begin
Memo3.Lines.Add(Label19.Caption);
end;

procedure TFmain.Label1Click(Sender: TObject);
begin
Memo2.Lines.Add(Label1.Caption+'()');
end;

procedure TFmain.Label20Click(Sender: TObject);
begin
Memo3.Lines.Add(Label20.Caption);
end;

procedure TFmain.Label25Click(Sender: TObject);
begin
Memo4.Lines.Add(Label25.Caption);
end;

procedure TFmain.Label26Click(Sender: TObject);
begin
Memo3.Lines.Add(Label26.Caption);
end;

procedure TFmain.Label27Click(Sender: TObject);
begin
  Memo4.Lines.Add(Label27.Caption);
end;

procedure TFmain.Label28Click(Sender: TObject);
begin
Memo4.Lines.Add(Label28.Caption);
end;

procedure TFmain.Label29Click(Sender: TObject);
begin
Memo4.Lines.Add(Label29.Caption);
end;

procedure TFmain.Label2Clic(Sender: TObject);
begin
Memo2.Lines.Add(Label2.Caption+'()')
end;

procedure TFmain.Label30Click(Sender: TObject);
begin
Memo4.Lines.Add(Label30.Caption);
end;

procedure TFmain.Label31Click(Sender: TObject);
begin
Memo4.Lines.Add(Label31.Caption);
end;

procedure TFmain.Label3Click(Sender: TObject);
begin
Memo2.Lines.Add(Label3.Caption+'()');
end;

procedure TFmain.Label4Click(Sender: TObject);
begin
Memo2.Lines.Add(Label4.Caption+'()');
end;

procedure TFmain.Label5Click(Sender: TObject);
begin
Memo1.Lines.Add(Label5.Caption);
end;

procedure TFmain.Label6Click(Sender: TObject);
begin
Memo1.Lines.Add(Label6.Caption);
end;

procedure TFmain.Label7Click(Sender: TObject);
begin
Memo1.Lines.Add(Label7.Caption);
end;

procedure TFmain.Label8Click(Sender: TObject);
begin
Memo1.Lines.Add(Label8.Caption);
end;

procedure TFmain.Label9Click(Sender: TObject);
begin
Memo1.Lines.Add(Label9.Caption);
end;

procedure TFmain.ListBox10Click(Sender: TObject);
var i:Integer;
begin
for I := 0 to ListBox10.Items.Count - 1 do
begin
  if ListBox10.Selected[i]  then Memo3.Lines.Add(ListBox10.Items.Strings[i]);
end;

end;

procedure TFmain.ListBox11Click(Sender: TObject);
var i:Integer;
begin
for I := 0 to ListBox11.Items.Count - 1 do
  begin
    if  ListBox11.Selected[i] then Memo3.Lines.Add(ListBox11.Items.Strings[i]);
  end;
end;

procedure TFmain.ListBox12Click(Sender: TObject);
var i:Integer;
begin
for I := 0 to ListBox12.Items.Count - 1 do
begin
if ListBox12.Selected[i] then Memo3.Lines.Add(ListBox12.Items.Strings[i]);
end;
end;

procedure TFmain.ListBox13Click(Sender: TObject);
var i:Integer;
begin
for I := 0 to ListBox13.Items.Count - 1 do
begin
if ListBox13.Selected[i] then Memo4.Lines.Add(ListBox13.Items.Strings[i]);
end;

end;

procedure TFmain.ListBox14Click(Sender: TObject);
var i:Integer;
begin
for I := 0 to ListBox14.Items.Count - 1 do
begin
if ListBox14.Selected[i] then Memo4.Lines.Add(ListBox14.Items.Strings[i]);
end;

end;

procedure TFmain.ListBox15Click(Sender: TObject);
var i:Integer;
begin
for I := 0 to ListBox15.Items.Count - 1 do
begin
if ListBox15.Selected[i] then Memo4.Lines.Add(ListBox15.Items.Strings[i]);
end;
end;

procedure TFmain.ListBox16Click(Sender: TObject);
var i:Integer;
begin
for I := 0 to ListBox16.Items.Count - 1 do
begin
if ListBox16.Selected[i] then Memo4.Lines.Add(ListBox16.Items.Strings[i]);
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

procedure TFmain.ListBox5Click(Sender: TObject);
var i:Integer;
begin
for I := 0 to ListBox5.Items.Count - 1 do
  begin
    if  ListBox5.Selected[i] then Memo2.Lines.Add(ListBox5.Items.Strings[i]);   
  end;
end;

procedure TFmain.ListBox6Click(Sender: TObject);
var i:Integer;
begin
for I := 0 to ListBox6.Items.Count - 1 do
  begin
    if ListBox6.Selected[i] then Memo2.Lines.Add(ListBox6.Items.Strings[i]);   
  end;
end;

procedure TFmain.ListBox7Click(Sender: TObject);
var i:Integer;
begin
for I := 0 to ListBox7.Items.Count - 1 do
  begin
if ListBox7.Selected[i] then Memo2.Lines.Add(ListBox7.Items.Strings[i]);
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

procedure TFmain.ListBox9Click(Sender: TObject);
var i:Integer;
begin
for I := 0 to ListBox9.Items.Count - 1 do
  begin
if ListBox9.Selected[i] then  Memo3.Lines.Add(ListBox9.Items.Strings[i]);
  end;
end;

procedure TFmain.N1Click(Sender: TObject);
var ai:boolean;
var p,p1,p2,p3:TPoint;
begin
p.Y:=0;
p2.Y:=0;
p.X:=7;
p1.y:=0;
p1.X:=12;
p2.X:=5;
p3.Y:=0;
p3.X:=5;
ai:=true;
Memo1.Visible:=true;
Memo2.Visible:=true;
Memo3.Visible:=true;
Memo4.Visible:=true;
Memo1.Clear;
Memo2.Clear;
Memo3.Clear;
Memo4.Clear;
//mo1.SetFocus(0);
Memo1.SelStart:=0;
Memo2.SelStart:=0;
Memo3.SelStart:=0;
Memo4.SelStart:=0;
if ai=true then
begin
Memo1.Lines.Add('select');
Memo1.CaretPos:=p;
Memo2.Lines.Add('insert into ');
Memo2.CaretPos:=p1;
Memo3.Lines.Add('update');
Memo3.CaretPos:=p2;
Memo4.Lines.Add('delete');
Memo4.CaretPos:=p3;

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

procedure TFmain.N5Click(Sender: TObject);

begin
Memo1.Clear;
Memo2.Clear;
Memo3.Clear;
Memo4.Clear;
end;

procedure TFmain.N6Click(Sender: TObject);

begin
if  FD1.Execute then
begin
   Memo1.Font:=fd1.Font;
   Memo1.font.Size:=fd1.Font.Size;
   Memo1.Font.Color:=FD1.Font.Color;
   Memo2.Font:=fd1.Font;
   Memo2.font.Size:=fd1.Font.Size;
   Memo2.Font.Color:=FD1.Font.Color;
   Memo3.font.Size:=fd1.Font.Size;
   Memo3.Font.Color:=FD1.Font.Color;
   Memo4.font.Size:=fd1.Font.Size;
   Memo4.Font.Color:=FD1.Font.Color;



end;


end;




procedure TFmain.RadioButton10Click(Sender: TObject);
var i:Integer;
begin
Label4.Caption:=RadioButton10.Caption;
ListBox6.Visible:=true;
fdm.Querykaph.Open;
fdm.Querykaph.First;
for I := 0 to fdm.Querykaph.FieldCount - 1 do
  begin
ListBox6.Items.Add(fDM.Querykaph.Fields[i].FieldName);
  end;
fdm.Querykaph.Close;
RadioButton10.Enabled:=False;
end;

procedure TFmain.RadioButton11Click(Sender: TObject);
begin
if RadioButton11.Checked=true then
begin
Button3.Enabled:=False;
Memo2.SetFocus;
MessageDlg('���������� ������',mtInformation,[mbYes],0  );
end;
end;

procedure TFmain.RadioButton12Click(Sender: TObject);
begin
RadioButton12.Checked:=TRUE;
if RadioButton12.Checked=True then
begin
 Button3.Enabled:=true;
end;
end;

procedure TFmain.RadioButton13Click(Sender: TObject);
var i:Integer;
begin
Label17.Caption:=RadioButton13.Caption;
ListBox12.Visible:=true;
fdm.queryspec.Open;
fdm.queryspec.First;
for I := 0 to  fdm.Queryspec.FieldCount - 1 do
begin
  ListBox12.Items.Add(fdm.Queryspec.Fields[i].FieldName);
end;
fdm.Queryspec.Close;
RadioButton13.Enabled:=False;
end;


procedure TFmain.RadioButton14Click(Sender: TObject);
var i:Integer;
begin
Label18.Caption:=RadioButton14.Caption;
RadioButton14.Checked:=true;
ListBox11.Visible:=true;
fDM.Querystud.Open;
fDM.Querystud.first;
for I := 0 to fdm.Querystud.FieldCount - 1 do
begin
ListBox11.Items.Add(fdm.Querystud.Fields[i].FieldName);
end;
fDM.Querystud.Close;
RadioButton14.Enabled:=False;
end;

procedure TFmain.RadioButton15Click(Sender: TObject);
var i :Integer;
begin
Label19.Caption:=RadioButton15.Caption;
ListBox9.Visible:=true;
RadioButton15.Checked:=true;
fdm.Querygrupp.Open;
fdm.Querygrupp.First;
for I := 0 to fdm.Querygrupp.FieldCount - 1 do
begin
ListBox9.Items.Add(fdm.Querygrupp.Fields[i].FieldName);
end;
FDm.Querygrupp.Close;
RadioButton15.Enabled:=False;
end;

procedure TFmain.RadioButton16Click(Sender: TObject);
var i:Integer;
begin
Label20.Caption:=RadioButton16.Caption;
ListBox10.Visible:=true;
fdm.Querykaph.Open;
fdm.Querykaph.First;
for I := 0 to fdm.Querykaph.FieldCount- 1 do
  begin
  ListBox10.Items.Add(fdm.Querykaph.Fields[i].FieldName)
  end;
      fdm.Querykaph.Close;
      RadioButton16.Enabled:=False;
end;

procedure TFmain.RadioButton19Click(Sender: TObject);
begin
if RadioButton19.Checked=true then
begin
Button5.Enabled:=False;
Memo3.SetFocus;
MessageDlg('���������� ������',mtInformation,[mbYes],0  );
end;
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

procedure TFmain.RadioButton20Click(Sender: TObject);
begin
RadioButton20.Checked:=true;
if RadioButton20.Checked=true then
begin
Button5.Enabled:=true;
end;

end;

procedure TFmain.RadioButton21Click(Sender: TObject);
var i:Integer;
begin
Label25.Caption:=RadioButton21.Caption;
ListBox16.Visible:=true;
fdm.Queryspec.Open;
fdm.Queryspec.First;
for I := 0 to fDM.Queryspec.FieldCount - 1 do
begin
ListBox16.Items.Add(fdm.Queryspec.Fields[i].FieldName);
end;
fdm.Queryspec.close;
RadioButton21.Enabled:=False;
end;

procedure TFmain.RadioButton22Click(Sender: TObject);
var i:Integer;
begin
Label27.Caption:=RadioButton22.Caption;
ListBox15.Visible:=true;
fdm.Querystud.Open;
fdm.Querystud.First;
for I := 0 to fDM.Querystud.FieldCount - 1 do
begin
ListBox15.Items.Add(fdm.Querystud.Fields[i].FieldName);
end;
fdm.Querystud.close;
RadioButton22.Enabled:=False;
end;

procedure TFmain.RadioButton23Click(Sender: TObject);
var i:Integer;
begin
Label28.Caption:=RadioButton23.Caption;
ListBox13.Visible:=true;
fdm.Querygrupp.Open;
fdm.Querygrupp.First;
for I := 0 to fDM.Querygrupp.FieldCount - 1 do
begin
ListBox13.Items.Add(fdm.Querygrupp.Fields[i].FieldName);
end;
fdm.Querygrupp.close;
RadioButton23.Enabled:=False;
end;

procedure TFmain.RadioButton24Click(Sender: TObject);
var i:Integer;
begin
Label29.Caption:=RadioButton24.Caption;
ListBox14.Visible:=true;
fdm.Querykaph.Open;
fdm.Querykaph.First;
for I := 0 to fDM.Querykaph.FieldCount - 1 do
begin
ListBox14.Items.Add(fdm.Querykaph.Fields[i].FieldName);
end;
fdm.Querykaph.close;
RadioButton24.Enabled:=False;

end;

procedure TFmain.RadioButton25Click(Sender: TObject);
begin
if RadioButton25.Checked=true then
begin
Button8.Enabled:=False;
Memo4.SetFocus;
MessageDlg('���������� ������',mtInformation,[mbYes],0  );
end;

end;

procedure TFmain.RadioButton26Click(Sender: TObject);
begin
RadioButton26.Checked:=true;
if RadioButton26.Checked=true then
begin
Button8.Enabled:=true;
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
Label5.Caption:=RadioButton3.Caption;
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
Label6.Caption:=RadioButton4.Caption;
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
Label7.Caption:=RadioButton5.Caption;
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
Label8.Caption:=RadioButton6.Caption;
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
Label1.Caption:=RadioButton7.Caption;
ListBox8.Visible:=true;
fDM.Queryspec.Open;
for I := 0 to fdm.Queryspec.FieldCount - 1 do
  begin
  ListBox8.Items.Add(fDM.Queryspec.Fields[i].FieldName);
  end;
fdm.Queryspec.Close;
RadioButton7.Enabled:=False;
end;

procedure TFmain.RadioButton8Click(Sender: TObject);
var i:Integer;
begin
Label2.Caption:=RadioButton8.Caption;
fdm.Querystud.Open;
fdm.Querystud.first;
ListBox7.Visible:=true;
for I := 0 to fdm.Querystud.FieldCount - 1 do
begin
 ListBox7.Items.Add(fdm.Querystud.Fields[i].FieldName)
end;
fdm.Querystud.Close;
RadioButton8.Enabled:=False;
end;

procedure TFmain.RadioButton9Click(Sender: TObject);
var i:integer;
begin
Label3.Caption:=RadioButton9.Caption;
ListBox5.Visible:=true;
fdm.Querygrupp.Open;
fdm.Querygrupp.first;
for I := 0 to fdm.Querygrupp.FieldCount - 1 do
  begin
    ListBox5.Items.Add(fdm.Querygrupp.Fields[i].FieldName);
  end;
fdm.Querygrupp.Close;
RadioButton9.Enabled:=False;
end;

end.
