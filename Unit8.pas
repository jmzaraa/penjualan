unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TForm8 = class(TForm)
    NIK: TLabel;
    USERNAME: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    eNik: TEdit;
    eUsername: TEdit;
    eNama: TEdit;
    ePass: TEdit;
    eEmail: TEdit;
    eAlamat: TEdit;
    eTelp: TEdit;
    eStatus: TEdit;
    DBGrid1: TDBGrid;
    eCari: TEdit;
    bBaru: TButton;
    bInsert: TButton;
    bUpdate: TButton;
    bDelete: TButton;
    bBatal: TButton;
    Label10: TLabel;
    bCetak: TButton;
    cmbRole: TComboBox;
    procedure posisiawal;
    procedure bersih;
    function editFull: Boolean;
    procedure bBaruClick(Sender: TObject);
    procedure bDeleteClick(Sender: TObject);
    procedure eCariChange(Sender: TObject);
    procedure bBatalClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure cmbRoleDropDown(Sender: TObject);
    procedure bInsertClick(Sender: TObject);
    procedure bUpdateClick(Sender: TObject);
    procedure bCetakClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;
  a: string;

implementation

uses
  Unit4, Unit10;

{$R *.dfm}

procedure TForm8.bersih;
begin
  eNik.Clear;
  eUsername.Clear;
  eNama.Clear;
  ePass.Clear;
  cmbRole.Clear;
  eEmail.Clear;
  eAlamat.Clear;
  eTelp.Clear;
  eStatus.Clear;
end;

function TForm8.editFull: Boolean;
begin
Result := (eNik.Text <> '') and
            (eNik.Text <> '') and
            (eUsername.Text <> '') and
            (eNama.Text <> '') and
            (ePass.Text <> '') and
            (eEmail.Text <> '');
end;

procedure TForm8.posisiawal;
begin
  bBaru.Enabled := True;
  bInsert.Enabled := False;
  bUpdate.Enabled := False;
  bDelete.Enabled := False;
  bBatal.Enabled := False;

  eNik.Enabled := False;
  eUsername.Enabled := False;
  eNama.Enabled := False;
  ePass.Enabled := False;
  cmbRole.Enabled := False;
  eEmail.Enabled := False;
  eAlamat.Enabled := False;
  eTelp.Enabled := False;
  eStatus.Enabled := False;
  eCari.Enabled := False;
  bersih;
end;


procedure TForm8.bBaruClick(Sender: TObject);
begin
bBaru.Enabled := False;
bInsert.Enabled := True;
bUpdate.Enabled := False;
bDelete.Enabled := False;
bBatal.Enabled := True;

eNik.Enabled := True;
eUsername.Enabled := True;
eNama.Enabled := True;
ePass.Enabled := True;
cmbRole.Enabled := True;
eEmail.Enabled := True;
eAlamat.Enabled := True;
eTelp.Enabled := True;
eStatus.Enabled := True;
eCari.Enabled := True;
end;



procedure TForm8.bDeleteClick(Sender: TObject);
begin
 if MessageDlg('Apakah Anda Yakin Ingin Menghapus Data ['+eNama.Text+']?', mtWarning, [mbYes, mbNo], 0) = mryes then
  begin
DataModule4.Zuser.SQL.Clear;
DataModule4.Zuser.SQL.Add('delete from user where id_user = "'+a+'" ');
DataModule4.Zuser.ExecSQL;

DataModule4.Zuser.SQL.Clear;
DataModule4.Zuser.SQL.Add('select * from user');
DataModule4.Zuser.Open;
ShowMessage('Data Berhasil Dihapus!');
end;
posisiawal;
end;


procedure TForm8.eCariChange(Sender: TObject);
begin
begin
with DataModule4.Zuser do
  begin
    SQL.Clear;
    SQL.Add('select * from user where nama_user like "%'+eCari.Text+'%" ');
    Open;
  end;
end;
end;

procedure TForm8.bBatalClick(Sender: TObject);
begin
bersih;
posisiawal;
end;

procedure TForm8.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm8.DBGrid1CellClick(Column: TColumn);
begin
a := DataModule4.Zuser.Fields[0].AsString;
eNik.Text := DataModule4.Zuser.Fields[1].AsString;
eUsername.Text := DataModule4.Zuser.Fields[2].AsString;
eNama.Text := DataModule4.Zuser.Fields[3].AsString;
ePass.Text := DataModule4.Zuser.Fields[4].AsString;
cmbRole.Text := DataModule4.Zuser.Fields[5].AsString;
eEmail.Text := DataModule4.Zuser.Fields[6].AsString;
eAlamat.Text := DataModule4.Zuser.Fields[7].AsString;
eTelp.Text := DataModule4.Zuser.Fields[8].AsString;
eStatus.Text := DataModule4.Zuser.Fields[9].AsString;

eNik.Enabled := True;
eUsername.Enabled := True;
eNama.Enabled := True;
ePass.Enabled := True;
cmbRole.Enabled := True;
eEmail.Enabled := True;
eAlamat.Enabled := True;
eTelp.Enabled := True;
eStatus.Enabled := True;

bBaru.Enabled := False;
bInsert.Enabled := False;
bUpdate.Enabled := True;
bDelete.Enabled := True;
bBatal.Enabled := True;
end;

