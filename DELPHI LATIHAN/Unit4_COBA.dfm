object DataModule4: TDataModule4
  OldCreateOrder = False
  Left = 14
  Top = 78
  Height = 207
  Width = 287
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'db_penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Program Files (x86)\Borland\Delphi7\Folder Baru\libmysql.dll'
    Left = 40
    Top = 16
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'Select*from kategori')
    Params = <>
    Left = 112
    Top = 16
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 112
    Top = 80
  end
  object zqry2: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'SELECT * FROM `satuan`')
    Params = <>
    Left = 176
    Top = 16
  end
  object ds2: TDataSource
    DataSet = zqry2
    Left = 176
    Top = 80
  end
end
