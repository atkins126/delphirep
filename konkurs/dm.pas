unit dm;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TfDM = class(TDataModule)
    ADOConnection1: TADOConnection;
    Queryrab: TADOQuery;
    Queryuch: TADOQuery;
    DSrab: TDataSource;
    DSUch: TDataSource;
    ins_rab: TADOStoredProc;
    ins_uch: TADOStoredProc;
    Queryot: TADOQuery;
    DSot: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fDM: TfDM;

implementation

uses Unit1;

{$R *.dfm}

end.
