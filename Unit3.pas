unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    eNama: TEdit;
    bInsert: TButton;
    bUpdate: TButton;
    bDelete: TButton;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    eCari: TEdit;
    Label3: TLabel;
    eDeskripsi: TEdit;
    bBatal: TButton;
    bBaru: TButton;
    bCetak: TButton;
    procedure bInsertClick(Sender: TObject);
    procedure bUpdateClick(Sender: TObject);
    procedure bDeleteClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure bBatalClick(Sender: TObject);
    procedure posisiawal;
    procedure bersih;
    procedure FormShow(Sender: TObject);
    procedure bBaruClick(Sender: TObject);
    procedure eCariChange(Sender: TObject);
    procedure bCetakClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  a: string;

implementation

uses
  Unit4, Unit10;

{$R *.dfm}

procedure TForm3.posisiawal;
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

procedure TForm3.bInsertClick(Sender: TObject);
begin
  if eNama.Text = '' then
  begin
    ShowMessage('Nama Katagori Tidak Boleh Kosong!');
  end else
    if DataModule4.Zkatagori.Locate('nama_katagori', eNama.Text,[]) then
    begin
      ShowMessage('Nama Katagori '+eNama.Text+' Sudah Ada Dalam Sistem!');
    end else
    begin
      DataModule4.Zkatagori.SQL.Clear;
      DataModule4.Zkatagori.SQL.Add('insert into katagori values (null, "'+eNama.Text+'", "'+eDeskripsi.Text+'") ');
      DataModule4.Zkatagori.ExecSQL;

      DataModule4.Zkatagori.SQL.Clear;
      DataModule4.Zkatagori.SQL.Add('select * from katagori');
      DataModule4.Zkatagori.Open;
      ShowMessage('Data Berhasil Disimpan!');
      bersih;
    end;
    posisiawal;
end;

procedure TForm3.bUpdateClick(Sender: TObject);
begin
   if eNama.Text = '' then
  begin
    ShowMessage('Nama Katagori Tidak Boleh Kosong!');
  end else
    if eNama.Text = DataModule4.Zkatagori.Fields[1].AsString then
    begin
      ShowMessage('Nama Katagori ['+eNama.Text+'] Tidak Ada Perubahan!');
    end else
    begin
DataModule4.Zkatagori.SQL.Clear;
if eNama.Text <> '' then
DataModule4.Zkatagori.SQL.Add('update katagori set nama_katagori = "'+eNama.Text+'" where id_katagori = "'+a+'" ');
DataModule4.Zkatagori.ExecSQL;

DataModule4.Zkatagori.SQL.Clear;
if eDeskripsi.Text <> '' then
DataModule4.Zkatagori.SQL.Add('update katagori set deskripsi_k = "'+eDeskripsi.Text+'" where id_katagori = "'+a+'" ');
DataModule4.Zkatagori.ExecSQL;

DataModule4.Zkatagori.SQL.Clear;
DataModule4.Zkatagori.SQL.Add('select * from katagori');
DataModule4.Zkatagori.Open;
ShowMessage('Data Berhasil Diubah!');
bersih;
end;
posisiawal;
    end;

procedure TForm3.bDeleteClick(Sender: TObject);
begin
  if MessageDlg('Apakah Anda Yakin Ingin Menghapus Data ['+eNama.Text+']?', mtWarning, [mbYes, mbNo], 0) = mryes then
  begin
    DataModule4.Zkatagori.SQL.Clear;
    DataModule4.Zkatagori.SQL.Add('delete from katagori where id_katagori = "'+a+'" ');
    DataModule4.Zkatagori.ExecSQL;

    DataModule4.Zkatagori.SQL.Clear;
    DataModule4.Zkatagori.SQL.Add('select * from katagori');
    DataModule4.Zkatagori.Open;
    ShowMessage('Data Berhasil Dihapus!');
  end else
  begin
    ShowMessage('Data Batal Dihapus!');
  end;
bersih;
posisiawal;
end;

procedure TForm3.DBGrid1CellClick(Column: TColumn);
begin
eNama.Text := DataModule4.Zkatagori.Fields[1].AsString;
eDeskripsi.Text := DataModule4.Zkatagori.Fields[2].AsString;
a := DataModule4.Zkatagori.Fields[0].AsString;

eNama.Enabled := True;
eDeskripsi.Enabled := True;
bBaru.Enabled := False;
bInsert.Enabled := False;
bUpdate.Enabled := True;
bDelete.Enabled := True;
bBatal.Enabled := True;
end;

procedure TForm3.bersih;
begin
    eNama.Clear;
    eDeskripsi.Clear;
end;

procedure TForm3.bBatalClick(Sender: TObject);
begin
     bersih;
     posisiawal;
end;


procedure TForm3.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm3.bBaruClick(Sender: TObject);
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

procedure TForm3.eCariChange(Sender: TObject);
begin
  with DataModule4.Zkatagori do
  begin
    SQL.Clear;
    SQL.Add('select * from katagori where nama_katagori like "%'+eCari.Text+'%" ');
    Open;
  end;
end;

procedure TForm3.bCetakClick(Sender: TObject);
begin
form10.frxReport_katagori.ShowReport();
end;

end.
