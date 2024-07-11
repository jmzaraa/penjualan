unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    eAlamat: TEdit;
    bInsert: TButton;
    bUpdate: TButton;
    bDelete: TButton;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    eCari: TEdit;
    Label3: TLabel;
    ePerusahaan: TEdit;
    Label4: TLabel;
    eEmail: TEdit;
    Label5: TLabel;
    eNamabank: TEdit;
    Label6: TLabel;
    eAkunbank: TEdit;
    Label7: TLabel;
    eNorek: TEdit;
    Label8: TLabel;
    eNik: TEdit;
    Label9: TLabel;
    eNama: TEdit;
    Label10: TLabel;
    eTelp: TEdit;
    bBaru: TButton;
    bBatal: TButton;
    bCetak: TButton;
    procedure bInsertClick(Sender: TObject);
    procedure bUpdateClick(Sender: TObject);
    procedure bDeleteClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure posisiawal;
    procedure bersih;
    function editFull: Boolean;
    procedure bBaruClick(Sender: TObject);
    procedure bBatalClick(Sender: TObject);
    procedure eCariChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bCetakClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
  a: string;

implementation

uses
  Unit4, Unit10;

{$R *.dfm}

function TForm6.editFull: Boolean;
begin
  Result := (eNik.Text <> '') and
            (eNama.Text <> '') and
            (eTelp.Text <> '') and
            (eAlamat.Text <> '') and
            (ePerusahaan.Text <> '') and
            (eEmail.Text <> '') and
            (eNamabank.Text <> '') and
            (eAkunbank.Text <> '') and
            (eNorek.Text <> '');
end;

procedure TForm6.bersih;
begin
    eNik.Clear;
    eNama.Clear;
    eTelp.Clear;
    eAlamat.Clear;
    ePerusahaan.Clear;
    eEmail.Clear;
    eNamabank.Clear;
    eAkunbank.Clear;
    eNorek.Clear;
end;

procedure TForm6.posisiawal;
begin
  bersih;
  bBaru.Enabled := True;
  bInsert.Enabled := False;
  bUpdate.Enabled := False;
  bDelete.Enabled := False;
  bBatal.Enabled := False;
  eNik.Enabled := False;
  eNama.Enabled := False;
  eTelp.Enabled := False;
  eAlamat.Enabled := False;
  ePerusahaan.Enabled := False;
  eEmail.Enabled := False;
  eNamabank.Enabled := False;
  eAkunbank.Enabled := False;
  eNorek.Enabled := False;
end;

procedure TForm6.bInsertClick(Sender: TObject);
begin
if not editFull then
  begin
    ShowMessage('Data Tidak Boleh Kosong!');
  end else
    if DataModule4.Zsupplier.Locate('NIK_supp', eNik.Text,[]) or
    DataModule4.Zsupplier.Locate('nama_supp', eNama.Text,[]) or
    DataModule4.Zsupplier.Locate('telp_supp', eTelp.Text,[]) or
    DataModule4.Zsupplier.Locate('alamat_supp', eAlamat.Text,[]) or
    DataModule4.Zsupplier.Locate('perusahaan', ePerusahaan.Text,[]) or
    DataModule4.Zsupplier.Locate('email_supp', eEmail.Text,[]) or
    DataModule4.Zsupplier.Locate('nama_bank', eNamabank.Text,[]) or
    DataModule4.Zsupplier.Locate('akun_bank', eAkunbank.Text,[]) or
    DataModule4.Zsupplier.Locate('no_rekening', eNorek.Text,[]) then
    begin
      ShowMessage('Data Sudah Ada Dalam Sistem!');
    end else
    begin
