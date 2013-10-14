object F_Principal: TF_Principal
  Left = 195
  Top = 151
  Caption = 'AGILMED '
  ClientHeight = 538
  ClientWidth = 948
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnKeyPress = FormKeyPress
  OnPaint = FormPaint
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 21
    Top = 8
    Width = 45
    Height = 16
    Caption = 'Paciente'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 454
    Top = 8
    Width = 30
    Height = 16
    Caption = 'Idade'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SpeedButton1: TSpeedButton
    Left = 737
    Top = 8
    Width = 202
    Height = 25
    Caption = 'Gravar Paciente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object edtNOME: TEdit
    Left = 75
    Top = 8
    Width = 373
    Height = 24
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object edtIDADE: TEdit
    Left = 490
    Top = 9
    Width = 21
    Height = 24
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Narrow'
    Font.Style = []
    NumbersOnly = True
    ParentFont = False
    TabOrder = 1
    Text = '0'
    OnExit = edtIDADEExit
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 39
    Width = 937
    Height = 491
    ActivePage = TabSheet1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Images = ImageList2
    ParentFont = False
    TabOrder = 2
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Receitu'#225'rio'
      object Label2: TLabel
        Left = 376
        Top = 19
        Width = 47
        Height = 14
        Caption = 'Rem'#233'dios'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 743
        Top = 20
        Width = 33
        Height = 14
        Caption = 'Apres.'
      end
      object Label7: TLabel
        Left = 372
        Top = 350
        Width = 118
        Height = 14
        Caption = 'Posologias gravadas (2)'
      end
      object sbGravaRemedio: TSpeedButton
        Left = 725
        Top = 68
        Width = 201
        Height = 25
        Caption = 'Gravar Novo Rem'#233'dio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = sbGravaRemedioClick
      end
      object spEnvRec1: TSpeedButton
        Left = 725
        Top = 333
        Width = 201
        Height = 29
        Caption = 'Enviar para Receita (1)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = spEnvRec1Click
      end
      object EnvRec2: TSpeedButton
        Left = 725
        Top = 397
        Width = 201
        Height = 28
        Caption = 'Enviar para Receita (2)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = EnvRec2Click
      end
      object Label4: TLabel
        Left = 376
        Top = 84
        Width = 113
        Height = 14
        Caption = 'Rem'#233'dios gravados (1)'
      end
      object Label5: TLabel
        Left = 376
        Top = 44
        Width = 46
        Height = 14
        Caption = 'Posologia'
      end
      object lblVERSAO: TLabel
        Left = 624
        Top = 445
        Width = 282
        Height = 14
        Caption = 'Vers'#227'o 2.3 - Alterar/Implementar com Jo'#227'o (84)8731-1255 '
      end
      object edtLocaliza: TEdit
        Left = 432
        Top = 16
        Width = 305
        Height = 22
        CharCase = ecUpperCase
        TabOrder = 0
        OnKeyPress = edtLocalizaKeyPress
      end
      object DBGrid2: TDBGrid
        Left = 372
        Top = 101
        Width = 554
        Height = 226
        DataSource = dsRemedios
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid2DrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'NOME'
            Width = 163
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'APRESENTACAO'
            Title.Caption = 'Apresent.'
            Width = 63
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'POSOLOGIA'
            Title.Caption = 'Posologia'
            Width = 500
            Visible = True
          end>
      end
      object cbPsl: TComboBox
        Left = 372
        Top = 368
        Width = 557
        Height = 24
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object edtApres: TEdit
        Left = 782
        Top = 16
        Width = 144
        Height = 22
        TabOrder = 1
      end
      object edtPos: TEdit
        Left = 432
        Top = 40
        Width = 494
        Height = 22
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object Panel1: TPanel
        Left = 3
        Top = 16
        Width = 363
        Height = 409
        Color = clWhite
        TabOrder = 5
        object lblTIT1: TLabel
          Left = 8
          Top = 3
          Width = 337
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'lblTIT1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblTIT2: TLabel
          Left = 8
          Top = 20
          Width = 337
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'lblTIT2'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBGrid3: TDBGrid
          Left = -3
          Top = 85
          Width = 366
          Height = 317
          DataSource = dsTmp
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Options = [dgEditing, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'REMEDIO'
              Width = 300
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COMP'
              Visible = True
            end>
        end
        object GroupBox2: TGroupBox
          Left = 6
          Top = 42
          Width = 354
          Height = 37
          TabOrder = 1
          object lblNOME: TLabel
            Left = 3
            Top = 11
            Width = 343
            Height = 18
            AutoSize = False
            Caption = 'Nome:   '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
      end
      object butImp: TButton
        Left = 47
        Top = 431
        Width = 75
        Height = 25
        Caption = '&Imprimir'
        TabOrder = 6
        OnClick = butImpClick
      end
      object butRECLimpa: TButton
        Left = 246
        Top = 431
        Width = 75
        Height = 25
        Caption = 'Limpar'
        TabOrder = 7
        OnClick = butRECLimpaClick
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Atestado'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox1: TGroupBox
        Left = 384
        Top = 36
        Width = 505
        Height = 237
        Caption = 'Atestado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object edtHora: TEdit
          Left = 296
          Top = 72
          Width = 41
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object edtDias: TEdit
          Left = 296
          Top = 106
          Width = 41
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Text = '1'
        end
        object butAtestEnvia: TButton
          Left = 24
          Top = 184
          Width = 75
          Height = 25
          Caption = 'Enviar'
          TabOrder = 2
          OnClick = butAtestEnviaClick
        end
        object edtAt1: TEdit
          Left = 24
          Top = 40
          Width = 161
          Height = 24
          TabOrder = 3
          Text = 'Atesto que o segurado(a)'
        end
        object edtATNome: TEdit
          Left = 200
          Top = 40
          Width = 265
          Height = 24
          TabOrder = 4
        end
        object edtAT2: TEdit
          Left = 24
          Top = 72
          Width = 257
          Height = 24
          TabOrder = 5
          Text = 'foi examinado nesta unidade '#224's'
        end
        object edtAT4: TEdit
          Left = 24
          Top = 107
          Width = 257
          Height = 24
          TabOrder = 6
          Text = 'necessitando  de'
        end
        object edtAT6: TEdit
          Left = 24
          Top = 139
          Width = 441
          Height = 24
          TabOrder = 7
          Text = 'afastamento do trabalho, a partir desta data.'
        end
        object edtAT3: TEdit
          Left = 344
          Top = 72
          Width = 121
          Height = 24
          TabOrder = 8
          Text = 'horas'
        end
        object edtAT5: TEdit
          Left = 344
          Top = 106
          Width = 121
          Height = 24
          TabOrder = 9
          Text = 'dia(s) de'
        end
      end
      object Panel2: TPanel
        Left = 8
        Top = 16
        Width = 353
        Height = 409
        Color = clWhite
        TabOrder = 1
        object lblTITAt1: TLabel
          Left = 8
          Top = 16
          Width = 337
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'lblTIT1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblTITAT2: TLabel
          Left = 8
          Top = 38
          Width = 337
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'lblTIT2'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 6
          Top = 352
          Width = 119
          Height = 14
          Caption = 'Cear'#225' Mirim , 09/02/2013'
          Visible = False
        end
        object Label12: TLabel
          Left = 8
          Top = 336
          Width = 113
          Height = 14
          AutoSize = False
          Caption = '------------------------------------------------'
        end
        object RichEdit1: TRichEdit
          Left = 16
          Top = 104
          Width = 305
          Height = 201
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Lines.Strings = (
            '')
          ParentFont = False
          TabOrder = 0
        end
        object GroupBox3: TGroupBox
          Left = 16
          Top = 60
          Width = 305
          Height = 38
          TabOrder = 1
          object lblAtest: TLabel
            Left = 56
            Top = 12
            Width = 183
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Caption = 'ATESTADO M'#201'DICO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
      end
      object butATEIMP: TButton
        Left = 54
        Top = 431
        Width = 75
        Height = 25
        Caption = 'Imprimir'
        TabOrder = 2
        OnClick = butATEIMPClick
      end
      object butATELimpa: TButton
        Left = 232
        Top = 432
        Width = 75
        Height = 25
        Caption = 'Limpar'
        TabOrder = 3
        OnClick = butATELimpaClick
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Exames'
      ImageIndex = 2
      object rgExame: TRadioGroup
        Left = 368
        Top = 16
        Width = 433
        Height = 41
        Caption = 'Tipos de Exames'
        Columns = 4
        ItemIndex = 0
        Items.Strings = (
          'Todos'
          'Checkup'
          'Sangue'
          'Especial')
        TabOrder = 0
        OnClick = rgExameClick
      end
      object Button9: TButton
        Left = 368
        Top = 312
        Width = 137
        Height = 25
        Caption = 'Enviar para Impress'#227'o '
        TabOrder = 1
        OnClick = Button9Click
      end
      object DBGrid1: TDBGrid
        Left = 368
        Top = 72
        Width = 433
        Height = 233
        DataSource = dsExames
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        TabOrder = 2
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'IDEXAME'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Width = 188
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GRUPO'
            Width = 87
            Visible = True
          end
          item
            Color = clYellow
            Expanded = False
            FieldName = 'SN'
            Visible = True
          end>
      end
      object butLimpa: TButton
        Left = 544
        Top = 312
        Width = 97
        Height = 25
        Caption = 'Limpar Marcados'
        TabOrder = 3
        OnClick = butLimpaClick
      end
      object Button11: TButton
        Left = 680
        Top = 312
        Width = 75
        Height = 25
        Caption = 'Marcar Todos'
        TabOrder = 4
        OnClick = Button11Click
      end
      object Panel3: TPanel
        Left = -8
        Top = 16
        Width = 345
        Height = 401
        Color = clWhite
        TabOrder = 5
        object lblTITEX1: TLabel
          Left = 8
          Top = 3
          Width = 337
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'lblTIT1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblTITEX2: TLabel
          Left = 8
          Top = 20
          Width = 337
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'lblTIT2'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBGrid4: TDBGrid
          Left = 16
          Top = 80
          Width = 320
          Height = 289
          DataSource = dsTMPEX
          Options = [dgEditing, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'NOME'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MARCA'
              Visible = True
            end>
        end
        object GroupBox4: TGroupBox
          Left = 17
          Top = 42
          Width = 319
          Height = 32
          TabOrder = 1
          object lblEXNOME: TLabel
            Left = 7
            Top = 9
            Width = 38
            Height = 16
            Caption = 'Nome:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
      end
      object butEXAIMP: TButton
        Left = 32
        Top = 432
        Width = 75
        Height = 25
        Caption = 'Imprimir'
        TabOrder = 6
        OnClick = butEXAIMPClick
      end
      object butEXALimpa: TButton
        Left = 256
        Top = 432
        Width = 75
        Height = 25
        Caption = 'Limpar'
        TabOrder = 7
        OnClick = butEXALimpaClick
      end
    end
  end
  object butEnvNome: TButton
    Left = 528
    Top = 8
    Width = 81
    Height = 25
    Caption = 'Enviar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = butEnvNomeClick
  end
  object BitBtn1: TBitBtn
    Left = 615
    Top = 8
    Width = 98
    Height = 25
    Caption = 'Limpar Dados'
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtn1Click
  end
  object ImageList1: TImageList
    Left = 680
    Top = 464
    Bitmap = {
      494C010103005C008C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF00000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      8000000080000000800000008000000080000000800000008000000080000000
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF00000000000000FFFFFF0000000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      8000000080000000800000008000000080000000800000008000000080000000
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF0000000000000000000000FFFFFF0000000000FFFFFF0000000000FF00
      000000000000000000000000000000000000FFFF00000000000000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      8000000080000000800000008000000080000000800000008000000080000000
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      00000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000FF000000000000000000000000000000FFFF000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF000000000000000000000000000000000000000000FFFF
      FF00FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      8000000080000000800000008000000080000000800000008000000080000000
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF0000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FF0000000000000000000000FFFF00000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      8000000080000000800000008000000080000000800000008000000080000000
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF0000000000000000000000FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FF00000000000000FFFF000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF000000000000000000000000000000000000000000FFFF
      FF00FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      8000000080000000800000008000000080000000800000008000000080000000
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000FF000000FFFF00000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      800000008000000080000000800000008000000080000000800000FFFF000000
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF0000000000FFFF000000000000FFFFFF0000FF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      8000000080000000800000008000000080000000800000008000000080000000
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000000000000000000000000000FFFF
      FF0000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      8000000080000000800000008000000080000000800000008000000080000000
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      800000008000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000080000000
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      800000008000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000080000000
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      800000008000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000080000000
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF000000FF000000FF000000FF00
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      8000000080000000800000008000000080000000800000008000000080000000
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      8000000080000000800000008000000080000000800000008000000080000000
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFF800C0070000FE3FF800C0070000
      F81F2000C0070000F40F0000C0070000E0070000C007000080030000C0070000
      40010000C007000000000000C007000000000000C007000080010000C0070000
      C003E000C0070000E00FF800C0070000F07FF800C0070000F8FFF801C0070000
      FFFFF803C0070000FFFFF807C007000000000000000000000000000000000000
      000000000000}
  end
  object dsRemedios: TDataSource
    DataSet = DM.cdsRemedios
    Left = 68
    Top = 184
  end
  object MainMenu1: TMainMenu
    Left = 440
    Top = 464
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Atendidos1: TMenuItem
        Caption = 'Pacientes Atendidos'
        OnClick = Atendidos1Click
      end
      object Medicos1: TMenuItem
        Caption = '&Exames'
        OnClick = Medicos1Click
      end
      object Pacientes3: TMenuItem
        Action = actLocal
      end
      object Posologias: TMenuItem
        Action = actPosologia
      end
      object Remedios1: TMenuItem
        Action = actCadRemedios
        ShortCut = 16466
      end
      object Mdicos1: TMenuItem
        Action = actMedicos
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Sair2: TMenuItem
        Caption = 'Sair'
        OnClick = Sair2Click
      end
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      object AtendimentosnoPerodo1: TMenuItem
        Action = actRelATEND
      end
      object Remdios1: TMenuItem
        Caption = 'Rem'#233'dios'
      end
    end
    object Configuraes1: TMenuItem
      Caption = 'Configura'#231#245'es'
      OnClick = Configuraes1Click
    end
    object Ajuda1: TMenuItem
      Caption = 'Ajuda'
      object Ajuda2: TMenuItem
        Caption = 'Ajuda'
      end
      object Sobre1: TMenuItem
        Caption = 'Sobre'
        OnClick = Sobre1Click
      end
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      OnClick = Sair1Click
    end
  end
  object ActionManager1: TActionManager
    Left = 384
    Top = 480
    StyleName = 'XP Style'
    object actCadRemedios: TAction
      Caption = 'Rem'#233'dios'
      OnExecute = actCadRemediosExecute
    end
    object actLocal: TAction
      Caption = 'Local de Trabalho'
      OnExecute = actLocalExecute
    end
    object actPosologia: TAction
      Caption = 'Posologias Mais Usadas'
      OnExecute = actPosologiaExecute
    end
    object actRelATEND: TAction
      Caption = 'Rel. Atendidos'
      OnExecute = actRelATENDExecute
    end
    object actMedicos: TAction
      Caption = 'M'#233'dicos'
      OnExecute = actMedicosExecute
    end
  end
  object dsPosto: TDataSource
    DataSet = DM.cdsPosto
    Left = 116
    Top = 184
  end
  object dsMedico: TDataSource
    DataSet = DM.cdsMedicos
    Left = 220
    Top = 192
  end
  object dsExames: TDataSource
    DataSet = DM.cdsEXAMES
    Left = 340
    Top = 176
  end
  object cdsTmp: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 564
    Top = 473
    object cdsTmpREMEDIO: TStringField
      FieldName = 'REMEDIO'
      Size = 52
    end
    object cdsTmpCOMP: TStringField
      FieldName = 'COMP'
      Size = 10
    end
  end
  object dsTmp: TDataSource
    DataSet = cdsTmp
    Left = 484
    Top = 473
  end
  object cdsTMPEX: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 924
    Top = 577
    object cdsTMPEXNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object cdsTMPEXMARCA: TStringField
      FieldName = 'MARCA'
      Size = 3
    end
  end
  object dsTMPEX: TDataSource
    DataSet = cdsTMPEX
    Left = 524
    Top = 473
  end
  object ImageList2: TImageList
    Left = 628
    Top = 465
    Bitmap = {
      494C010103005C008C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0010000000330000003300000033000000330000003300000033000000330000
      0033000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000370000006E0000006E0000
      006E0000006E0000006E0000006E0000006E0000006E0000006E0000006E0000
      006E0000006E0000006E0000006E0000000000080D4E000A0F5E000A0F5E000A
      0F5E000A0F5E000A0F5E000A0F5E000A0F5E000A0F5E000A0F5E000A0F5E000A
      0F5E000A0F5E000A0F5E000A0F5C000102110000000000000000000000004940
      11FF686033FFC2B98AFFC2B98AFFC2B98AFFC2B98AFFC2B98AFF6A6134FFB5AC
      7DFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000037FEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFFFEFEFFFFFEFEFFFFFE
      FEFFFFFEFEFFFFFFFEFFFFFFFEFF00000000B6D8E5EEBCE0F1FFBCE0F1FFBCE0
      F1FFBEE2F2FFC1E4F3FFC5E6F4FFC8E9F6FFCDECF8FFD1F0FAFFD6F3FBFFDBF6
      FDFFDFF9FEFFE4FCFFFFECFCFFFF0005072F000000000000000000000000A79F
      76FF9B946CFFCCC499FFCCC499FFCCC499FFCCC499FFCCC499FF9E976EFF9F97
      6EFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000037FDFDFCFFFEFDFCFFFEFD
      FCFFFEFDFCFFFEFDFCFFFEFDFCFFFEFDFCFFFEFDFCFFD8C3B0FFFDFCFCFFD3BB
      A5FFE3D5C6FFD3BCA5FFFEFEFDFF00000000D1F5FFFFBCE0F1FFBCE0F1FFBCE0
      F1FFBDE1F1FFBFE2F2FFC2E5F4FFC6E7F5FFCAEAF7FFCEEEF8FFD3F1FAFFD8F4
      FCFFDDF7FEFFE0FAFFFFE8FCFFFF0005072F000000000000000000000000928B
      69FFAAA381FFD3CCA7FFD3CCA7FF948E6DFFD3CCA7FFD3CCA7FFAAA381FF8D86
      64FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000037FDFCFAFFFDFCFAFFFDFC
      FAFFFDFCFAFFFDFCFBFFFDFCFBFFFDFCFBFFFDFCFBFFFDFCFBFFEADFD3FFC09F
      7EFFFDFCFBFFFDFCFBFFFDFCFBFF00000000D1F5FFFFBCE0F1FFBCE0F1FFBCE0
      F1FFBCE0F1FFBEE1F2FFC0E3F3FFC4E6F4FFC8E9F6FFCCECF7FFCAE4E8FFD5F2
      FBFFDAF6FDFFDEF8FEFFE2FBFFFF0005072F000000000000000000000000928D
      72FFD4CEAFFFDAD4B5FF8E896DFFBCBBB0FFBAB496FFDAD4B5FFD4CEAFFF928D
      72FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000037FBFAF8FFFBFAF8FFFBFA
      F8FFFCFAF8FFFCFAF8FFFCFBF8FFFCFBF9FFFCFBF9FFFCFBF9FFFCFBF9FFFCFB
      F9FFE3D5C7FFFCFBF9FFFCFBF9FF00000000D1F5FFFFBCE0F1FFBCE0F1FFBCE0
      F1FFBCE0F1FFBCE0F1FFBFE2F2FFC2E4F3FFC5E7F5FFC9EAF6FFCDEDF8FFD2F0
      FAFFD7F4FCFFDCF7FDFFE0F9FFFF0005072F0000000000000000000000009A96
      81FFE1DCC3FF98937AFFE0DBC2FF7883AFFFB5B097FFD8D3BAFFE1DCC3FF9A96
      81FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000037FAF8F4FFFAF8F4FFFAF8
      F4FFFAF8F4FFFAF8F5FFFAF8F5FFFAF8F5FFFAF8F5FFFAF8F5FFFAF9F6FFFAF9
      F6FFFAF9F6FFFBF9F6FFFBF9F6FF00000000D1F5FFFFBCE0F1FFBCE0F1FFBCE0
      F1FFBCE0F1FFBCE0F1FFBDE1F1FFC0E3F2FFC3E5F4FFC2E2EEFFB4D0DBFFB7D3
      DDFFBCD6DEFFC0D9DFFFD7F1F7FF0005072F0000000000000000000000007E7A
      6CE6DDD9C6FFB6B19CFFB8B8B6FF9FABD9FFD2CDB9FFB6B29DFFE7E3D0FF7F7C
      6DE9000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000037F8F6F1FFF8F6F1FFF8F6
      F1FFF8F6F2FFF8F6F2FFF8F6F2FFF8F6F2FFF9F6F2FFCCCAC6FFCCCAC6FFCCCA
      C6FFCCCAC7FFCCCAC7FFF9F7F3FF00000000D1F5FFFFBCE0F1FFBCE0F1FFBCE0
      F1FFBCE0F1FFBCE0F1FFBCE0F1FFBEE2F2FFC1E4F3FFA4C1CDFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB7CFD5FF0005072F0000000000000000000000000000
      000054534B82B2AE9BFF626D9AFF5C689AFF646F99FFA6A392F752514A800000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000037F7F4EEFFF7F4EFFFF7F4
      EFFFF7F4EFFFF7F4EFFFF7F4EFFFF7F4EFFFF7F4EFFFBEBCB8FFF7F4F0FF9C9B
      98FFB3B2AEFF9C9B98FFF8F5F0FF00000000D1F5FFFFBCE0F1FFBCE0F1FFBCE0
      F1FFBCE0F1FFBCE0F1FFBCE0F1FFBDE1F1FFBFE2F2FFA1C0CDFFD8E3E6FF676D
      6FFF676D6FFFD8E3E6FFB4CDD4FF0005072F0000000000000000000000000000
      00000000000020263D78939FD3FF9FABDDFF8C98CEFF1F254081000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000037F5F2ECFFF6F2ECFFF6F2
      ECFFF6F2ECFFF6F2ECFFF6F2EDFFF6F2EDFFF6F3EDFFCAC7C2FFCAC7C2FFCAC7
      C2FFCAC7C2FFCAC7C2FFF6F3EDFF00000000D1F5FFFFBCE0F1FFBCE0F1FFBCE0
      F1FFBCE0F1FFBCE0F1FFBCE0F1FFBCE0F1FFBEE1F2FF9FBECCFFD8E3E6FF5C62
      64FF5A6062FFC7D1D4FFB2CBD3FF0005072F0000000000000000000000000000
      0000000000008490BDFFB1BDE8FF8F9BD0FFA2AEDEFF7480B4FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000037C9CFFAFFC9CFFAFF7F83
      9EFF7F839EFF7F839EFF7F839EFF7F839EFF7F839EFF7F839EFF7F839EFF7F83
      9EFFC9CFFAFFC9CFFAFFC9CFFAFF00000000D1F5FFFFAFC4CDFFAFC4CDFFAFC4
      CDFFAFC4CDFFAFC4CDFFAFC4CDFFAFC4CDFFAFC4CDFF90A3ABFFD8E3E6FF5F65
      67FF464B4CFFCACACAFF859AA1FF0005072F0000000000000000000000000000
      000000000000A3AFD7FFA1ADD9FFBDC9F0FF9DA9D9FF8A96C7FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000037C9CFFAFFC9CFFAFFC9CF
      FAFFC9CFFAFFC9CFFAFFC9CFFAFFC9CFFAFFC9CFFAFFC9CFFAFFC9CFFAFFC9CF
      FAFFC9CFFAFFC9CFFAFFC9CFFAFF00000000BEDFE8F0BEE2F3FFA2A691FF9E9D
      81FFA2A691FFA2A691FFA2A691FF9E9D81FFB3CDD1FF8F8E72FFFFFFFFFFFFFF
      FFFFA1A1A1FFA1A1A1FF788B92FF0004072B0000000000000000000000000000
      0000000000008796B3FFCCD8F9FFC6D2F5FFB8C4ECFF7080A3FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000102110005072F0005072F0005
      072F0005072F0005072F0005072F0005072F0005072F0005072F0005072F0005
      072F0003047CF2F2F2FF00020479000000000000000000000000000000000000
      00000000000075A2A4FF759FA5FF89A5B8FFB0BFE3FF4A6A77FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002332347198BDBFFFA5CCCEFF96BEC1FF21333572000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF000000000000E0070000
      00000000E007000000000000E007000000000000E007000000000000E0070000
      00000000E007000000000000E00F000000000000F00F000000000000F83F0000
      00000000F81F000000000000F81F000000000000F81F0000FFFF0000F81F0000
      FFFFFFFFF83F0000FFFFFFFFFFFF000000000000000000000000000000000000
      000000000000}
  end
end