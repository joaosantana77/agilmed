inherited F_CadRem: TF_CadRem
  Left = 249
  Top = 226
  Caption = 'Cadastro de Rem'#233'dios'
  ClientHeight = 452
  ClientWidth = 729
  OldCreateOrder = True
  ExplicitLeft = 249
  ExplicitTop = 226
  ExplicitWidth = 745
  ExplicitHeight = 490
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 62
    Top = 27
    Width = 28
    Height = 15
    Caption = 'Ident'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 28
    Top = 59
    Width = 55
    Height = 15
    Caption = 'Descri'#231#227'o'
    FocusControl = DBEdit2
  end
  object Label3: TLabel [2]
    Left = 15
    Top = 96
    Width = 75
    Height = 15
    Caption = 'Apresenta'#231#227'o'
    FocusControl = DBEdit3
  end
  object Label4: TLabel [3]
    Left = 35
    Top = 136
    Width = 55
    Height = 15
    Caption = 'Posologia'
    FocusControl = DBEdit4
  end
  inherited StatusBar1: TStatusBar
    Top = 433
    Width = 729
    ExplicitTop = 433
    ExplicitWidth = 729
  end
  inherited GroupBox1: TGroupBox
    Top = 378
    Width = 729
    TabOrder = 4
    ExplicitTop = 378
    ExplicitWidth = 729
  end
  inherited DBGrid1: TDBGrid
    Top = 184
    Width = 729
    Height = 194
    TabOrder = 5
    Columns = <
      item
        Expanded = False
        FieldName = 'IDREMEDIO'
        Title.Alignment = taCenter
        Title.Caption = 'Id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'APRESENTACAO'
        Title.Alignment = taCenter
        Title.Caption = 'Apresent.'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'POSOLOGIA'
        Title.Alignment = taCenter
        Title.Caption = 'Posologia'
        Width = 300
        Visible = True
      end>
  end
  inherited DBNavigator1: TDBNavigator
    Left = 473
    Hints.Strings = ()
    TabOrder = 6
    ExplicitLeft = 473
  end
  object DBEdit1: TDBEdit [8]
    Left = 96
    Top = 24
    Width = 41
    Height = 23
    DataField = 'IDREMEDIO'
    DataSource = DataSource1
    Enabled = False
    TabOrder = 0
  end
  object DBEdit2: TDBEdit [9]
    Left = 96
    Top = 53
    Width = 601
    Height = 23
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit [10]
    Left = 96
    Top = 93
    Width = 297
    Height = 23
    DataField = 'APRESENTACAO'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit4: TDBEdit [11]
    Left = 96
    Top = 133
    Width = 601
    Height = 23
    DataField = 'POSOLOGIA'
    DataSource = DataSource1
    TabOrder = 3
  end
  inherited DataSource1: TDataSource
    DataSet = DM.cdsCadRemed
    Top = 88
  end
end
