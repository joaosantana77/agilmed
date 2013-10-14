inherited F_CadPacientes: TF_CadPacientes
  Left = 289
  Top = 216
  Caption = 'Cadastro de Pacientes'
  ClientHeight = 478
  ClientWidth = 729
  ExplicitLeft = 289
  ExplicitTop = 216
  ExplicitWidth = 745
  ExplicitHeight = 516
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 24
    Top = 16
    Width = 11
    Height = 15
    Caption = 'Id'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 114
    Top = 16
    Width = 98
    Height = 15
    Caption = 'Data Atendimento'
  end
  object Label3: TLabel [2]
    Left = 258
    Top = 16
    Width = 31
    Height = 15
    Caption = 'Idade'
    FocusControl = DBEdit3
  end
  object Label4: TLabel [3]
    Left = 24
    Top = 59
    Width = 31
    Height = 15
    Caption = 'Nome'
    FocusControl = DBEdit4
  end
  inherited StatusBar1: TStatusBar
    Top = 459
    Width = 729
    ExplicitTop = 459
    ExplicitWidth = 729
  end
  inherited GroupBox1: TGroupBox
    Top = 404
    Width = 729
    ExplicitTop = 404
    ExplicitWidth = 729
  end
  inherited DBGrid1: TDBGrid
    Top = 128
    Width = 729
    Height = 276
    Columns = <
      item
        Expanded = False
        FieldName = 'IDPACIENTE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_ATEND'
        Width = 160
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IDADE'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 400
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RECEITUARIO'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'EXAMES'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ATESTADO'
        Visible = False
      end>
  end
  inherited DBNavigator1: TDBNavigator
    Left = 336
    Top = 11
    Hints.Strings = ()
    ExplicitLeft = 336
    ExplicitTop = 11
  end
  object DBEdit1: TDBEdit [8]
    Left = 24
    Top = 32
    Width = 57
    Height = 23
    DataField = 'IDPACIENTE'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit3: TDBEdit [9]
    Left = 256
    Top = 32
    Width = 41
    Height = 23
    DataField = 'IDADE'
    DataSource = DataSource1
    TabOrder = 6
  end
  object DBEdit4: TDBEdit [10]
    Left = 24
    Top = 80
    Width = 649
    Height = 23
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = DataSource1
    TabOrder = 7
  end
  object dtAtend: TDateTimePicker [11]
    Left = 104
    Top = 32
    Width = 126
    Height = 23
    Date = 41293.503916446760000000
    Time = 41293.503916446760000000
    TabOrder = 5
    OnExit = dtAtendExit
  end
  inherited DataSource1: TDataSource
    DataSet = DM.cdsCadPACI
    Left = 584
    Top = 32
  end
end
