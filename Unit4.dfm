object DataModule4: TDataModule4
  OldCreateOrder = False
  Left = 308
  Top = 180
  Height = 352
  Width = 611
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'db_penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Users\ASUS\Documents\Delphi7\penjualan\libmysql.dll'
    Left = 32
    Top = 16
  end
  object Zkatagori: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from katagori')
    Params = <>
    Left = 112
    Top = 16
  end
  object dskatagori: TDataSource
    DataSet = Zkatagori
    Left = 184
    Top = 16
  end
  object dssatuan: TDataSource
    DataSet = Zsatuan
    Left = 184
    Top = 80
  end
  object Zsatuan: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from satuan')
    Params = <>
    Left = 112
    Top = 80
  end
  object dssupplier: TDataSource
    DataSet = Zsupplier
    Left = 184
    Top = 144
  end
  object Zsupplier: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from supplier')
    Params = <>
    Left = 112
    Top = 144
  end
  object dscustomer: TDataSource
    DataSet = Zcustomer
    Left = 184
    Top = 208
  end
  object Zcustomer: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from customer')
    Params = <>
    Left = 112
    Top = 208
  end
  object dslogin: TDataSource
    DataSet = Zlogin
    Left = 320
    Top = 16
  end
  object Zlogin: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from user')
    Params = <>
    Left = 256
    Top = 16
  end
  object Zuser: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from user')
    Params = <>
    Left = 256
    Top = 80
  end
  object dsuser: TDataSource
    DataSet = Zuser
    Left = 320
    Top = 80
  end
  object Zbarang: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from barang')
    Params = <>
    Left = 256
    Top = 144
  end
  object dsbarang: TDataSource
    DataSet = Zbarang
    Left = 320
    Top = 144
  end
end
