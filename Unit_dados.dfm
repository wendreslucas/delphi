object form_dados: Tform_dados
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 452
  Width = 763
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=empresa'
      'User_Name=root'
      'Server=localhost'
      'Password=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 80
    Top = 40
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 320
    Top = 40
  end
end
