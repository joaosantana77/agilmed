object F_Config: TF_Config
  Left = 336
  Top = 291
  Caption = 'Configura'#231#227'o'
  ClientHeight = 265
  ClientWidth = 445
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 401
    Height = 113
    Caption = 'Impressora'
    TabOrder = 0
    object rgImp: TRadioGroup
      Left = 64
      Top = 24
      Width = 313
      Height = 73
      ItemIndex = 0
      Items.Strings = (
        'Imprime direto para Impressora'
        'Preview')
      TabOrder = 0
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 224
    Width = 445
    Height = 41
    Align = alBottom
    TabOrder = 1
    object butSAIR: TButton
      Left = 326
      Top = 8
      Width = 83
      Height = 25
      Caption = 'Sair'
      TabOrder = 0
      OnClick = butSAIRClick
    end
    object butGRAVAR: TButton
      Left = 192
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 1
      OnClick = butGRAVARClick
    end
  end
  object gbReceita: TGroupBox
    Left = 8
    Top = 128
    Width = 401
    Height = 81
    Caption = 'Dados da Receita'
    TabOrder = 2
    object Label1: TLabel
      Left = 56
      Top = 19
      Width = 106
      Height = 13
      Caption = 'Quantidade de C'#243'pias'
    end
    object Label2: TLabel
      Left = 43
      Top = 48
      Width = 119
      Height = 13
      Caption = 'Imprime Cabe'#231'alho (S/N)'
    end
    object edtNumCopias: TEdit
      Left = 184
      Top = 16
      Width = 25
      Height = 21
      NumbersOnly = True
      TabOrder = 0
    end
    object edtImpTitulo: TEdit
      Left = 184
      Top = 43
      Width = 17
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      OnKeyPress = edtImpTituloKeyPress
    end
  end
end