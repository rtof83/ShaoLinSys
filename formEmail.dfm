object frmEmail: TfrmEmail
  Left = 222
  Top = 113
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Enviar E-Mail'
  ClientHeight = 353
  ClientWidth = 395
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
  object btFechar: TBitBtn
    Left = 316
    Top = 323
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
    OnClick = btFecharClick
  end
  object TabControl1: TTabControl
    Left = 0
    Top = 0
    Width = 395
    Height = 317
    Align = alTop
    TabOrder = 1
    object Panel1: TPanel
      Left = 4
      Top = 6
      Width = 387
      Height = 307
      Align = alClient
      BorderStyle = bsSingle
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 8
        Width = 34
        Height = 16
        Caption = 'Para'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 8
        Top = 52
        Width = 56
        Height = 16
        Caption = 'Assunto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 8
        Top = 140
        Width = 77
        Height = 16
        Caption = 'Mensagem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtPara: TEdit
        Left = 8
        Top = 24
        Width = 369
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object edtAssunto: TEdit
        Left = 8
        Top = 69
        Width = 369
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object lbxAnexos: TListBox
        Left = 8
        Top = 108
        Width = 294
        Height = 24
        Style = lbOwnerDrawFixed
        Color = clBtnFace
        ExtendedSelect = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        ParentFont = False
        TabOrder = 2
      end
      object mmMensagem: TMemo
        Left = 8
        Top = 157
        Width = 369
        Height = 110
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 4
      end
      object btAnexar: TBitBtn
        Left = 302
        Top = 108
        Width = 75
        Height = 24
        Caption = 'Anexar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = btAnexarClick
      end
      object btEnviar: TBitBtn
        Left = 302
        Top = 272
        Width = 75
        Height = 25
        Caption = 'Enviar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        OnClick = btEnviarClick
      end
    end
  end
  object odAnexos: TOpenDialog
    Left = 248
    Top = 168
  end
  object IdMessage: TIdMessage
    AttachmentEncoding = 'MIME'
    BccList = <>
    CCList = <>
    Encoding = meMIME
    From.Address = 'br.rep@terra.com.br'
    From.Name = 'Alex'
    From.Text = 'Alex <br.rep@terra.com.br>'
    Recipients = <>
    ReplyTo = <>
    Left = 280
    Top = 168
  end
  object IdSMTP: TIdSMTP
    MaxLineAction = maException
    ReadTimeout = 15000
    Port = 25
    AuthenticationType = atLogin
    Left = 312
    Top = 168
  end
end
