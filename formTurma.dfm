object frmTurma: TfrmTurma
  Left = 291
  Top = 116
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Formul'#225'rio de Turmas'
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
      object lblContTurma: TLabel
        Left = 317
        Top = 237
        Width = 93
        Height = 16
        Alignment = taRightJustify
        Caption = 'lblContTurma'
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
          Width = 45
          Height = 16
          Caption = 'Turma'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object dbeTurma: TDBEdit
          Left = 8
          Top = 25
          Width = 385
          Height = 24
          DataField = 'Turma'
          DataSource = dtmDados.dsTurma
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnEnter = dbeTurmaEnter
          OnExit = dbeTurmaExit
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
          DataSource = dtmDados.dsTurma
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
              FieldName = 'Turma'
              Width = 350
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
