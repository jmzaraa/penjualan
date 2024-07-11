unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TForm9 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    eBarcode: TEdit;
    eNama: TEdit;
    Label3: TLabel;
    eJual: TEdit;
    eBeli: TEdit;
    Label4: TLabel;
    eStok: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBGrid1: TDBGrid;
    eCari: TEdit;
    bBaru: TButton;
    Label10: TLabel;
    cmbKatagori: TComboBox;
    cmbSatuan: TComboBox;
    cmbSupplier: TComboBox;
    cmbUser: TComboBox;
    bInsert: TButton;
    bUpdate: TButton;
    bDelete: TButton;
    bBatal: TButton;
    bCetak: TButton;
    procedure posisiawal;
    procedure bersih;
    function editFull: Boolean;
    procedure bBaruClick(Sender: TObject);
    procedure bDeleteClick(Sender: TObject);
    procedure eCariChange(Sender: TObject);
    procedure bBatalClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure cmbKatagoriDropDown(Sender: TObject);
    procedure cmbSatuanDropDown(Sender: TObject);
    procedure cmbSupplierDropDown(Sender: TObject);
    procedure cmbUserDropDown(Sender: TObject);
    procedure bInsertClick(Sender: TObject);
    procedure bUpdateClick(Sender: TObject);
    procedure bCetakClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;
  a: string;

implementation

uses
  Unit4, Unit10;

{$R *.dfm}

procedure TForm9.bersih;
begin
  eBarcode.Clear;
  eNama.Clear;
  eJual.Clear;
  eBeli.Clear;
  eStok.Clear;
  cmbKatagori.Clear;
  cmbSatuan.Clear;
  cmbSupplier.Clear;
  cmbUser.Clear;
end;

function TForm9.editFull: Boolean;
begin
Result := (eBarcode.Text <> '') and
            (eNama.Text <> '') and
            (eJual.Text <> '') and
            (eBeli.Text <> '') and
            (eStok.Text <> '') and
            (cmbKatagori.Text <> '') and
            (cmbSatuan.Text <> '') and
            (cmbSupplier.Text <> '') and
            (cmbUser.Text <> '');
end;

procedure TForm9.posisiawal;
begin
  bersih;
  bBaru.Enabled := True;
  bInsert.Enabled := False;
  bUpdate.Enabled := False;
  bDelete.Enabled := False;
  bBatal.Enabled := False;

  eBarcode.Enabled := False;
  eNama.Enabled := False;
  eJual.Enabled := False;
  eBeli.Enabled := False;
  eStok.Enabled := False;
  eCari.Enabled := False;
  cmbKatagori.Enabled := False;
  cmbSatuan.Enabled := False;
  cmbSupplier.Enabled := False;
  cmbUser.Enabled := False;
end;

procedure TForm9.bBaruClick(Sender: TObject);
begin
bBaru.Enabled := False;
bInsert.Enabled := True;
bUpdate.Enabled := False;
bDelete.Enabled := False;
bBatal.Enabled := True;

eBarcode.Enabled := True;
eNama.Enabled := True;
eJual.Enabled := True;
eBeli.Enabled := True;
eStok.Enabled := True;
eCari.Enabled := True;
cmbKatagori.Enabled := True;
cmbSatuan.Enabled := True;
cmbSupplier.Enabled := True;
cmbUser.Enabled := True;
end;

procedure TForm9.bDeleteClick(Sender: TObject);
begin
 if MessageDlg('Apakah Anda Yakin Ingin Menghapus Data ['+eNama.Text+']?', mtWarning, [mbYes, mbNo], 0) = mryes then
  begin
DataModule4.Zbarang.SQL.Clear;
DataModule4.Zbarang.SQL.Add('delete from barang where id_barang = "'+a+'" ');
DataModule4.Zbarang.ExecSQL;

DataModule4.Zbarang.SQL.Clear;
DataModule4.Zbarang.SQL.Add('select * from barang');
DataModule4.Zbarang.Open;
ShowMessage('Data Berhasil Dihapus!');
end;
posisiawal;
end;

procedure TForm9.eCariChange(Sender: TObject);
begin
begin
with DataModule4.Zbarang do
  begin
    SQL.Clear;
    SQL.Add('select * from barang where nama_barang like "%'+eCari.Text+'%" ');
    Open;
  end;
