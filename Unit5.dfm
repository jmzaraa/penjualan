object Form5: TForm5
  Left = 628
  Top = 203
  Width = 870
  Height = 450
  Caption = 'SATUAN'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 24
    Width = 29
    Height = 13
    Caption = 'NAMA'
  end
  object Label2: TLabel
    Left = 24
    Top = 296
    Width = 86
    Height = 13
    Caption = 'MASUKKAN NAMA'
  end
  object Label3: TLabel
    Left = 56
    Top = 64
    Width = 52
    Height = 13
    Caption = 'DESKRIPSI'
  end
  object eNama: TEdit
    Left = 120
    Top = 24
    Width = 321
    Height = 21
    TabOrder = 0
  end
  object bInsert: TButton
    Left = 128
    Top = 112
    Width = 75
    Height = 25
    Caption = 'INSERT'
    TabOrder = 1
    OnClick = bInsertClick
  end
  object bUpdate: TButton
    Left = 248
    Top = 112
    Width = 75
    Height = 25
    Caption = 'UPDATE'
    TabOrder = 2
    OnClick = bUpdateClick
  end
  object bDelete: TButton
    Left = 376
    Top = 112
    Width = 75
    Height = 25
    Caption = 'DELETE'
    TabOrder = 3
    OnClick = bDeleteClick
  end
  object eCari: TEdit
    Left = 128
    Top = 296
    Width = 217
    Height = 21
    TabOrder = 4
    Text = 'eCari'
  end
  object bCari: TButton
    Left = 368
    Top = 296
    Width = 75
    Height = 25
    Caption = 'CARI'
    TabOrder = 5
  end
  object DBGrid1: TDBGrid
    Left = 128
    Top = 152
    Width = 417
    Height = 120
    DataSource = DataModule4.dssatuan
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object eDeskripsi: TEdit
    Left = 120
    Top = 64
    Width = 321
    Height = 21
    TabOrder = 7
  end
end
