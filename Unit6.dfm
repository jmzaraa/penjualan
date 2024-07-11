object Form6: TForm6
  Left = 349
  Top = 51
  Width = 836
  Height = 632
  Caption = 'SUPPLIER'
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
  object Label2: TLabel
    Left = 368
    Top = 312
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
    Top = 248
    Width = 93
    Height = 15
    Caption = 'PERUSAHAAN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 16
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
  object Label5: TLabel
    Left = 16
    Top = 360
    Width = 80
    Height = 15
    Caption = 'NAMA BANK'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 16
    Top = 416
    Width = 80
    Height = 15
    Caption = 'AKUN BANK'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 16
    Top = 472
    Width = 98
    Height = 15
    Caption = 'NO. REKENING'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 16
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
  object Label9: TLabel
    Left = 16
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
  object Label10: TLabel
    Left = 16
    Top = 136
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
  object eAlamat: TEdit
    Left = 16
    Top = 208
    Width = 321
    Height = 21
    TabOrder = 0
  end
  object bInsert: TButton
    Left = 296
    Top = 528
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
    Left = 384
    Top = 528
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
    Left = 472
    Top = 528
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
    Left = 368
    Top = 176
    Width = 425
    Height = 113
    DataSource = DataModule4.dssupplier
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id_supplier'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NIK_supp'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_supp'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telp_supp'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'alamat_supp'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'perusahaan'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'email_supp'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_bank'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'akun_bank'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'no_rekening'
        Visible = True
      end>
  end
  object eCari: TEdit
    Left = 456
    Top = 304
    Width = 337
    Height = 21
    Color = clTeal
    TabOrder = 5
    OnChange = eCariChange
  end
  object ePerusahaan: TEdit
    Left = 16
    Top = 264
    Width = 321
    Height = 21
    TabOrder = 6
  end
  object eEmail: TEdit
    Left = 16
    Top = 320
    Width = 321
    Height = 21
    TabOrder = 7
  end
  object eNamabank: TEdit
    Left = 16
    Top = 376
    Width = 321
    Height = 21
    TabOrder = 8
  end
  object eAkunbank: TEdit
    Left = 16
    Top = 432
    Width = 321
    Height = 21
    TabOrder = 9
  end
  object eNorek: TEdit
    Left = 16
    Top = 488
    Width = 321
    Height = 21
    TabOrder = 10
  end
  object eNik: TEdit
    Left = 16
    Top = 40
    Width = 321
    Height = 21
    TabOrder = 11
  end
  object eNama: TEdit
    Left = 16
    Top = 96
    Width = 321
    Height = 21
    TabOrder = 12
  end
  object eTelp: TEdit
    Left = 16
    Top = 152
    Width = 321
    Height = 21
    TabOrder = 13
  end
  object bBaru: TButton
    Left = 208
    Top = 528
    Width = 75
    Height = 35
    Caption = 'BARU'
    Font.Charset = OEM_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Terminal'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
    OnClick = bBaruClick
  end
  object bBatal: TButton
    Left = 560
    Top = 528
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
    Left = 368
    Top = 344
    Width = 425
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