end;
end;

procedure TForm9.bBatalClick(Sender: TObject);
begin
bersih;
posisiawal;
end;

procedure TForm9.DBGrid1CellClick(Column: TColumn);
begin
a := DataModule4.Zbarang.Fields[0].AsString;
eBarcode.Text := DataModule4.Zbarang.Fields[1].AsString;
eNama.Text := DataModule4.Zbarang.Fields[2].AsString;
eJual.Text := DataModule4.Zbarang.Fields[3].AsString;
eBeli.Text := DataModule4.Zbarang.Fields[4].AsString;
eStok.Text := DataModule4.Zbarang.Fields[5].AsString;
cmbKatagori.Text := DataModule4.Zbarang.Fields[6].AsString;
cmbSatuan.Text := DataModule4.Zbarang.Fields[7].AsString;
cmbSupplier.Text := DataModule4.Zbarang.Fields[8].AsString;
cmbUser.Text := DataModule4.Zbarang.Fields[9].AsString;

eBarcode.Enabled := True;
eNama.Enabled := True;
eJual.Enabled := True;
eBeli.Enabled := True;
eStok.Enabled := True;
eCari.Enabled := True;
cmbKatagori.Enabled := True;
cmbSatuan.Enabled := True;
cmbSupplier.Enabled := True;
cmbUser.Enabled := True;

bBaru.Enabled := False;
bInsert.Enabled := False;
bUpdate.Enabled := True;
bDelete.Enabled := True;
bBatal.Enabled := True;
end;

procedure TForm9.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm9.cmbKatagoriDropDown(Sender: TObject);
begin
  DataModule4.Zbarang.SQL.Text := 'SELECT id_katagori FROM katagori';
  DataModule4.Zbarang.Open;

  cmbKatagori.Clear;
  DataModule4.Zbarang.First;

  while not DataModule4.Zbarang.Eof do
  begin
    cmbKatagori.Items.Add(DataModule4.Zbarang.FieldByName('id_katagori').AsString);
    DataModule4.Zbarang.Next;
  end;
  DataModule4.Zbarang.Close;
end;

procedure TForm9.cmbSatuanDropDown(Sender: TObject);
begin
  DataModule4.Zbarang.SQL.Text := 'SELECT id_satuan FROM satuan';
  DataModule4.Zbarang.Open;

  cmbSatuan.Clear;
  DataModule4.Zbarang.First;

  while not DataModule4.Zbarang.Eof do
  begin
    cmbSatuan.Items.Add(DataModule4.Zbarang.FieldByName('id_satuan').AsString);
    DataModule4.Zbarang.Next;
  end;
  DataModule4.Zbarang.Close;
end;

procedure TForm9.cmbSupplierDropDown(Sender: TObject);
begin
  DataModule4.Zbarang.SQL.Text := 'SELECT id_supplier FROM supplier';
  DataModule4.Zbarang.Open;

  cmbSupplier.Clear;
  DataModule4.Zbarang.First;

  while not DataModule4.Zbarang.Eof do
  begin
    cmbSupplier.Items.Add(DataModule4.Zbarang.FieldByName('id_supplier').AsString);
    DataModule4.Zbarang.Next;
  end;
  DataModule4.Zbarang.Close;
end;

procedure TForm9.cmbUserDropDown(Sender: TObject);
begin
  DataModule4.Zbarang.SQL.Text := 'SELECT id_user FROM user';
  DataModule4.Zbarang.Open;

  cmbUser.Clear;
  DataModule4.Zbarang.First;

  while not DataModule4.Zbarang.Eof do
  begin
    cmbUser.Items.Add(DataModule4.Zbarang.FieldByName('id_user').AsString);
    DataModule4.Zbarang.Next;
  end;
  DataModule4.Zbarang.Close;
end;

procedure TForm9.bInsertClick(Sender: TObject);
begin
if not editFull then
  begin
    ShowMessage('Data Tidak Boleh Kosong!');
  end else
    if DataModule4.Zbarang.Locate('barcode', eBarcode.Text,[]) or
    DataModule4.Zbarang.Locate('nama_barang', eNama.Text,[])  then
    begin
      ShowMessage('Data Sudah Ada Dalam Sistem!');
    end else
    begin
