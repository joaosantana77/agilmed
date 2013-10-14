inherited F_CadLocal: TF_CadLocal
  Left = 292
  Top = 270
  Caption = 'Locais de Trabalho'
  ExplicitLeft = 292
  ExplicitTop = 270
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 21
    Top = 16
    Width = 37
    Height = 15
    Caption = 'Identif.'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 27
    Top = 50
    Width = 31
    Height = 15
    Caption = 'Nome'
    FocusControl = DBEdit2
  end
  object Label3: TLabel [2]
    Left = 26
    Top = 88
    Width = 32
    Height = 15
    Caption = 'Obs 1'
    FocusControl = DBEdit3
  end
  object Label4: TLabel [3]
    Left = 23
    Top = 128
    Width = 35
    Height = 15
    Caption = 'Obs. 2'
    FocusControl = DBEdit4
  end
  inherited GroupBox1: TGroupBox
    inherited btnNovo: TBitBtn
      Left = 10
      Top = 16
      ExplicitLeft = 10
      ExplicitTop = 16
    end
  end
  inherited DBGrid1: TDBGrid
    Top = 160
    Height = 165
    Columns = <
      item
        Expanded = False
        FieldName = 'IDPOSTO'
        Title.Alignment = taCenter
        Title.Caption = 'Id'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIT1'
        Title.Alignment = taCenter
        Title.Caption = 'Nome do Posto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIT2'
        Title.Alignment = taCenter
        Title.Caption = 'Obs1'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIT3'
        Title.Alignment = taCenter
        Title.Caption = 'Obs2'
        Visible = True
      end>
  end
  inherited DBNavigator1: TDBNavigator
    Left = 464
    Hints.Strings = ()
    ExplicitLeft = 464
  end
  object DBEdit1: TDBEdit [8]
    Left = 64
    Top = 13
    Width = 73
    Height = 23
    DataField = 'IDPOSTO'
    DataSource = DataSource1
    Enabled = False
    TabOrder = 4
  end
  object DBEdit2: TDBEdit [9]
    Left = 64
    Top = 47
    Width = 545
    Height = 23
    DataField = 'TIT1'
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBEdit3: TDBEdit [10]
    Left = 64
    Top = 85
    Width = 545
    Height = 23
    DataField = 'TIT2'
    DataSource = DataSource1
    TabOrder = 6
  end
  object DBEdit4: TDBEdit [11]
    Left = 64
    Top = 125
    Width = 545
    Height = 23
    DataField = 'TIT3'
    DataSource = DataSource1
    TabOrder = 7
  end
  inherited DataSource1: TDataSource
    DataSet = DM.cdsCadLoc
  end
end
