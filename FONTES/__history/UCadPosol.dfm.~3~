inherited F_CadPosol: TF_CadPosol
  Left = 306
  Top = 214
  Caption = 'Cadastro de Posologias Mais Usadas'
  ClientHeight = 470
  OldCreateOrder = True
  ExplicitLeft = 306
  ExplicitTop = 214
  ExplicitHeight = 508
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 32
    Top = 24
    Width = 37
    Height = 15
    Caption = 'Identif.'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 32
    Top = 72
    Width = 55
    Height = 15
    Caption = 'Posologia'
    FocusControl = DBEdit2
  end
  inherited StatusBar1: TStatusBar
    Top = 451
    ExplicitTop = 451
  end
  inherited GroupBox1: TGroupBox
    Top = 396
    ExplicitTop = 396
  end
  inherited DBGrid1: TDBGrid
    Top = 152
    Height = 244
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    Columns = <
      item
        Expanded = False
        FieldName = 'IDPOSOL'
        Title.Caption = 'Ident.'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'POSOLOGIA'
        Title.Caption = 'Posologia'
        Width = 610
        Visible = True
      end>
  end
  inherited DBNavigator1: TDBNavigator
    Hints.Strings = ()
  end
  object DBEdit1: TDBEdit [6]
    Left = 32
    Top = 40
    Width = 57
    Height = 23
    DataField = 'IDPOSOL'
    DataSource = DataSource1
    Enabled = False
    TabOrder = 4
  end
  object DBEdit2: TDBEdit [7]
    Left = 32
    Top = 96
    Width = 721
    Height = 23
    DataField = 'POSOLOGIA'
    DataSource = DataSource1
    TabOrder = 5
  end
  inherited DataSource1: TDataSource
    DataSet = DM.cdsCadPos
  end
end
