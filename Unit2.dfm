object Form2: TForm2
  Left = 472
  Top = 237
  Width = 410
  Height = 214
  Caption = 'LOGIN'
  Color = clGradientActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 24
    Width = 86
    Height = 13
    Caption = 'NAMA PENGGUNA'
  end
  object Label2: TLabel
    Left = 40
    Top = 64
    Width = 60
    Height = 13
    Caption = 'KATA SANDI'
  end
  object Label3: TLabel
    Left = 112
    Top = 136
    Width = 167
    Height = 13
    Caption = 'username: araa | password: admin'
  end
  object eUser: TEdit
    Left = 144
    Top = 24
    Width = 209
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 112
    Top = 104
    Width = 75
    Height = 25
    Caption = 'MASUK'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 200
    Top = 104
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 2
    OnClick = Button2Click
  end
  object ePass: TEdit
    Left = 144
    Top = 64
    Width = 209
    Height = 21
    TabOrder = 3
  end
end
