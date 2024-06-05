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
    bCari: TButton;
    eNik: TEdit;
    eNama: TEdit;
    eJk: TEdit;
    eAlamat: TEdit;
    eTelp: TEdit;
    eEmail: TEdit;
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
  Form7: TForm7;
  a: string;

implementation

uses
  Unit4;

{$R *.dfm}

procedure TForm7.ClearAllEdits;
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

procedure TForm7.bInsertClick(Sender: TObject);
begin
DataModule4.Zcustomer.SQL.Clear;
DataModule4.Zcustomer.SQL.Add('insert into customer values(null, "'+eNik.Text+'", "'+eNama.Text+'", "'+eJk.Text+'", "'+eAlamat.Text+'", "'+eTelp.Text+'", "'+eEmail.Text+'") ');
DataModule4.Zcustomer.ExecSQL;

DataModule4.Zcustomer.SQL.Clear;
DataModule4.Zcustomer.SQL.Add('select * from customer');
DataModule4.Zcustomer.Open;
ShowMessage('Data Berhasil Disimpan!');
ClearAllEdits;
end;

procedure TForm7.bUpdateClick(Sender: TObject);
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
DataModule4.Zcustomer.SQL.Add('select * from customer');
DataModule4.Zcustomer.Open;
ShowMessage('Data Berhasil Diubah!');
ClearAllEdits;
end;

procedure TForm7.bDeleteClick(Sender: TObject);
begin
DataModule4.Zcustomer.SQL.Clear;
DataModule4.Zcustomer.SQL.Add('delete from customer where id_customer = "'+a+'" ');
DataModule4.Zcustomer.ExecSQL;

DataModule4.Zcustomer.SQL.Clear;
DataModule4.Zcustomer.SQL.Add('select * from customer');
DataModule4.Zcustomer.Open;
ShowMessage('Data Berhasil Dihapus!');
ClearAllEdits;
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
end;

end.
