object frmAlunoIni: TfrmAlunoIni
  Left = 297
  Top = 112
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Alunos'
  ClientHeight = 555
  ClientWidth = 996
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
  object lblContMod: TLabel
    Left = 6
    Top = 532
    Width = 88
    Height = 16
    Caption = 'lblContAluno'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object TabControl1: TTabControl
    Left = 0
    Top = 0
    Width = 996
    Height = 528
    Align = alTop
    TabOrder = 0
    object Panel1: TPanel
      Left = 4
      Top = 6
      Width = 988
      Height = 518
      Align = alClient
      BorderStyle = bsSingle
      TabOrder = 0
      object dbgAlunoIni: TDBGrid
        Left = 1
        Top = 1
        Width = 982
        Height = 512
        Align = alClient
        BorderStyle = bsNone
        DataSource = dtmDados.dsAlunoIni
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = dbgAlunoIniDrawColumnCell
        OnDblClick = dbgAlunoIniDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'Nome'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 361
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Modalidade'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 145
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Turma'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 123
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Vencimento'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Status'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 124
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Situacao'
            Title.Alignment = taCenter
            Title.Caption = 'Situa'#231#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 88
            Visible = True
          end>
      end
    end
  end
end
