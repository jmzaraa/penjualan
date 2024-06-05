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
    bCari: TButton;
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
  Form6: TForm6;
  a: string;

implementation

uses
  Unit4;

{$R *.dfm}

procedure TForm6.ClearAllEdits;
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

procedure TForm6.bInsertClick(Sender: TObject);
begin
eNik.SetFocus;

DataModule4.Zsupplier.SQL.Clear;
DataModule4.Zsupplier.SQL.Add('insert into supplier values(null, "'+eNik.Text+'", "'+eNama.Text+'", "'+eTelp.Text+'", "'+eAlamat.Text+'", "'+ePerusahaan.Text+'","'+eEmail.Text+'", "'+eNamabank.Text+'", "'+eAkunbank.Text+'", "'+eNorek.Text+'") ');
DataModule4.Zsupplier.ExecSQL;

DataModule4.Zsupplier.SQL.Clear;
DataModule4.Zsupplier.SQL.Add('select * from supplier');
DataModule4.Zsupplier.Open;
ShowMessage('Data Berhasil Disimpan!');
ClearAllEdits;
end;

procedure TForm6.bUpdateClick(Sender: TObject);
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
ClearAllEdits;
end;

procedure TForm6.bDeleteClick(Sender: TObject);
begin
DataModule4.Zsupplier.SQL.Clear;
DataModule4.Zsupplier.SQL.Add('delete from supplier where id_supplier = "'+a+'" ');
DataModule4.Zsupplier.ExecSQL;

DataModule4.Zsupplier.SQL.Clear;
DataModule4.Zsupplier.SQL.Add('select * from supplier');
DataModule4.Zsupplier.Open;
ShowMessage('Data Berhasil Dihapus!');
ClearAllEdits;
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
end;

end.
