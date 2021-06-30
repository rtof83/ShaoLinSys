object frmCaixa: TfrmCaixa
  Left = 287
  Top = 110
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Formul'#225'rio de Caixa'
  ClientHeight = 366
  ClientWidth = 527
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
    Width = 527
    Height = 338
    Align = alTop
    TabOrder = 0
    object Panel1: TPanel
      Left = 4
      Top = 6
      Width = 519
      Height = 328
      Align = alClient
      BorderStyle = bsSingle
      TabOrder = 0
      object Label1: TLabel
        Left = 10
        Top = 120
        Width = 82
        Height = 16
        Caption = 'Vencimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 10
        Top = 8
        Width = 33
        Height = 16
        Caption = 'Tipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 106
        Top = 120
        Width = 80
        Height = 16
        Caption = 'Pagamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 202
        Top = 120
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
      object Label5: TLabel
        Left = 10
        Top = 208
        Width = 86
        Height = 16
        Caption = 'Observa'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 298
        Top = 120
        Width = 82
        Height = 16
        Caption = 'Referente a'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbcTipo: TDBComboBox
        Left = 10
        Top = 25
        Width = 103
        Height = 24
        Style = csDropDownList
        DataField = 'Tipo'
        DataSource = dtmDados.dsCaixa
        ItemHeight = 16
        Items.Strings = (
          'ENTRADA'
          'SA'#205'DA')
        TabOrder = 0
      end
      object dbrDescricao: TDBRadioGroup
        Left = 10
        Top = 55
        Width = 495
        Height = 55
        DataField = 'DescOpt'
        DataSource = dtmDados.dsCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Items.Strings = (
          'Aluno'
          'Outros')
        ParentFont = False
        TabOrder = 1
        Values.Strings = (
          'ALUNO'
          'OUTROS')
        OnChange = dbrDescricaoChange
        OnClick = dbrDescricaoClick
      end
      object dbeDesc: TDBEdit
        Left = 114
        Top = 75
        Width = 378
        Height = 24
        CharCase = ecUpperCase
        DataField = 'Descricao'
        DataSource = dtmDados.dsCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
      object dbcAluno: TDBLookupComboBox
        Left = 114
        Top = 75
        Width = 378
        Height = 24
        DataField = 'Descricao'
        DataSource = dtmDados.dsCaixa
        KeyField = 'Nome'
        ListField = 'Nome'
        ListSource = dtmDados.dsAluno
        TabOrder = 9
        OnClick = dbcAlunoClick
      end
      object dbeVencimento: TDBEdit
        Left = 10
        Top = 137
        Width = 87
        Height = 24
        CharCase = ecUpperCase
        DataField = 'Vencimento'
        DataSource = dtmDados.dsCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object dbePagamento: TDBEdit
        Left = 106
        Top = 137
        Width = 87
        Height = 24
        CharCase = ecUpperCase
        DataField = 'Pagamento'
        DataSource = dtmDados.dsCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object dbeValor: TDBEdit
        Left = 202
        Top = 137
        Width = 87
        Height = 24
        CharCase = ecUpperCase
        DataField = 'Valor'
        DataSource = dtmDados.dsCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object dbmObs: TDBMemo
        Left = 10
        Top = 225
        Width = 495
        Height = 89
        DataField = 'Observacao'
        DataSource = dtmDados.dsCaixa
        TabOrder = 7
      end
      object dbcRefMes: TDBComboBox
        Left = 298
        Top = 136
        Width = 124
        Height = 24
        Style = csDropDownList
        DataField = 'RefMes'
        DataSource = dtmDados.dsCaixa
        ItemHeight = 16
        Items.Strings = (
          'JANEIRO'
          'FEVEREIRO'
          'MAR'#199'O'
          'ABRIL'
          'MAIO'
          'JUNHO'
          'JULHO'
          'AGOSTO'
          'SETEMBRO'
          'OUTUBRO'
          'NOVEMBRO'
          'DEZEMBRO')
        TabOrder = 5
      end
      object dbeRefAno: TDBEdit
        Left = 424
        Top = 137
        Width = 81
        Height = 24
        CharCase = ecUpperCase
        DataField = 'RefAno'
        DataSource = dtmDados.dsCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 4
        ParentFont = False
        TabOrder = 6
      end
    end
  end
  object btnFechar: TButton
    Left = 451
    Top = 340
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
