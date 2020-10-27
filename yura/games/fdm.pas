unit fdm;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDM1 = class(TDataModule)
    ADOConnection1: TADOConnection;
    Querydol: TADOQuery;
    ins_dol: TADOStoredProc;
    DSdol: TDataSource;
    Queryetap: TADOQuery;
    DSetap: TDataSource;
    ins_etap: TADOStoredProc;
    Querywork: TADOQuery;
    DSwork: TDataSource;
    ins_work: TADOStoredProc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM1: TDM1;

implementation

uses ins_dol, ins_etap, ins_work;

{$R *.dfm}

end.
