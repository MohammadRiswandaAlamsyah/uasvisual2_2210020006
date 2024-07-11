unit Unit1;

interface

uses
  SysUtils, Classes, ZAbstractConnection, ZConnection, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, frxClass, frxDBSet;

type
  Tdmkustomer = class(TDataModule)
    conkustomer: TZConnection;
    zqrykustomer: TZQuery;
    dskustomer: TDataSource;
    frxdbdtstkustomer: TfrxDBDataset;
    frxrprtkustomer: TfrxReport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmkustomer: Tdmkustomer;

implementation

{$R *.dfm}

end.
