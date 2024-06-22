object Form5: TForm5
  Left = 484
  Top = 154
  Width = 475
  Height = 432
  Caption = 'SATUAN'
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 32
    Width = 39
    Height = 15
    Caption = 'NAMA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 344
    Width = 71
    Height = 15
    Caption = 'CARI DATA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 88
    Width = 73
    Height = 15
    Caption = 'DESKRIPSI'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object eNama: TEdit
    Left = 16
    Top = 48
    Width = 425
    Height = 21
    TabOrder = 0
  end
  object bInsert: TButton
    Left = 104
    Top = 144
    Width = 75
    Height = 35
    Caption = 'INSERT'
    Font.Charset = OEM_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Terminal'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = bInsertClick
  end
  object bUpdate: TButton
    Left = 192
    Top = 144
    Width = 75
    Height = 35
    Caption = 'UPDATE'
    Font.Charset = OEM_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Terminal'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = bUpdateClick
  end
  object bDelete: TButton
    Left = 280
    Top = 144
    Width = 75
    Height = 35
    Caption = 'DELETE'
    Font.Charset = OEM_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Terminal'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = bDeleteClick
  end
  object eCari: TEdit
    Left = 128
    Top = 336
    Width = 313
    Height = 33
    Color = clTeal
    TabOrder = 4
    OnChange = eCariChange
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 200
    Width = 425
    Height = 120
    DataSource = DataModule4.dssatuan
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object eDeskripsi: TEdit
    Left = 16
    Top = 104
    Width = 425
    Height = 21
    TabOrder = 6
  end
  object bBaru: TButton
    Left = 16
    Top = 144
    Width = 75
    Height = 35
    Caption = 'BARU'
    Font.Charset = OEM_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Terminal'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = bBaruClick
  end
  object bBatal: TButton
    Left = 368
    Top = 144
    Width = 75
    Height = 35
    Caption = 'BATAL'
    Font.Charset = OEM_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Terminal'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = bBatalClick
  end
end
