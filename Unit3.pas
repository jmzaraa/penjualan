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
    bCari: TButton;
    Label3: TLabel;
    eDeskripsi: TEdit;
    Button1: TButton;
    procedure bInsertClick(Sender: TObject);
    procedure bUpdateClick(Sender: TObject);
    procedure bDeleteClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button1Click(Sender: TObject);
  private
    procedure ClearAllEdits;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  a: string;

implementation

uses
  Unit4;

{$R *.dfm}

procedure TForm3.ClearAllEdits;
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

procedure TForm3.bInsertClick(Sender: TObject);
begin
DataModule4.Zkatagori.SQL.Clear;
DataModule4.Zkatagori.SQL.Add('insert into katagori values (null, "'+eNama.Text+'", "'+eDeskripsi.Text+'") ');
DataModule4.Zkatagori.ExecSQL;

DataModule4.Zkatagori.SQL.Clear;
DataModule4.Zkatagori.SQL.Add('select * from katagori');
DataModule4.Zkatagori.Open;
ShowMessage('Data Berhasil Disimpan!');
ClearAllEdits;
end;

procedure TForm3.bUpdateClick(Sender: TObject);
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
ClearAllEdits;
end;

procedure TForm3.bDeleteClick(Sender: TObject);
begin
DataModule4.Zkatagori.SQL.Clear;
DataModule4.Zkatagori.SQL.Add('delete from katagori where id_katagori = "'+a+'" ');
DataModule4.Zkatagori.ExecSQL;

DataModule4.Zkatagori.SQL.Clear;
DataModule4.Zkatagori.SQL.Add('select * from katagori');
DataModule4.Zkatagori.Open;
ShowMessage('Data Berhasil Dihapus!');
ClearAllEdits;
end;

procedure TForm3.DBGrid1CellClick(Column: TColumn);
begin
eNama.Text := DataModule4.Zkatagori.Fields[1].AsString;
eDeskripsi.Text := DataModule4.Zkatagori.Fields[2].AsString;
a := DataModule4.Zkatagori.Fields[0].AsString;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
ClearAllEdits;
end;

end.
