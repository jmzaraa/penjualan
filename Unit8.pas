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
    cmbRole: TComboBox;
    procedure posisiawal;
    procedure bersih;
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
  Unit4;

{$R *.dfm}

procedure TForm8.bersih;
begin
  eNik.Clear;
  eUsername.Clear;
  eNama.Clear;
  ePass.Clear;
  eRole.Clear;
  eEmail.Clear;
  eAlamat.Clear;
  eTelp.Clear;
  eStatus.Clear;
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
  eRole.Enabled := False;
  eEmail.Enabled := False;
  eAlamat.Enabled := False;
  eTelp.Enabled := False;
  eStatus.Enabled := False;
  bersih;
end;

end.
