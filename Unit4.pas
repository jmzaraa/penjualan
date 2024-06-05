unit Unit4;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection;

type
  TDataModule4 = class(TDataModule)
    ZConnection1: TZConnection;
    Zkatagori: TZQuery;
    dskatagori: TDataSource;
    dssatuan: TDataSource;
    Zsatuan: TZQuery;
    dssupplier: TDataSource;
    Zsupplier: TZQuery;
    dscustomer: TDataSource;
    Zcustomer: TZQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule4: TDataModule4;

implementation

{$R *.dfm}

end.
