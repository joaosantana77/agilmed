object F_Ativacao: TF_Ativacao
  Left = 283
  Top = 202
  Caption = 'Ativa'#231#227'o Agilmed vers'#227'o 2.3'
  ClientHeight = 206
  ClientWidth = 460
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 460
    Height = 41
    Align = alTop
    Caption = 'Ativa'#231#227'o Agilmed'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    ExplicitLeft = 56
    ExplicitTop = 16
    ExplicitWidth = 185
  end
  object Button1: TButton
    Left = 144
    Top = 96
    Width = 177
    Height = 25
    Caption = 'Ativar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 144
    Top = 144
    Width = 177
    Height = 25
    Caption = 'Sair'
    TabOrder = 2
    OnClick = Button2Click
  end
  object AGILMED: TSQLConnection
    ConnectionName = 'AGILMED'
    DriverName = 'FIREBIRD'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbxfb.dll'
    LoginPrompt = False
    Params.Strings = (
      'drivername=FIREBIRD'
      'blobsize=-1'
      'commitretain=False'
      'Database=LOCALHOST:C:\SISTEMAS\AGILMED\AGILMED.FDB'
      'localecode=0000'
      'password=masterkey'
      'rolename=RoleName'
      'sqldialect=3'
      'isolationlevel=ReadCommitted'
      'user_name=sysdba'
      'waitonlocks=True'
      'trim char=False'
      'urlpath=C:\SISTEMAS\AGILMED_Desenv\DADOS')
    VendorLib = 'fbclient.DLL'
    Left = 37
    Top = 125
  end
  object Qry: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = AGILMED
    Left = 40
    Top = 72
  end
end
