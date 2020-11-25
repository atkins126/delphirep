unit Udm;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TfDM = class(TDataModule)
    ADOConnection1: TADOConnection;
    Querypass: TADOQuery;
    DSpass: TDataSource;
    Querypassuserid: TAutoIncField;
    Querypassuser_name: TWideStringField;
    Querypassuser_pass: TWideStringField;
    Querytpe_s: TADOQuery;
    DStpe_s: TDataSource;
    Querymaster: TADOQuery;
    DSmaster: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fDM: TfDM;

implementation

uses Uins, Ureg, Uman;

{$R *.dfm}

end.
