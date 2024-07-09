object Form10: TForm10
  Left = 254
  Top = 164
  Width = 870
  Height = 450
  Caption = 'FAST REPORT'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object frxReport_katagori: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45476.585037754600000000
    ReportOptions.LastChange = 45476.599690081000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 40
    Top = 8
    Datasets = <
      item
        DataSet = frxDBDataset_katagori
        DataSetName = 'frxDBDataset_katagori'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object ReportTitle1: TfrxReportTitle
        Height = 64.252010000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo1: TfrxMemoView
          Left = 302.362400000000000000
          Top = 18.897650000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'LAPORAN DATA KATAGORI')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 30.236240000000000000
        Top = 105.826840000000000000
        Width = 793.701300000000000000
        object Memo2: TfrxMemoView
          Left = 154.960730000000000000
          Top = 11.338590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'ID')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 253.228510000000000000
          Top = 11.338590000000000000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'NAMA KATAGORI')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 449.764070000000000000
          Top = 11.338590000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'DEKSRIPSI')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 26.456710000000000000
        Top = 196.535560000000000000
        Width = 793.701300000000000000
        DataSet = frxDBDataset_katagori
        DataSetName = 'frxDBDataset_katagori'
        RowCount = 0
        object Memo3: TfrxMemoView
          Left = 154.960730000000000000
          Width = 94.488250000000000000
          Height = 26.456710000000000000
          DataField = 'id_katagori'
          DataSet = frxDBDataset_katagori
          DataSetName = 'frxDBDataset_katagori'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset_katagori."id_katagori"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 249.448980000000000000
          Width = 200.315090000000000000
          Height = 26.456710000000000000
          DataField = 'nama_katagori'
          DataSet = frxDBDataset_katagori
          DataSetName = 'frxDBDataset_katagori'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset_katagori."nama_katagori"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 449.764070000000000000
          Width = 173.858380000000000000
          Height = 26.456710000000000000
          DataField = 'deskripsi_k'
          DataSet = frxDBDataset_katagori
          DataSetName = 'frxDBDataset_katagori'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset_katagori."deskripsi_k"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset_katagori: TfrxDBDataset
    UserName = 'frxDBDataset_katagori'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_katagori=id_katagori'
      'nama_katagori=nama_katagori'
      'deskripsi_k=deskripsi_k')
    DataSet = DataModule4.Zkatagori
    Left = 176
    Top = 8
  end
  object frxReport_satuan: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45477.641309652800000000
    ReportOptions.LastChange = 45477.641309652800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 40
    Top = 80
    Datasets = <
      item
        DataSet = frxDBDataset_satuan
        DataSetName = 'frxDBDataset_satuan'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object ReportTitle1: TfrxReportTitle
        Height = 60.472480000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
      end
      object PageHeader1: TfrxPageHeader
        Height = 45.354360000000000000
        Top = 102.047310000000000000
        Width = 793.701300000000000000
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 207.874150000000000000
        Width = 793.701300000000000000
        DataSet = frxDBDataset_satuan
        DataSetName = 'frxDBDataset_satuan'
        RowCount = 0
        object Memo1: TfrxMemoView
          Left = 71.811070000000000000
          Top = 18.897650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'id_satuan'
          DataSet = frxDBDataset_satuan
          DataSetName = 'frxDBDataset_satuan'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset2."id_satuan"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 226.771800000000000000
          Top = 22.677180000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'nama_satuan'
          DataSet = frxDBDataset_satuan
          DataSetName = 'frxDBDataset_satuan'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset2."nama_satuan"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 423.307360000000000000
          Top = 22.677180000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'deskripsi_s'
          DataSet = frxDBDataset_satuan
          DataSetName = 'frxDBDataset_satuan'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset2."deskripsi_s"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset_satuan: TfrxDBDataset
    UserName = 'frxDBDataset_satuan'
    CloseDataSource = False
    DataSet = DataModule4.Zsatuan
    Left = 176
    Top = 80
  end
  object frxReport_customer: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45482.549919733800000000
    ReportOptions.LastChange = 45482.549919733800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 40
    Top = 144
    Datasets = <
      item
        DataSet = frxDBDataset_customer
        DataSetName = 'frxDBDataset_customer'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object ReportTitle1: TfrxReportTitle
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo1: TfrxMemoView
          Left = 234.330860000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'LAPORAN DATA CUSTOMER')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 30.236240000000000000
        Top = 64.252010000000000000
        Width = 793.701300000000000000
        object Memo2: TfrxMemoView
          Left = 34.015770000000000000
          Top = 11.338590000000000000
          Width = 41.574830000000000000
          Height = 37.795300000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 75.590600000000000000
          Top = 11.338590000000000000
          Width = 94.488250000000000000
          Height = 37.795300000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NIK')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 170.078850000000000000
          Top = 11.338590000000000000
          Width = 94.488250000000000000
          Height = 37.795300000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NAMA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 264.567100000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 37.795300000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'JENIS KELAMIN')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 328.819110000000000000
          Top = 11.338590000000000000
          Width = 113.385900000000000000
          Height = 37.795300000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ALAMAT')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 442.205010000000000000
          Top = 11.338590000000000000
          Width = 105.826840000000000000
          Height = 37.795300000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NO. TELEPON')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 548.031850000000000000
          Top = 11.338590000000000000
          Width = 109.606370000000000000
          Height = 37.795300000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'E-MAIL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 657.638220000000000000
          Top = 11.338590000000000000
          Width = 94.488250000000000000
          Height = 37.795300000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'MEMBER')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 154.960730000000000000
        Width = 793.701300000000000000
        DataSet = frxDBDataset_customer
        DataSetName = 'frxDBDataset_customer'
        RowCount = 0
        object Memo9: TfrxMemoView
          Left = 34.015770000000000000
          Top = 22.677180000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DataField = 'id_customer'
          DataSet = frxDBDataset_customer
          DataSetName = 'frxDBDataset_customer'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset_customer."id_customer"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 75.590600000000000000
          Top = 22.677180000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'NIK_cust'
          DataSet = frxDBDataset_customer
          DataSetName = 'frxDBDataset_customer'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset_customer."NIK_cust"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 170.078850000000000000
          Top = 22.677180000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'nama_cust'
          DataSet = frxDBDataset_customer
          DataSetName = 'frxDBDataset_customer'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset_customer."nama_cust"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 264.567100000000000000
          Top = 22.677180000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'jk_cust'
          DataSet = frxDBDataset_customer
          DataSetName = 'frxDBDataset_customer'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset_customer."jk_cust"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 328.819110000000000000
          Top = 22.677180000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'alamat_cust'
          DataSet = frxDBDataset_customer
          DataSetName = 'frxDBDataset_customer'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset_customer."alamat_cust"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 442.205010000000000000
          Top = 22.677180000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'telp_cust'
          DataSet = frxDBDataset_customer
          DataSetName = 'frxDBDataset_customer'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset_customer."telp_cust"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 548.031850000000000000
          Top = 22.677180000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'email_cust'
          DataSet = frxDBDataset_customer
          DataSetName = 'frxDBDataset_customer'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset_customer."email_cust"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 657.638220000000000000
          Top = 22.677180000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'member'
          DataSet = frxDBDataset_customer
          DataSetName = 'frxDBDataset_customer'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset_customer."member"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset_customer: TfrxDBDataset
    UserName = 'frxDBDataset_customer'
    CloseDataSource = False
    DataSet = DataModule4.Zcustomer
    Left = 176
    Top = 144
  end
end
