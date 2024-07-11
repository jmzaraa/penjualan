unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    eUser: TEdit;
    Button1: TButton;
    Button2: TButton;
    ePass: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  Unit1, Unit4;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var
  role: string;
begin
  with DataModule4.Zlogin do
  begin
    SQL.Text := 'SELECT role FROM user WHERE username = "'+eUser.Text+'" AND password = "'+ePass.Text+'"';
    Open;
    if not Eof then
    begin
      role := FieldByName('role').AsString;

      if role = 'admin' then
      begin
        Form1.mm1.Items[1].Visible := True;
        Form1.mm1.Items[2].Visible := False;
        Form1.mm1.Items[3].Visible := False;
      end
      else if role = 'kasir' then
      begin
        Form1.mm1.Items[1].Visible := False;
        Form1.mm1.Items[2].Visible := True;
        Form1.mm1.Items[3].Visible := False;
      end
      else if role = 'owner' then
      begin
        Form1.mm1.Items[1].Visible := False;
        Form1.mm1.Items[2].Visible := False;
        Form1.mm1.Items[3].Visible := True;
      end;
        Form2.Close;
    end
    else
    begin
      // Pesan kesalahan jika login gagal
      ShowMessage('Username atau Password salah!');
    end;
    // Menutup query
    Close;
    eUser.Clear;
    ePass.Clear;
  end;

end;

procedure TForm2.Button2Click(Sender: TObject);
begin
Form2.Close;
end;

end.