eNik.SetFocus;
DataModule4.Zsupplier.SQL.Clear;
DataModule4.Zsupplier.SQL.Add('insert into supplier values(null, "'+eNik.Text+'", "'+eNama.Text+'", "'+eTelp.Text+'", "'+eAlamat.Text+'", "'+ePerusahaan.Text+'","'+eEmail.Text+'", "'+eNamabank.Text+'", "'+eAkunbank.Text+'", "'+eNorek.Text+'") ');
DataModule4.Zsupplier.ExecSQL;

DataModule4.Zsupplier.SQL.Clear;
DataModule4.Zsupplier.SQL.Add('select * from supplier');
DataModule4.Zsupplier.Open;
ShowMessage('Data Berhasil Disimpan!');
end;
posisiawal;
end;

procedure TForm6.bUpdateClick(Sender: TObject);
begin
  if not editFull then
  begin
    ShowMessage('Data Tidak Boleh Kosong!');
  end else
    if (DataModule4.Zsupplier.Fields[1].AsString = eNik.Text) and
    (DataModule4.Zsupplier.Fields[2].AsString = eNama.Text) and
    (DataModule4.Zsupplier.Fields[3].AsString = eTelp.Text) and
    (DataModule4.Zsupplier.Fields[4].AsString = eAlamat.Text) and
    (DataModule4.Zsupplier.Fields[5].AsString = ePerusahaan.Text) and
    (DataModule4.Zsupplier.Fields[6].AsString = eEmail.Text) and
    (DataModule4.Zsupplier.Fields[7].AsString = eNamabank.Text) and
    (DataModule4.Zsupplier.Fields[8].AsString = eAkunbank.Text) and
    (DataModule4.Zsupplier.Fields[9].AsString = eNorek.Text) then
    begin
      ShowMessage('Data Sudah Ada Dalam Sistem!');
    end else
    begin
DataModule4.Zsupplier.SQL.Clear;
if eNik.Text <> '' then
DataModule4.Zsupplier.SQL.Add('update supplier set NIK_supp = "'+eNik.Text+'" where id_supplier = "'+a+'" ');
DataModule4.Zsupplier.ExecSQL;

DataModule4.Zsupplier.SQL.Clear;
if eNama.Text <> '' then
DataModule4.Zsupplier.SQL.Add('update supplier set nama_supp = "'+eNama.Text+'" where id_supplier = "'+a+'" ');
DataModule4.Zsupplier.ExecSQL;

DataModule4.Zsupplier.SQL.Clear;
if eTelp.Text <> '' then
DataModule4.Zsupplier.SQL.Add('update supplier set telp_supp = "'+eTelp.Text+'" where id_supplier = "'+a+'" ');
DataModule4.Zsupplier.ExecSQL;

DataModule4.Zsupplier.SQL.Clear;
if eAlamat.Text <> '' then
DataModule4.Zsupplier.SQL.Add('update supplier set alamat_supp = "'+eAlamat.Text+'" where id_supplier = "'+a+'" ');
DataModule4.Zsupplier.ExecSQL;

DataModule4.Zsupplier.SQL.Clear;
if ePerusahaan.Text <> '' then
DataModule4.Zsupplier.SQL.Add('update supplier set perusahaan = "'+ePerusahaan.Text+'" where id_supplier = "'+a+'" ');
DataModule4.Zsupplier.ExecSQL;

DataModule4.Zsupplier.SQL.Clear;
if eEmail.Text <> '' then
DataModule4.Zsupplier.SQL.Add('update supplier set email_supp = "'+eEmail.Text+'" where id_supplier = "'+a+'" ');
DataModule4.Zsupplier.ExecSQL;

DataModule4.Zsupplier.SQL.Clear;
if eNamabank.Text <> '' then
DataModule4.Zsupplier.SQL.Add('update supplier set nama_bank = "'+eNamabank.Text+'" where id_supplier = "'+a+'" ');
DataModule4.Zsupplier.ExecSQL;

DataModule4.Zsupplier.SQL.Clear;
if eAkunbank.Text <> '' then
DataModule4.Zsupplier.SQL.Add('update supplier set akun_bank = "'+eAkunbank.Text+'" where id_supplier = "'+a+'" ');
DataModule4.Zsupplier.ExecSQL;

