object frmModalidade: TfrmModalidade
  Left = 317
  Top = 245
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Formul'#225'rio de Modalidades'
  ClientHeight = 302
  ClientWidth = 429
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
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
  TextHeight = 13
  object TabControl1: TTabControl
    Left = 0
    Top = 0
    Width = 429
    Height = 273
    Align = alTop
    TabOrder = 0
    object Panel1: TPanel
      Left = 4
      Top = 6
      Width = 421
      Height = 263
      Align = alClient
      BorderStyle = bsSingle
      TabOrder = 0
      object lblContMod: TLabel
        Left = 331
        Top = 237
        Width = 79
        Height = 16
        Alignment = taRightJustify
        Caption = 'lblContMod'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Panel7: TPanel
        Left = 8
        Top = 8
        Width = 402
        Height = 59
        BevelInner = bvRaised
        BevelOuter = bvLowered
        BorderWidth = 1
        TabOrder = 0
        object Label1: TLabel
          Left = 8
          Top = 8
          Width = 84
          Height = 16
          Caption = 'Modalidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 312
          Top = 8
          Width = 38
          Height = 16
          Caption = 'Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object dbeModalidade: TDBEdit
          Left = 8
          Top = 25
          Width = 297
          Height = 24
          CharCase = ecUpperCase
          DataField = 'Modalidade'
          DataSource = dtmDados.dsModalidade
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnEnter = dbeModalidadeEnter
          OnExit = dbeModalidadeExit
        end
        object dbeValor: TDBEdit
          Left = 312
          Top = 25
          Width = 81
          Height = 24
          CharCase = ecUpperCase
          DataField = 'Valor'
          DataSource = dtmDados.dsModalidade
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnEnter = dbeValorEnter
          OnExit = dbeValorExit
        end
      end
      object Panel2: TPanel
        Left = 8
        Top = 77
        Width = 402
        Height = 158
        BevelInner = bvRaised
        BevelOuter = bvLowered
        BorderWidth = 1
        TabOrder = 1
        object dbgModalidade: TDBGrid
          Left = 3
          Top = 3
          Width = 396
          Height = 152
          Align = alClient
          BorderStyle = bsNone
          DataSource = dtmDados.dsModalidade
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Modalidade'
              Width = 270
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Valor'
              Width = 80
              Visible = True
            end>
        end
      end
    end
  end
  object btnFechar: TButton
    Left = 352
    Top = 275
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
end
