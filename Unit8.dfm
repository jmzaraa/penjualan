object Form8: TForm8
  Left = 367
  Top = 162
  Width = 835
  Height = 609
  Caption = 'USER'
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object NIK: TLabel
    Left = 16
    Top = 16
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
  object USERNAME: TLabel
    Left = 16
    Top = 72
    Width = 119
    Height = 15
    Caption = 'NAMA PENGGUNA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 128
    Width = 107
    Height = 15
    Caption = 'NAMA LENGKAP'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 16
    Top = 184
    Width = 81
    Height = 15
    Caption = 'KATA SANDI'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 16
    Top = 240
    Width = 45
    Height = 15
    Caption = 'POSISI'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 16
    Top = 296
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
  object Label7: TLabel
    Left = 16
    Top = 352
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
  object Label8: TLabel
    Left = 16
    Top = 408
    Width = 63
    Height = 15
    Caption = 'TELEPON'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 16
    Top = 464
    Width = 95
    Height = 15
    Caption = 'STATUS AKTIF'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 368
    Top = 328
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
  object eNik: TEdit
    Left = 16
    Top = 32
    Width = 321
    Height = 21
    TabOrder = 0
  end
  object eUsername: TEdit
    Left = 16
    Top = 88
    Width = 321
    Height = 21
    TabOrder = 1
  end
  object eNama: TEdit
    Left = 16
    Top = 144
    Width = 321
    Height = 21
    TabOrder = 2
  end
  object ePass: TEdit
    Left = 16
    Top = 200
    Width = 321
    Height = 21
    TabOrder = 3
  end
  object eEmail: TEdit
    Left = 16
    Top = 312
    Width = 321
    Height = 21
    TabOrder = 4
  end
  object eAlamat: TEdit
    Left = 16
    Top = 368
    Width = 321
    Height = 21
    TabOrder = 5
  end
  object eTelp: TEdit
    Left = 16
    Top = 424
    Width = 321
    Height = 21
    TabOrder = 6
  end
  object eStatus: TEdit
    Left = 16
    Top = 480
    Width = 321
    Height = 21
    TabOrder = 7
  end
  object DBGrid1: TDBGrid
    Left = 368
    Top = 184
    Width = 425
    Height = 120
    DataSource = DataModule4.dsuser
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object eCari: TEdit
    Left = 456
    Top = 320
    Width = 337
    Height = 33
    Color = clTeal
    TabOrder = 9
  end
  object bBaru: TButton
    Left = 216
    Top = 520
    Width = 75
    Height = 35
    Caption = 'BARU'
    Font.Charset = OEM_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Terminal'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
  end
  object bInsert: TButton
    Left = 304
    Top = 520
    Width = 75
    Height = 35
    Caption = 'TAMBAH'
    Font.Charset = OEM_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Terminal'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
  end
  object bUpdate: TButton
    Left = 392
    Top = 520
    Width = 75
    Height = 35
    Caption = 'UBAH'
    Font.Charset = OEM_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Terminal'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
  end
  object bDelete: TButton
    Left = 480
    Top = 520
    Width = 75
    Height = 35
    Caption = 'HAPUS'
    Font.Charset = OEM_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Terminal'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
  end
  object bBatal: TButton
    Left = 568
    Top = 520
    Width = 75
    Height = 35
    Caption = 'BATAL'
    Font.Charset = OEM_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Terminal'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
  end
  object cmbRole: TComboBox
    Left = 16
    Top = 256
    Width = 321
    Height = 21
    ItemHeight = 13
    TabOrder = 15
    Text = 'cmbRole'
  end
end
