object Form9: TForm9
  Left = 347
  Top = 106
  Width = 823
  Height = 618
  Caption = 'BARANG'
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
    Left = 376
    Top = 304
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
  object Label2: TLabel
    Left = 24
    Top = 72
    Width = 98
    Height = 15
    Caption = 'NAMA BARANG'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 128
    Width = 84
    Height = 15
    Caption = 'HARGA JUAL'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 24
    Top = 184
    Width = 80
    Height = 15
    Caption = 'HARGA BELI'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 24
    Top = 240
    Width = 96
    Height = 15
    Caption = 'STOK BARANG'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 24
    Top = 296
    Width = 69
    Height = 15
    Caption = 'KATAGORI'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 24
    Top = 352
    Width = 55
    Height = 15
    Caption = 'SATUAN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 24
    Top = 408
    Width = 67
    Height = 15
    Caption = 'SUPPLIER'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 24
    Top = 464
    Width = 37
    Height = 15
    Caption = 'USER'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 24
    Top = 16
    Width = 66
    Height = 15
    Caption = 'BARCODE'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object eBarcode: TEdit
    Left = 24
    Top = 32
    Width = 321
    Height = 21
    TabOrder = 0
  end
  object eNama: TEdit
    Left = 24
    Top = 88
    Width = 321
    Height = 21
    TabOrder = 1
  end
  object eJual: TEdit
    Left = 24
    Top = 144
    Width = 321
    Height = 21
    TabOrder = 2
  end
  object eBeli: TEdit
    Left = 24
    Top = 200
    Width = 321
    Height = 21
    TabOrder = 3
  end
  object eStok: TEdit
    Left = 24
    Top = 256
    Width = 321
    Height = 21
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 376
    Top = 168
    Width = 401
    Height = 120
    DataSource = DataModule4.dsbarang
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object eCari: TEdit
    Left = 464
    Top = 304
    Width = 313
    Height = 21
    Color = clTeal
    TabOrder = 6
    OnChange = eCariChange
  end
  object bBaru: TButton
    Left = 200
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
    TabOrder = 7
    OnClick = bBaruClick
  end
  object cmbKatagori: TComboBox
    Left = 24
    Top = 312
    Width = 321
    Height = 21
    ItemHeight = 13
    TabOrder = 8
    OnDropDown = cmbKatagoriDropDown
  end
  object cmbSatuan: TComboBox
    Left = 24
    Top = 368
    Width = 321
    Height = 21
    ItemHeight = 13
    TabOrder = 9
    OnDropDown = cmbSatuanDropDown
  end
  object cmbSupplier: TComboBox
    Left = 24
    Top = 424
    Width = 321
    Height = 21
    ItemHeight = 13
    TabOrder = 10
    OnDropDown = cmbSupplierDropDown
  end
  object cmbUser: TComboBox
    Left = 24
    Top = 480
    Width = 321
    Height = 21
    ItemHeight = 13
    TabOrder = 11
    OnDropDown = cmbUserDropDown
  end
  object bInsert: TButton
    Left = 288
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
    TabOrder = 12
    OnClick = bInsertClick
  end
  object bUpdate: TButton
    Left = 376
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
    TabOrder = 13
    OnClick = bUpdateClick
  end
  object bDelete: TButton
    Left = 464
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
    TabOrder = 14
    OnClick = bDeleteClick
  end
  object bBatal: TButton
    Left = 552
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
    TabOrder = 15
    OnClick = bBatalClick
  end
  object bCetak: TButton
    Left = 376
    Top = 344
    Width = 401
    Height = 33
    Caption = 'CETAK DATA'
    Font.Charset = OEM_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Terminal'
    Font.Style = []
    ParentFont = False
    TabOrder = 16
    OnClick = bCetakClick
  end
end
