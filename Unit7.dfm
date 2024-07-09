object Form7: TForm7
  Left = 380
  Top = 171
  Width = 782
  Height = 491
  Caption = 'CUSTOMER'
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
  object Label2: TLabel
    Left = 360
    Top = 232
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
    Left = 8
    Top = 80
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
  object Label4: TLabel
    Left = 8
    Top = 136
    Width = 103
    Height = 15
    Caption = 'JENIS KELAMIN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 192
    Width = 54
    Height = 15
    Caption = 'ALAMAT'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 8
    Top = 248
    Width = 34
    Height = 15
    Caption = 'TELP'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 8
    Top = 304
    Width = 41
    Height = 15
    Caption = 'EMAIL'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 8
    Top = 24
    Width = 24
    Height = 15
    Caption = 'NIK'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 360
    Top = 200
    Width = 58
    Height = 15
    Caption = 'MEMBER'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 568
    Top = 200
    Width = 57
    Height = 15
    Caption = 'DISKON:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 648
    Top = 200
    Width = 3
    Height = 15
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object bInsert: TButton
    Left = 272
    Top = 362
    Width = 75
    Height = 35
    Caption = 'TAMBAH'
    Font.Charset = OEM_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Terminal'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = bInsertClick
  end
  object bUpdate: TButton
    Left = 360
    Top = 362
    Width = 75
    Height = 35
    Caption = 'UBAH'
    Font.Charset = OEM_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Terminal'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = bUpdateClick
  end
  object bDelete: TButton
    Left = 448
    Top = 362
    Width = 75
    Height = 35
    Caption = 'HAPUS'
    Font.Charset = OEM_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Terminal'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = bDeleteClick
  end
  object DBGrid1: TDBGrid
    Left = 357
    Top = 64
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
    Left = 461
    Top = 232
    Width = 289
    Height = 21
    TabOrder = 4
    OnChange = eCariChange
  end
  object bBatal: TButton
    Left = 539
    Top = 360
    Width = 75
    Height = 35
    Caption = 'BATAL'
    Font.Charset = OEM_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Terminal'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = bBatalClick
  end
  object eNik: TEdit
    Left = 8
    Top = 40
    Width = 321
    Height = 21
    TabOrder = 6
  end
  object eNama: TEdit
    Left = 8
    Top = 96
    Width = 321
    Height = 21
    TabOrder = 7
  end
  object eJk: TEdit
    Left = 8
    Top = 152
    Width = 321
    Height = 21
    TabOrder = 8
  end
  object eAlamat: TEdit
    Left = 8
    Top = 208
    Width = 321
    Height = 21
    TabOrder = 9
  end
  object eTelp: TEdit
    Left = 8
    Top = 264
    Width = 321
    Height = 21
    TabOrder = 10
  end
  object eEmail: TEdit
    Left = 8
    Top = 320
    Width = 321
    Height = 21
    TabOrder = 11
  end
  object bBaru: TButton
    Left = 184
    Top = 360
    Width = 75
    Height = 35
    Caption = 'BARU'
    Font.Charset = OEM_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Terminal'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    OnClick = bBaruClick
  end
  object cmbMember: TComboBox
    Left = 464
    Top = 200
    Width = 81
    Height = 21
    ItemHeight = 13
    TabOrder = 13
    OnChange = cmbMemberChange
    OnDropDown = cmbMemberDropDown
  end
  object bCetak: TButton
    Left = 360
    Top = 272
    Width = 393
    Height = 33
    Caption = 'CETAK DATA'
    Font.Charset = OEM_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Terminal'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
    OnClick = bCetakClick
  end
end
