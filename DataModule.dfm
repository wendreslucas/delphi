object form_dados: Tform_dados
  OldCreateOrder = False
  Height = 452
  Width = 763
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=empresa'
      'User_Name=root'
      'Password=1234'
      'Server=localhost'
      'DriverID=MySQL')
    Left = 80
    Top = 40
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 320
    Top = 40
  end
  object MySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'H:\Developer\Empresa\Output\libmysql.dll'
    Left = 184
    Top = 80
  end
end
