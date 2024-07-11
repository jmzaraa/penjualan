object Form3: TForm3
  Left = 289
  Top = 142
  Width = 479
  Height = 473
  Caption = 'KATAGORI'
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
    Caption = 'TAMBAH'
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
    Caption = 'UBAH'
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
    Caption = 'HAPUS'
    Font.Charset = OEM_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Terminal'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = bDeleteClick
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 200
    Width = 425
    Height = 120
    DataSource = DataModule4.dskatagori
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object eCari: TEdit
    Left = 120
    Top = 336
    Width = 321
    Height = 21
    Color = clTeal
    TabOrder = 5
    OnChange = eCariChange
  end
  object eDeskripsi: TEdit
    Left = 16
    Top = 104
    Width = 425
    Height = 21
    TabOrder = 6
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
    TabOrder = 7
    OnClick = bBatalClick
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
    TabOrder = 8
    OnClick = bBaruClick
  end
  object bCetak: TButton
    Left = 14
    Top = 376
    Width = 427
    Height = 33
    Caption = 'CETAK DATA'
    Font.Charset = OEM_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Terminal'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = bCetakClick
  end
end
