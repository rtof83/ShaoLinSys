object frmCalendario: TfrmCalendario
  Left = 219
  Top = 107
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Calend'#225'rio'
  ClientHeight = 240
  ClientWidth = 275
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Scaled = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object MonthCalendar1: TMonthCalendar
    Left = 0
    Top = 21
    Width = 275
    Height = 219
    Align = alClient
    Date = 38247.770001979170000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 275
    Height = 21
    AutoSize = True
    ButtonHeight = 21
    ButtonWidth = 47
    Caption = 'ToolBar1'
    EdgeBorders = []
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ShowCaptions = True
    TabOrder = 1
    object btnFechar: TToolButton
      Left = 0
      Top = 0
      Caption = 'Fechar'
      ImageIndex = 0
      ParentShowHint = False
      ShowHint = False
      OnClick = btnFecharClick
    end
  end
end
