unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm1 = class(TForm)
    mm1: TMainMenu;
    F1: TMenuItem;
    D1: TMenuItem;
    T1: TMenuItem;
    L1: TMenuItem;
    L2: TMenuItem;
    L3: TMenuItem;
    K1: TMenuItem;
    S1: TMenuItem;
    S2: TMenuItem;
    K2: TMenuItem;
    P1: TMenuItem;
    P2: TMenuItem;
    L4: TMenuItem;
    L5: TMenuItem;
    L6: TMenuItem;
    U1: TMenuItem;
    B1: TMenuItem;
    procedure L2Click(Sender: TObject);
    procedure K1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure S1Click(Sender: TObject);
    procedure S2Click(Sender: TObject);
    procedure K2Click(Sender: TObject);
    procedure U1Click(Sender: TObject);
    procedure B1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Unit2, Unit3, Unit5, Unit6, Unit7, Unit8, Unit9;

{$R *.dfm}

procedure TForm1.L2Click(Sender: TObject);
begin
Form2.Show;
end;

procedure TForm1.K1Click(Sender: TObject);
begin
Form3.Show;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
//mm1.Items[1].Visible := False;
//mm1.Items[2].Visible := False;
//mm1.Items[3].Visible := False;
end;

procedure TForm1.S1Click(Sender: TObject);
begin
Form5.Show;
end;

procedure TForm1.S2Click(Sender: TObject);
begin
Form6.Show;
end;

procedure TForm1.K2Click(Sender: TObject);
begin
Form7.Show;
end;


procedure TForm1.U1Click(Sender: TObject);
begin
Form8.Show;
end;

procedure TForm1.B1Click(Sender: TObject);
begin
Form9.Show;
end;

end.