DataModule4.Zsupplier.SQL.Clear;
if eNorek.Text <> '' then
DataModule4.Zsupplier.SQL.Add('update supplier set no_rekening = "'+eNorek.Text+'" where id_supplier = "'+a+'" ');
DataModule4.Zsupplier.ExecSQL;

DataModule4.Zsupplier.SQL.Clear;
DataModule4.Zsupplier.SQL.Add('select * from supplier');
DataModule4.Zsupplier.Open;
ShowMessage('Data Berhasil Diubah!');
end;
posisiawal;
end;

procedure TForm6.bDeleteClick(Sender: TObject);
begin
if MessageDlg('Apakah Anda Yakin Ingin Menghapus Data ['+eNama.Text+']?', mtWarning, [mbYes, mbNo], 0) = mryes then
  begin
DataModule4.Zsupplier.SQL.Clear;
DataModule4.Zsupplier.SQL.Add('delete from supplier where id_supplier = "'+a+'" ');
DataModule4.Zsupplier.ExecSQL;

DataModule4.Zsupplier.SQL.Clear;
DataModule4.Zsupplier.SQL.Add('select * from supplier');
DataModule4.Zsupplier.Open;
ShowMessage('Data Berhasil Dihapus!');
end else
begin
  ShowMessage('Data Batal Dihapus!');
end;
posisiawal;
end;

procedure TForm6.DBGrid1CellClick(Column: TColumn);
begin
a := DataModule4.Zsupplier.Fields[0].AsString;
eNik.Text := DataModule4.Zsupplier.Fields[1].AsString;
eNama.Text := DataModule4.Zsupplier.Fields[2].AsString;
eTelp.Text := DataModule4.Zsupplier.Fields[3].AsString;
eAlamat.Text := DataModule4.Zsupplier.Fields[4].AsString;
ePerusahaan.Text := DataModule4.Zsupplier.Fields[5].AsString;
eEmail.Text := DataModule4.Zsupplier.Fields[6].AsString;
eNamabank.Text := DataModule4.Zsupplier.Fields[7].AsString;
eAkunbank.Text := DataModule4.Zsupplier.Fields[8].AsString;
eNorek.Text := DataModule4.Zsupplier.Fields[9].AsString;

eNik.Enabled := True;
eNama.Enabled := True;
eTelp.Enabled := True;
eAlamat.Enabled := True;
ePerusahaan.Enabled := True;
eEmail.Enabled := True;
eNamabank.Enabled := True;
eAkunbank.Enabled := True;
eNorek.Enabled := True;

bBaru.Enabled := False;
bInsert.Enabled := False;
bUpdate.Enabled := True;
bDelete.Enabled := True;
bBatal.Enabled := True;
end;

procedure TForm6.bBaruClick(Sender: TObject);
begin
bBaru.Enabled := False;
bInsert.Enabled := True;
bUpdate.Enabled := False;
bDelete.Enabled := False;
bBatal.Enabled := True;

eNik.Enabled := True;
eNama.Enabled := True;
eTelp.Enabled := True;
eAlamat.Enabled := True;
ePerusahaan.Enabled := True;
eEmail.Enabled := True;
eNamabank.Enabled := True;
eAkunbank.Enabled := True;
eNorek.Enabled := True;
end;

procedure TForm6.bBatalClick(Sender: TObject);
begin
bersih;
posisiawal;
end;

procedure TForm6.eCariChange(Sender: TObject);
begin
with DataModule4.Zsupplier do
  begin
    SQL.Clear;
    SQL.Add('select * from supplier where nama_supp like "%'+eCari.Text+'%" ');
    Open;
  end;
end;

procedure TForm6.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm6.bCetakClick(Sender: TObject);
begin
form10.frxReport_supplier.ShowReport();
end;

end.
