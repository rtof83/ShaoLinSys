object frmConfigSys: TfrmConfigSys
  Left = 212
  Top = 107
  BorderStyle = bsSingle
  Caption = 'Formul'#225'rio de Configura'#231#245'es'
  ClientHeight = 410
  ClientWidth = 462
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object TabControl1: TTabControl
    Left = 0
    Top = 0
    Width = 462
    Height = 377
    Align = alTop
    TabOrder = 0
    object Panel1: TPanel
      Left = 4
      Top = 6
      Width = 454
      Height = 367
      Align = alClient
      BorderStyle = bsSingle
      TabOrder = 0
      object GroupBox2: TGroupBox
        Left = 8
        Top = 8
        Width = 433
        Height = 117
        Caption = 'E-Mail'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label5: TLabel
          Left = 248
          Top = 19
          Width = 45
          Height = 16
          Caption = 'Senha'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 8
          Top = 67
          Width = 89
          Height = 16
          Caption = 'Host (SMTP)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 8
          Top = 19
          Width = 55
          Height = 16
          Caption = 'Usu'#225'rio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object dbeSenha: TDBEdit
          Left = 248
          Top = 36
          Width = 177
          Height = 24
          DataField = 'Senha'
          DataSource = dtmDados.dsConfigSys
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PasswordChar = '@'
          TabOrder = 1
        end
        object dbeHost: TDBEdit
          Left = 8
          Top = 84
          Width = 233
          Height = 24
          CharCase = ecLowerCase
          DataField = 'Host'
          DataSource = dtmDados.dsConfigSys
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object dbeUsuario: TDBEdit
          Left = 8
          Top = 36
          Width = 233
          Height = 24
          CharCase = ecLowerCase
          DataField = 'Usuario'
          DataSource = dtmDados.dsConfigSys
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
      object GroupBox1: TGroupBox
        Left = 8
        Top = 136
        Width = 273
        Height = 219
        Caption = 'Imagem de Fundo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object Panel4: TPanel
          Left = 10
          Top = 21
          Width = 253
          Height = 188
          BorderStyle = bsSingle
          Color = clWindow
          TabOrder = 0
          object imgFundo: TImage
            Left = 1
            Top = 1
            Width = 247
            Height = 182
            Align = alClient
            Center = True
            ParentShowHint = False
            ShowHint = True
            Stretch = True
            OnClick = imgFundoClick
            OnDblClick = imgFundoDblClick
          end
        end
      end
    end
  end
  object btnFechar: TButton
    Left = 383
    Top = 381
    Width = 75
    Height = 25
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btnFecharClick
  end
  object popFundo: TPopupMenu
    Left = 372
    Top = 157
    object mnuInserir: TMenuItem
      Caption = '&Inserir'
      OnClick = mnuInserirClick
    end
    object mnuExcluir: TMenuItem
      Caption = '&Excluir'
      OnClick = mnuExcluirClick
    end
  end
  object ApplicationEvents1: TApplicationEvents
    OnHint = ApplicationEvents1Hint
    Left = 340
    Top = 157
  end
  object opcFundo: TOpenPictureDialog
    Left = 404
    Top = 157
  end
end
