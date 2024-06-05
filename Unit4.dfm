object DataModule4: TDataModule4
  OldCreateOrder = False
  Left = 189
  Top = 137
  Height = 252
  Width = 543
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
    Left = 352
    Top = 16
  end
  object Zsupplier: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from supplier')
    Params = <>
    Left = 288
    Top = 16
  end
  object dscustomer: TDataSource
    DataSet = Zcustomer
    Left = 352
    Top = 80
  end
  object Zcustomer: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from customer')
    Params = <>
    Left = 288
    Top = 80
  end
end
