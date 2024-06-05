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
  Unit1;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
if eUser.Text = 'admin' then
begin
  Form1.mm1.Items[1].Visible := True;
  Form1.mm1.Items[2].Visible := False;
  Form1.mm1.Items[3].Visible := False;
end
else if eUser.Text = 'kasir' then
begin
  Form1.mm1.Items[1].Visible := False;
  Form1.mm1.Items[2].Visible := True;
  Form1.mm1.Items[3].Visible := False;
end
else if eUser.Text = 'pemilik' then
begin
  Form1.mm1.Items[1].Visible := False;
  Form1.mm1.Items[2].Visible := False;
  Form1.mm1.Items[3].Visible := True;
end;
   Form2.Close;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
Form2.Close;
end;

end.
