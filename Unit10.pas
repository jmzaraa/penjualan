unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet;

type
  TForm10 = class(TForm)
    frxReport_katagori: TfrxReport;
    frxDBDataset_katagori: TfrxDBDataset;
    frxReport_satuan: TfrxReport;
    frxDBDataset_satuan: TfrxDBDataset;
    frxReport_customer: TfrxReport;
    frxDBDataset_customer: TfrxDBDataset;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

uses
  Unit4;

{$R *.dfm}

end.
