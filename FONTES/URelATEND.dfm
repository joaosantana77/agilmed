object F_RelAtend: TF_RelAtend
  Left = 351
  Top = 185
  Caption = 'Pacientes Atendidos no per'#237'odo'
  ClientHeight = 510
  ClientWidth = 682
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 682
    Height = 121
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 854
    object Label1: TLabel
      Left = 32
      Top = 25
      Width = 79
      Height = 16
      Caption = 'Data Inicio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 264
      Top = 25
      Width = 80
      Height = 16
      Caption = 'Hora Inicio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 40
      Top = 65
      Width = 67
      Height = 16
      Caption = 'Data Fim:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 274
      Top = 65
      Width = 68
      Height = 16
      Caption = 'Hora Fim:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DateTimePicker1: TDateTimePicker
      Left = 120
      Top = 20
      Width = 117
      Height = 21
      Date = 39998.912156388890000000
      Time = 39998.912156388890000000
      TabOrder = 0
    end
    object MEdtHoraIni: TMaskEdit
      Left = 352
      Top = 17
      Width = 47
      Height = 24
      EditMask = '!90:00;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 5
      ParentFont = False
      TabOrder = 1
      Text = '  :  '
    end
    object DateTimePicker2: TDateTimePicker
      Left = 120
      Top = 60
      Width = 118
      Height = 21
      Date = 39998.912239039350000000
      Time = 39998.912239039350000000
      TabOrder = 2
    end
    object MEdtHoraFim: TMaskEdit
      Left = 352
      Top = 61
      Width = 48
      Height = 24
      EditMask = '!90:00;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 5
      ParentFont = False
      TabOrder = 3
      Text = '  :  '
    end
    object Button1: TButton
      Left = 560
      Top = 61
      Width = 75
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 4
      OnClick = Button1Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 121
    Width = 682
    Height = 348
    Align = alClient
    DataSource = dsATEND
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'IDPACIENTE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_ATEND'
        Width = 147
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 344
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IDADE'
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 469
    Width = 682
    Height = 41
    Align = alBottom
    TabOrder = 2
    object Button2: TButton
      Left = 584
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 0
      OnClick = Button2Click
    end
    object butImprimir: TButton
      Left = 440
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 1
      OnClick = butImprimirClick
    end
  end
  object sqlqATEND: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT IDPACIENTE, DATA_ATEND, NOME, IDADE FROM PACIENTES')
    SQLConnection = DM.CONEXAO
    Left = 80
    Top = 208
  end
  object dspATEND: TDataSetProvider
    DataSet = sqlqATEND
    Left = 160
    Top = 208
  end
  object cdsATEND: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspATEND'
    Left = 240
    Top = 208
    object cdsATENDIDPACIENTE: TIntegerField
      FieldName = 'IDPACIENTE'
      Required = True
    end
    object cdsATENDDATA_ATEND: TSQLTimeStampField
      FieldName = 'DATA_ATEND'
    end
    object cdsATENDNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsATENDIDADE: TIntegerField
      FieldName = 'IDADE'
    end
  end
  object dsATEND: TDataSource
    DataSet = cdsATEND
    Left = 312
    Top = 208
  end
end
