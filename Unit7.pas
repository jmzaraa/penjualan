unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TForm7 = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    bInsert: TButton;
    bUpdate: TButton;
    bDelete: TButton;
    DBGrid1: TDBGrid;
    eCari: TEdit;
    bBatal: TButton;
    eNik: TEdit;
    eNama: TEdit;
    eJk: TEdit;
    eAlamat: TEdit;
    eTelp: TEdit;
    eEmail: TEdit;
    bBaru: TButton;
    Label1: TLabel;
    cmbMember: TComboBox;
    Label10: TLabel;
    Label9: TLabel;
    bCetak: TButton;
    procedure bInsertClick(Sender: TObject);
    procedure bUpdateClick(Sender: TObject);
    procedure bDeleteClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure eCariChange(Sender: TObject);
    procedure bBatalClick(Sender: TObject);
    procedure posisiawal;
    procedure bersih;
    function editFull: Boolean;
    procedure FormShow(Sender: TObject);
    procedure bBaruClick(Sender: TObject);
    procedure cmbMemberChange(Sender: TObject);
    procedure bCetakClick(Sender: TObject);
    procedure cmbMemberDropDown(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;
  a: string;

implementation

uses
  Unit4, Unit10;

{$R *.dfm}

function TForm7.editFull: Boolean;
begin
  Result := (eNik.Text <> '') and
            (eNama.Text <> '') and
            (eJk.Text <> '') and
            (eAlamat.Text <> '') and
            (eTelp.Text <> '') and
            (eEmail.Text <> '') and
            (cmbMember.Text <> '') ;
end;

procedure TForm7.bersih;
begin
    eNik.Clear;
    eNama.Clear;
    eJk.Clear;
    eAlamat.Clear;
    eTelp.Clear;
    eEmail.Clear;
    cmbMember.Clear;
end;

procedure TForm7.posisiawal;
begin
  bersih;
  bBaru.Enabled := True;
  bInsert.Enabled := False;
  bUpdate.Enabled := False;
  bDelete.Enabled := False;
  bBatal.Enabled := False;

  eNik.Enabled := False;
  eNama.Enabled := False;
  eJk.Enabled := False;
  eAlamat.Enabled := False;
  eTelp.Enabled := False;
  eEmail.Enabled := False;
  cmbMember.Enabled := False;
  Label10.Caption := 'DISKON:';
end;

procedure TForm7.bInsertClick(Sender: TObject);
begin
  if not editFull then
  begin
    ShowMessage('Data Tidak Boleh Kosong!');
  end else
    if DataModule4.Zcustomer.Locate('NIK_cust', eNik.Text,[]) or
    DataModule4.Zcustomer.Locate('nama_cust', eNama.Text,[]) or
    DataModule4.Zcustomer.Locate('jk_cust', eJk.Text,[]) or
    DataModule4.Zcustomer.Locate('alamat_cust', eAlamat.Text,[]) or
    DataModule4.Zcustomer.Locate('telp_cust', eTelp.Text,[]) or
    DataModule4.Zcustomer.Locate('email_cust', eEmail.Text,[]) then
//    DataModule4.Zcustomer.Locate('member', cmbMember.Text,[]) then
    begin
      ShowMessage('Data Sudah Ada Dalam Sistem!');
    end else
    begin
DataModule4.Zcustomer.SQL.Clear;
DataModule4.Zcustomer.SQL.Add('insert into customer values(null, "'+eNik.Text+'", "'+eNama.Text+'", "'+eJk.Text+'", "'+eAlamat.Text+'", "'+eTelp.Text+'", "'+eEmail.Text+'", "'+cmbMember.Text+'") ');
DataModule4.Zcustomer.ExecSQL;

DataModule4.Zcustomer.SQL.Clear;
DataModule4.Zcustomer.SQL.Add('select * from customer');
DataModule4.Zcustomer.Open;
ShowMessage('Data Berhasil Disimpan!');
end;
posisiawal;
end;

procedure TForm7.bUpdateClick(Sender: TObject);
begin
    if not editFull then
  begin
    ShowMessage('Data Tidak Boleh Kosong!');
  end else
    if (DataModule4.Zcustomer.Fields[1].AsString = eNik.Text) and
    (DataModule4.Zcustomer.Fields[2].AsString = eNama.Text) and
    (DataModule4.Zcustomer.Fields[3].AsString = eJk.Text) and
    (DataModule4.Zcustomer.Fields[4].AsString = eAlamat.Text) and
    (DataModule4.Zcustomer.Fields[5].AsString = eTelp.Text) and
    (DataModule4.Zcustomer.Fields[6].AsString = eEmail.Text) and
    (DataModule4.Zcustomer.Fields[7].AsString = cmbMember.Text) then
    begin
      ShowMessage('Data Sudah Ada Dalam Sistem!');
    end else
    begin
DataModule4.Zcustomer.SQL.Clear;
if eNik.Text <> '' then
DataModule4.Zcustomer.SQL.Add('update customer set NIK_cust = "'+eNik.Text+'" where id_customer = "'+a+'" ');
DataModule4.Zcustomer.ExecSQL;

DataModule4.Zcustomer.SQL.Clear;
if eNama.Text <> '' then
DataModule4.Zcustomer.SQL.Add('update customer set nama_cust = "'+eNama.Text+'" where id_customer = "'+a+'" ');
DataModule4.Zcustomer.ExecSQL;

DataModule4.Zcustomer.SQL.Clear;
if eJk.Text <> '' then
DataModule4.Zcustomer.SQL.Add('update customer set telp_cust = "'+eJk.Text+'" where id_customer = "'+a+'" ');
DataModule4.Zcustomer.ExecSQL;

DataModule4.Zcustomer.SQL.Clear;
if eAlamat.Text <> '' then
DataModule4.Zcustomer.SQL.Add('update customer set alamat_cust = "'+eAlamat.Text+'" where id_customer = "'+a+'" ');
DataModule4.Zcustomer.ExecSQL;

DataModule4.Zcustomer.SQL.Clear;
if eTelp.Text <> '' then
DataModule4.Zcustomer.SQL.Add('update customer set telp_cust = "'+eTelp.Text+'" where id_customer = "'+a+'" ');
DataModule4.Zcustomer.ExecSQL;

DataModule4.Zcustomer.SQL.Clear;
if eEmail.Text <> '' then
DataModule4.Zcustomer.SQL.Add('update customer set email_cust = "'+eEmail.Text+'" where id_customer = "'+a+'" ');
DataModule4.Zcustomer.ExecSQL;

DataModule4.Zcustomer.SQL.Clear;
if cmbMember.Text <> '' then
DataModule4.Zcustomer.SQL.Add('update customer set member = "'+cmbMember.Text+'" where id_customer = "'+a+'" ');
DataModule4.Zcustomer.ExecSQL;

DataModule4.Zcustomer.SQL.Clear;
DataModule4.Zcustomer.SQL.Add('select * from customer');
DataModule4.Zcustomer.Open;
ShowMessage('Data Berhasil Diubah!');
bersih;
end;
posisiawal;
end;

procedure TForm7.bDeleteClick(Sender: TObject);
begin
  if MessageDlg('Apakah Anda Yakin Ingin Menghapus Data ['+eNama.Text+']?', mtWarning, [mbYes, mbNo], 0) = mryes then
  begin
DataModule4.Zcustomer.SQL.Clear;
DataModule4.Zcustomer.SQL.Add('delete from customer where id_customer = "'+a+'" ');
DataModule4.Zcustomer.ExecSQL;

DataModule4.Zcustomer.SQL.Clear;
DataModule4.Zcustomer.SQL.Add('select * from customer');
DataModule4.Zcustomer.Open;
ShowMessage('Data Berhasil Dihapus!');
end;
posisiawal;
end;

procedure TForm7.DBGrid1CellClick(Column: TColumn);
begin
a := DataModule4.Zcustomer.Fields[0].AsString;
eNik.Text := DataModule4.Zcustomer.Fields[1].AsString;
eNama.Text := DataModule4.Zcustomer.Fields[2].AsString;
eJk.Text := DataModule4.Zcustomer.Fields[3].AsString;
eAlamat.Text := DataModule4.Zcustomer.Fields[4].AsString;
eTelp.Text := DataModule4.Zcustomer.Fields[5].AsString;
eEmail.Text := DataModule4.Zcustomer.Fields[6].AsString;
cmbMember.Text := DataModule4.Zcustomer.Fields[7].AsString;

eNik.Enabled := True;
eNama.Enabled := True;
eJk.Enabled := True;
eAlamat.Enabled := True;
eTelp.Enabled := True;
eEmail.Enabled := True;
cmbMember.Enabled := True;

bBaru.Enabled := False;
bInsert.Enabled := False;
bUpdate.Enabled := True;
bDelete.Enabled := True;
bBatal.Enabled := True;
end;

procedure TForm7.eCariChange(Sender: TObject);
begin
with DataModule4.Zcustomer do
  begin
    SQL.Clear;
    SQL.Add('select * from customer where nama_cust like "%'+eCari.Text+'%" ');
    Open;
  end;
end;

procedure TForm7.bBatalClick(Sender: TObject);
begin
bersih;
posisiawal;
end;

procedure TForm7.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm7.bBaruClick(Sender: TObject);
begin
bBaru.Enabled := False;
bInsert.Enabled := True;
bUpdate.Enabled := False;
bDelete.Enabled := False;
bBatal.Enabled := True;

eNik.Enabled := True;
eNama.Enabled := True;
eJk.Enabled := True;
eAlamat.Enabled := True;
eTelp.Enabled := True;
eEmail.Enabled := True;
cmbMember.Enabled := True;
end;

procedure TForm7.cmbMemberChange(Sender: TObject);
begin
  if cmbMember.Text = 'YA' then
    Label10.Caption := 'DISKON: 10%'
  else if cmbMember.Text = 'TIDAK' then
    Label10.Caption := 'DISKON: 5%';
end;

procedure TForm7.bCetakClick(Sender: TObject);
begin
form10.frxReport_customer.ShowReport();
end;

procedure TForm7.cmbMemberDropDown(Sender: TObject);
begin
cmbMember.Items.Clear;
cmbMember.Items.Add('YA');
cmbMember.Items.Add('TIDAK');
end;

end.
