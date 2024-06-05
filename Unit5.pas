unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm5 = class(TForm)
    eNama: TEdit;
    Label1: TLabel;
    bInsert: TButton;
    bUpdate: TButton;
    bDelete: TButton;
    Label2: TLabel;
    eCari: TEdit;
    bCari: TButton;
    DBGrid1: TDBGrid;
    eDeskripsi: TEdit;
    Label3: TLabel;
    procedure bInsertClick(Sender: TObject);
    procedure bUpdateClick(Sender: TObject);
    procedure bDeleteClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    procedure ClearAllEdits;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  a: string;

implementation

uses
  Unit4;

{$R *.dfm}

procedure TForm5.ClearAllEdits;
var
  i: Integer;
begin
  for i := 0 to Self.ComponentCount - 1 do
  begin
    if Self.Components[i] is TEdit then
    begin
      TEdit(Self.Components[i]).Text := '';
    end;
  end;
end;

procedure TForm5.bInsertClick(Sender: TObject);
begin
DataModule4.Zsatuan.SQL.Clear;
DataModule4.Zsatuan.SQL.Add('insert into satuan values (null, "'+eNama.Text+'", "'+eDeskripsi.Text+'") ');
DataModule4.Zsatuan.ExecSQL;

DataModule4.Zsatuan.SQL.Clear;
DataModule4.Zsatuan.SQL.Add('select * from satuan');
DataModule4.Zsatuan.Open;
ShowMessage('Data Berhasil Disimpan!');
ClearAllEdits;
end;

procedure TForm5.bUpdateClick(Sender: TObject);
begin
DataModule4.Zsatuan.SQL.Clear;
if eNama.Text <> '' then
DataModule4.Zsatuan.SQL.Add('update satuan set nama_satuan = "'+eNama.Text+'" where id_satuan = "'+a+'" ');
DataModule4.Zsatuan.ExecSQL;

DataModule4.Zsatuan.SQL.Clear;
if eDeskripsi.Text <> '' then
DataModule4.Zsatuan.SQL.Add('update satuan set deskripsi_s = "'+eDeskripsi.Text+'" where id_satuan = "'+a+'" ');
DataModule4.Zsatuan.ExecSQL;

DataModule4.Zsatuan.SQL.Clear;
DataModule4.Zsatuan.SQL.Add('select * from satuan');
DataModule4.Zsatuan.Open;
ShowMessage('Data Berhasil Diubah!');
ClearAllEdits;
end;

procedure TForm5.bDeleteClick(Sender: TObject);
begin
DataModule4.Zsatuan.SQL.Clear;
DataModule4.Zsatuan.SQL.Add('delete from satuan where id_satuan = "'+a+'" ');
DataModule4.Zsatuan.ExecSQL;

DataModule4.Zsatuan.SQL.Clear;
DataModule4.Zsatuan.SQL.Add('select * from satuan');
DataModule4.Zsatuan.Open;
ShowMessage('Data Berhasil Dihapus!');
ClearAllEdits;
end;

procedure TForm5.DBGrid1CellClick(Column: TColumn);
begin
eNama.Text := DataModule4.Zsatuan.Fields[1].AsString;
eDeskripsi.Text := DataModule4.Zsatuan.Fields[2].AsString;
a := DataModule4.Zsatuan.Fields[0].AsString;
end;

end.
