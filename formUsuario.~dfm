object frmUsuario: TfrmUsuario
  Left = 223
  Top = 112
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Formul'#225'rio de Usu'#225'rios'
  ClientHeight = 221
  ClientWidth = 278
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
  object btnFechar: TButton
    Left = 200
    Top = 193
    Width = 75
    Height = 25
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btnFecharClick
  end
  object TabControl1: TTabControl
    Left = 0
    Top = 0
    Width = 278
    Height = 190
    Align = alTop
    TabOrder = 1
    object Panel1: TPanel
      Left = 4
      Top = 6
      Width = 270
      Height = 180
      Align = alClient
      BorderStyle = bsSingle
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 8
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
      object Label2: TLabel
        Left = 168
        Top = 8
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
      object lblContMod: TLabel
        Left = 180
        Top = 155
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
      object dbeUsuario: TDBEdit
        Tag = 1
        Left = 8
        Top = 24
        Width = 153
        Height = 24
        CharCase = ecUpperCase
        Color = clCream
        DataField = 'Usuario'
        DataSource = dtmDados.dsLogin
        TabOrder = 0
      end
      object dbeSenha: TDBEdit
        Tag = 1
        Left = 168
        Top = 24
        Width = 89
        Height = 24
        Color = clCream
        DataField = 'Senha'
        DataSource = dtmDados.dsLogin
        PasswordChar = '#'
        TabOrder = 1
      end
      object Panel2: TPanel
        Left = 8
        Top = 55
        Width = 251
        Height = 98
        BevelInner = bvRaised
        BevelOuter = bvLowered
        BorderWidth = 1
        TabOrder = 2
        object dbgModalidade: TDBGrid
          Left = 3
          Top = 3
          Width = 245
          Height = 92
          Align = alClient
          BorderStyle = bsNone
          DataSource = dtmDados.dsLogin
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
              FieldName = 'Usuario'
              Width = 270
              Visible = True
            end>
        end
      end
    end
  end
end
