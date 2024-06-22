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
    DBGrid1: TDBGrid;
    eDeskripsi: TEdit;
    Label3: TLabel;
    bBaru: TButton;
    bBatal: TButton;
    procedure bInsertClick(Sender: TObject);
    procedure bUpdateClick(Sender: TObject);
    procedure bDeleteClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure posisiawal;
    procedure bersih;
    procedure bBaruClick(Sender: TObject);
    procedure bBatalClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure eCariChange(Sender: TObject);
  private
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

procedure TForm5.bersih;
begin
    eNama.Clear;
    eDeskripsi.Clear;
end;

procedure TForm5.posisiawal;
begin
  bersih;
  bBaru.Enabled := True;
  bInsert.Enabled := False;
  bUpdate.Enabled := False;
  bDelete.Enabled := False;
  bBatal.Enabled := False;
  eNama.Enabled := False;
  eDeskripsi.Enabled := False;
end;

procedure TForm5.bInsertClick(Sender: TObject);
begin
    if eNama.Text = '' then
  begin
    ShowMessage('Nama Satuan Tidak Boleh Kosong!');
  end else
    if DataModule4.Zsatuan.Locate('nama_satuan', eNama.Text,[]) then
    begin
      ShowMessage('Nama Satuan '+eNama.Text+' Sudah Ada Dalam Sistem!');
    end else
    begin
DataModule4.Zsatuan.SQL.Clear;
DataModule4.Zsatuan.SQL.Add('insert into satuan values (null, "'+eNama.Text+'", "'+eDeskripsi.Text+'") ');
DataModule4.Zsatuan.ExecSQL;

DataModule4.Zsatuan.SQL.Clear;
DataModule4.Zsatuan.SQL.Add('select * from satuan');
DataModule4.Zsatuan.Open;
ShowMessage('Data Berhasil Disimpan!');
end;
posisiawal;
end;

procedure TForm5.bUpdateClick(Sender: TObject);
begin
    if eNama.Text = '' then
  begin
    ShowMessage('Nama Satuan Tidak Boleh Kosong!');
  end else
    if eNama.Text = DataModule4.Zsatuan.Fields[1].AsString then
    begin
      ShowMessage('Nama Satuan ['+eNama.Text+'] Tidak Ada Perubahan!');
    end else
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
end;
posisiawal;
end;

procedure TForm5.bDeleteClick(Sender: TObject);
begin
  if MessageDlg('Apakah Anda Yakin Ingin Menghapus Data ['+eNama.Text+']?', mtWarning, [mbYes, mbNo], 0) = mryes then
  begin
DataModule4.Zsatuan.SQL.Clear;
DataModule4.Zsatuan.SQL.Add('delete from satuan where id_satuan = "'+a+'" ');
DataModule4.Zsatuan.ExecSQL;

DataModule4.Zsatuan.SQL.Clear;
DataModule4.Zsatuan.SQL.Add('select * from satuan');
DataModule4.Zsatuan.Open;
ShowMessage('Data Berhasil Dihapus!');
end else
begin
  ShowMessage('Data Batal Dihapus!');
end;
bersih;
posisiawal;
end;

procedure TForm5.DBGrid1CellClick(Column: TColumn);
begin
eNama.Text := DataModule4.Zsatuan.Fields[1].AsString;
eDeskripsi.Text := DataModule4.Zsatuan.Fields[2].AsString;
a := DataModule4.Zsatuan.Fields[0].AsString;

eNama.Enabled := True;
eDeskripsi.Enabled := True;
bBaru.Enabled := False;
bInsert.Enabled := False;
bUpdate.Enabled := True;
bDelete.Enabled := True;
bBatal.Enabled := True;
end;

procedure TForm5.bBaruClick(Sender: TObject);
begin
bBaru.Enabled := False;
bInsert.Enabled := True;
bUpdate.Enabled := False;
bDelete.Enabled := False;
bBatal.Enabled := True;
eNama.Enabled := True;
eDeskripsi.Enabled := True;
bersih;
end;

procedure TForm5.bBatalClick(Sender: TObject);
begin
bersih;
posisiawal;
end;

procedure TForm5.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm5.eCariChange(Sender: TObject);
begin
with DataModule4.Zsatuan do
  begin
    SQL.Clear;
    SQL.Add('select * from satuan where nama_satuan like "%'+eCari.Text+'%" ');
    Open;
  end;
end;

end.