procedure TForm8.cmbRoleDropDown(Sender: TObject);
begin
cmbRole.Items.Add('admin');
cmbRole.Items.Add('kasir');
cmbRole.Items.Add('manager');
end;

procedure TForm8.bInsertClick(Sender: TObject);
begin
if not editFull then
  begin
    ShowMessage('Data Tidak Boleh Kosong!');
  end else
    if DataModule4.Zuser.Locate('NIK_user', eNik.Text,[]) or
    DataModule4.Zuser.Locate('username', eUsername.Text,[]) or
    DataModule4.Zuser.Locate('nama_user', eNama.Text,[]) or
    DataModule4.Zuser.Locate('password', ePass.Text,[]) or
    DataModule4.Zuser.Locate('email', eEmail.Text,[]) or
    DataModule4.Zuser.Locate('alamat_user', eAlamat.Text,[]) or
    DataModule4.Zuser.Locate('telp_user', eTelp.Text,[]) then
    begin
      ShowMessage('Data Sudah Ada Dalam Sistem!');
    end else
    begin
eNik.SetFocus;
DataModule4.Zuser.SQL.Clear;
DataModule4.Zuser.SQL.Add('insert into user values(null, "'+eNik.Text+'", "'+eUsername.Text+'", "'+eNama.Text+'", "'+ePass.Text+'", "'+cmbRole.Text+'","'+eEmail.Text+'", "'+eAlamat.Text+'", "'+eTelp.Text+'", "'+eStatus.Text+'") ');
DataModule4.Zuser.ExecSQL;

DataModule4.Zuser.SQL.Clear;
DataModule4.Zuser.SQL.Add('select * from user');
DataModule4.Zuser.Open;
ShowMessage('Data Berhasil Disimpan!');
end;
posisiawal;
end;

procedure TForm8.bUpdateClick(Sender: TObject);
begin
  if not editFull then
  begin
    ShowMessage('Data Tidak Boleh Kosong!');
  end else
    if (DataModule4.Zuser.Fields[1].AsString = eNik.Text) and
    (DataModule4.Zuser.Fields[2].AsString = eUsername.Text) and
    (DataModule4.Zuser.Fields[3].AsString = eNama.Text) and
    (DataModule4.Zuser.Fields[4].AsString = ePass.Text) and
    (DataModule4.Zuser.Fields[6].AsString = eEmail.Text) and
    (DataModule4.Zuser.Fields[7].AsString = eAlamat.Text) and
    (DataModule4.Zuser.Fields[8].AsString = eTelp.Text) then
    begin
      ShowMessage('Data Sudah Ada Dalam Sistem!');
    end else
    begin
DataModule4.Zuser.SQL.Clear;
if eNik.Text <> '' then
DataModule4.Zuser.SQL.Add('update user set NIK_user = "'+eNik.Text+'" where id_user = "'+a+'" ');
DataModule4.Zuser.ExecSQL;

DataModule4.Zuser.SQL.Clear;
if eUsername.Text <> '' then
DataModule4.Zuser.SQL.Add('update user set username = "'+eUsername.Text+'" where id_user = "'+a+'" ');
DataModule4.Zuser.ExecSQL;

DataModule4.Zuser.SQL.Clear;
if eNama.Text <> '' then
DataModule4.Zuser.SQL.Add('update user set nama_user = "'+eNama.Text+'" where id_user = "'+a+'" ');
DataModule4.Zuser.ExecSQL;

DataModule4.Zuser.SQL.Clear;
if ePass.Text <> '' then
DataModule4.Zuser.SQL.Add('update user set password = "'+ePass.Text+'" where id_user = "'+a+'" ');
DataModule4.Zuser.ExecSQL;

DataModule4.Zuser.SQL.Clear;
if cmbRole.Text <> '' then
DataModule4.Zuser.SQL.Add('update user set role = "'+cmbRole.Text+'" where id_user = "'+a+'" ');
DataModule4.Zuser.ExecSQL;

DataModule4.Zuser.SQL.Clear;
if eEmail.Text <> '' then
DataModule4.Zuser.SQL.Add('update user set email = "'+eEmail.Text+'" where id_user = "'+a+'" ');
DataModule4.Zuser.ExecSQL;

DataModule4.Zuser.SQL.Clear;
if eAlamat.Text <> '' then
DataModule4.Zuser.SQL.Add('update user set alamat_user = "'+eAlamat.Text+'" where id_user = "'+a+'" ');
DataModule4.Zuser.ExecSQL;

DataModule4.Zuser.SQL.Clear;
if eTelp.Text <> '' then
DataModule4.Zuser.SQL.Add('update user set telp_user = "'+eTelp.Text+'" where id_user = "'+a+'" ');
DataModule4.Zuser.ExecSQL;

DataModule4.Zuser.SQL.Clear;
if eStatus.Text <> '' then
DataModule4.Zuser.SQL.Add('update user set is_active = "'+eStatus.Text+'" where id_user = "'+a+'" ');
DataModule4.Zuser.ExecSQL;

DataModule4.Zuser.SQL.Clear;
DataModule4.Zuser.SQL.Add('select * from user');
DataModule4.Zuser.Open;
ShowMessage('Data Berhasil Diubah!');
end;
posisiawal;
end;

procedure TForm8.bCetakClick(Sender: TObject);
begin
form10.frxReport_user.ShowReport();
end;

end.
