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
    procedure posisiawal;
    procedure bersih;
    function editFull: Boolean;
    procedure bBaruClick(Sender: TObject);
    procedure bDeleteClick(Sender: TObject);
    procedure eCariChange(Sender: TObject);
    procedure bBatalClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
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
  Unit4;

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

end.
