object Form2: TForm2
  Left = 230
  Top = 176
  Width = 465
  Height = 204
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
  object eUser: TEdit
    Left = 120
    Top = 24
    Width = 209
    Height = 21
    TabOrder = 0
    Text = 'USERNAME'
  end
  object Button1: TButton
    Left = 120
    Top = 96
    Width = 75
    Height = 25
    Caption = 'LOGIN'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 256
    Top = 96
    Width = 75
    Height = 25
    Caption = 'CLOSE'
    TabOrder = 2
    OnClick = Button2Click
  end
  object ePass: TEdit
    Left = 120
    Top = 64
    Width = 209
    Height = 21
    TabOrder = 3
    Text = 'PASSWORD'
  end
end
