object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 612
    Height = 426
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\fdbs\HENRIQUE.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'Port=3051'
      'Server=localhost'
      'DriverID=FB')
    Top = 16
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM cliente')
    Left = 16
    Top = 336
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 16
    Top = 384
  end
  object FDQuery2: TFDQuery
    Connection = FDConnection1
    Left = 128
    Top = 344
  end
end