DataModule4.Zbarang.SQL.Clear;
DataModule4.Zbarang.SQL.Add('insert into barang values(null, "'+eBarcode.Text+'", "'+eNama.Text+'", "'+eJual.Text+'", "'+eBeli.Text+'", "'+eStok.Text+'","'+cmbKatagori.Text+'", "'+cmbSatuan.Text+'", "'+cmbSupplier.Text+'", "'+cmbUser.Text+'") ');
DataModule4.Zbarang.ExecSQL;

DataModule4.Zbarang.SQL.Clear;
DataModule4.Zbarang.SQL.Add('select * from barang');
DataModule4.Zbarang.Open;
ShowMessage('Data Berhasil Disimpan!');
end;
posisiawal;
end;

procedure TForm9.bUpdateClick(Sender: TObject);
begin
  if not editFull then
  begin
    ShowMessage('Data Tidak Boleh Kosong!');
  end else
    if (DataModule4.Zbarang.Fields[1].AsString = eBarcode.Text) and
    (DataModule4.Zbarang.Fields[2].AsString = eNama.Text) then
    begin
      ShowMessage('Data Sudah Ada Dalam Sistem!');
    end else
    begin
DataModule4.Zbarang.SQL.Clear;
if eBarcode.Text <> '' then
DataModule4.Zbarang.SQL.Add('update barang set barcode = "'+eBarcode.Text+'" where id_barang = "'+a+'" ');
DataModule4.Zbarang.ExecSQL;

DataModule4.Zbarang.SQL.Clear;
if eNama.Text <> '' then
DataModule4.Zbarang.SQL.Add('update barang set nama_barang = "'+eNama.Text+'" where id_barang = "'+a+'" ');
DataModule4.Zbarang.ExecSQL;

DataModule4.Zbarang.SQL.Clear;
if eJual.Text <> '' then
DataModule4.Zbarang.SQL.Add('update barang set harga_jual = "'+eJual.Text+'" where id_barang = "'+a+'" ');
DataModule4.Zbarang.ExecSQL;

DataModule4.Zbarang.SQL.Clear;
if eBeli.Text <> '' then
DataModule4.Zbarang.SQL.Add('update barang set harga_beli = "'+eBeli.Text+'" where id_barang = "'+a+'" ');
DataModule4.Zbarang.ExecSQL;

DataModule4.Zbarang.SQL.Clear;
if eStok.Text <> '' then
DataModule4.Zbarang.SQL.Add('update barang set stok_barang = "'+eStok.Text+'" where id_barang = "'+a+'" ');
DataModule4.Zbarang.ExecSQL;

DataModule4.Zbarang.SQL.Clear;
if cmbKatagori.Text <> '' then
DataModule4.Zbarang.SQL.Add('update barang set id_katagori = "'+cmbKatagori.Text+'" where id_barang = "'+a+'" ');
DataModule4.Zbarang.ExecSQL;

DataModule4.Zbarang.SQL.Clear;
if cmbSatuan.Text <> '' then
DataModule4.Zbarang.SQL.Add('update barang set id_satuan = "'+cmbSatuan.Text+'" where id_barang = "'+a+'" ');
DataModule4.Zbarang.ExecSQL;

DataModule4.Zbarang.SQL.Clear;
if cmbSupplier.Text <> '' then
DataModule4.Zbarang.SQL.Add('update barang set id_supplier = "'+cmbSupplier.Text+'" where id_barang = "'+a+'" ');
DataModule4.Zbarang.ExecSQL;

DataModule4.Zbarang.SQL.Clear;
if cmbUser.Text <> '' then
DataModule4.Zbarang.SQL.Add('update barang set id_user = "'+cmbUser.Text+'" where id_barang = "'+a+'" ');
DataModule4.Zbarang.ExecSQL;

DataModule4.Zbarang.SQL.Clear;
DataModule4.Zbarang.SQL.Add('select * from barang');
DataModule4.Zbarang.Open;
ShowMessage('Data Berhasil Diubah!');
end;
posisiawal;
end;

procedure TForm9.bCetakClick(Sender: TObject);
begin
form10.frxReport_barang.ShowReport();
end;

end.
