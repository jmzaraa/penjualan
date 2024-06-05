object Form7: TForm7
  Left = 126
  Top = 183
  Width = 933
  Height = 478
  Caption = 'CUSTOMER'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 464
    Top = 160
    Width = 86
    Height = 13
    Caption = 'MASUKKAN NAMA'
  end
  object Label3: TLabel
    Left = 32
    Top = 64
    Width = 29
    Height = 13
    Caption = 'NAMA'
  end
  object Label4: TLabel
    Left = 32
    Top = 104
    Width = 74
    Height = 13
    Caption = 'JENIS KELAMIN'
  end
  object Label5: TLabel
    Left = 32
    Top = 144
    Width = 40
    Height = 13
    Caption = 'ALAMAT'
  end
  object Label6: TLabel
    Left = 32
    Top = 184
    Width = 23
    Height = 13
    Caption = 'TELP'
  end
  object Label7: TLabel
    Left = 32
    Top = 224
    Width = 30
    Height = 13
    Caption = 'EMAIL'
  end
  object Label8: TLabel
    Left = 32
    Top = 24
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object bInsert: TButton
    Left = 120
    Top = 266
    Width = 75
    Height = 25
    Caption = 'INSERT'
    TabOrder = 0
    OnClick = bInsertClick
  end
  object bUpdate: TButton
    Left = 240
    Top = 266
    Width = 75
    Height = 25
    Caption = 'UPDATE'
    TabOrder = 1
    OnClick = bUpdateClick
  end
  object bDelete: TButton
    Left = 368
    Top = 266
    Width = 75
    Height = 25
    Caption = 'DELETE'
    TabOrder = 2
    OnClick = bDeleteClick
  end
  object DBGrid1: TDBGrid
    Left = 461
    Top = 24
    Width = 393
    Height = 120
    DataSource = DataModule4.dscustomer
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object eCari: TEdit
    Left = 565
    Top = 160
    Width = 289
    Height = 21
    TabOrder = 4
  end
  object bCari: TButton
    Left = 779
    Top = 192
    Width = 75
    Height = 25
    Caption = 'CARI'
    TabOrder = 5
  end
  object eNik: TEdit
    Left = 120
    Top = 24
    Width = 321
    Height = 21
    TabOrder = 6
  end
  object eNama: TEdit
    Left = 120
    Top = 64
    Width = 321
    Height = 21
    TabOrder = 7
  end
  object eJk: TEdit
    Left = 120
    Top = 104
    Width = 321
    Height = 21
    TabOrder = 8
  end
  object eAlamat: TEdit
    Left = 120
    Top = 144
    Width = 321
    Height = 21
    TabOrder = 9
  end
  object eTelp: TEdit
    Left = 120
    Top = 184
    Width = 321
    Height = 21
    TabOrder = 10
  end
  object eEmail: TEdit
    Left = 120
    Top = 224
    Width = 321
    Height = 21
    TabOrder = 11
  end
end
