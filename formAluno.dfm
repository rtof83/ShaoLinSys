object frmAluno: TfrmAluno
  Left = 280
  Top = 115
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Formul'#225'rio de Alunos'
  ClientHeight = 510
  ClientWidth = 554
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
  object PageControl1: TPageControl
    Left = 0
    Top = 27
    Width = 554
    Height = 455
    ActivePage = TabSheet1
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Images = frmPrincipal.ImgMenu
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Infoma'#231#245'es Cadastrais'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 546
        Height = 424
        Align = alClient
        BorderStyle = bsSingle
        TabOrder = 0
        object Panel4: TPanel
          Left = 8
          Top = 8
          Width = 527
          Height = 109
          BevelInner = bvRaised
          BevelOuter = bvLowered
          BorderWidth = 1
          TabOrder = 0
          OnEnter = Panel4Enter
          OnExit = Panel4Exit
          object Label1: TLabel
            Left = 10
            Top = 8
            Width = 40
            Height = 16
            Caption = 'Aluno'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label2: TLabel
            Left = 382
            Top = 8
            Width = 83
            Height = 16
            Caption = 'Nascimento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label6: TLabel
            Left = 135
            Top = 56
            Width = 23
            Height = 16
            Caption = 'RG'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label4: TLabel
            Left = 10
            Top = 56
            Width = 36
            Height = 16
            Caption = 'Sexo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label3: TLabel
            Left = 258
            Top = 56
            Width = 55
            Height = 16
            Caption = 'Entrada'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label16: TLabel
            Left = 475
            Top = 10
            Width = 40
            Height = 16
            Caption = 'Venc.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label32: TLabel
            Left = 346
            Top = 56
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
          object dbeAluno: TDBEdit
            Left = 10
            Top = 25
            Width = 367
            Height = 24
            CharCase = ecUpperCase
            DataField = 'Nome'
            DataSource = dtmDados.dsAluno
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnEnter = dbeAlunoEnter
            OnExit = dbeAlunoExit
          end
          object dbeNascimento: TDBEdit
            Left = 382
            Top = 25
            Width = 88
            Height = 24
            DataField = 'Nascimento'
            DataSource = dtmDados.dsAluno
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object dbeRG: TDBEdit
            Left = 135
            Top = 73
            Width = 111
            Height = 24
            CharCase = ecUpperCase
            DataField = 'RG'
            DataSource = dtmDados.dsAluno
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object dbcSexo: TDBComboBox
            Left = 10
            Top = 73
            Width = 114
            Height = 24
            Style = csDropDownList
            CharCase = ecUpperCase
            DataField = 'Sexo'
            DataSource = dtmDados.dsAluno
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 16
            Items.Strings = (
              'FEMININO'
              'MASCULINO')
            ParentFont = False
            TabOrder = 2
          end
          object dbeEntrada: TDBEdit
            Left = 258
            Top = 73
            Width = 79
            Height = 24
            DataField = 'Entrada'
            DataSource = dtmDados.dsAluno
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object dbcVencimento: TDBComboBox
            Left = 475
            Top = 26
            Width = 43
            Height = 24
            Style = csDropDownList
            CharCase = ecUpperCase
            DataField = 'Vencimento'
            DataSource = dtmDados.dsAluno
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 16
            Items.Strings = (
              '01'
              '05'
              '10'
              '15'
              '20'
              '25')
            ParentFont = False
            TabOrder = 5
          end
          object dbcTurma: TDBLookupComboBox
            Left = 348
            Top = 73
            Width = 169
            Height = 24
            DataField = 'CodTurma'
            DataSource = dtmDados.dsAluno
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            KeyField = 'CodTurma'
            ListField = 'Turma'
            ListSource = dtmDados.dsTurma
            NullValueKey = 46
            ParentFont = False
            TabOrder = 6
            OnCloseUp = dbcModalidadeCloseUp
          end
        end
        object Panel5: TPanel
          Left = 8
          Top = 114
          Width = 527
          Height = 60
          BevelInner = bvRaised
          BevelOuter = bvLowered
          BorderWidth = 1
          TabOrder = 1
          OnEnter = Panel5Enter
          OnExit = Panel5Exit
          object Label5: TLabel
            Left = 172
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
          object lblGraduacao: TLabel
            Left = 315
            Top = 8
            Width = 78
            Height = 16
            Caption = 'Gradua'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label25: TLabel
            Left = 10
            Top = 8
            Width = 125
            Height = 16
            Caption = 'Tempo de Pr'#225'tica'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object dbcModalidade: TDBLookupComboBox
            Left = 172
            Top = 25
            Width = 137
            Height = 24
            DataField = 'CodModalidade'
            DataSource = dtmDados.dsAluno
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            KeyField = 'CodModalidade'
            ListField = 'Modalidade'
            ListSource = dtmDados.dsModalidade
            NullValueKey = 46
            ParentFont = False
            TabOrder = 1
            OnCloseUp = dbcModalidadeCloseUp
          end
          object dbcGraduacao: TDBComboBox
            Left = 314
            Top = 25
            Width = 203
            Height = 24
            Style = csDropDownList
            CharCase = ecUpperCase
            DataField = 'Graduacao'
            DataSource = dtmDados.dsAluno
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 16
            Items.Strings = (
              'INICIANTE'
              '1'#186' N'#205'VEL (UM TRA'#199'O)'
              '2'#186' N'#205'VEL (DOIS TRA'#199'OS)'
              'ESTRELA VERMELHA'
              'ESTRELA AMARELA'
              'ESTRELA AZUL'
              'ESTRELA CINZA'
              'ESTRELA PRETA'
              'ESTRELA AZUL / YIN YANG'
              'ESTRELA CINZA / YIN YANG'
              'ESTRELA PRETA / YIN YANG')
            ParentFont = False
            TabOrder = 2
          end
          object dbePratica: TDBEdit
            Left = 10
            Top = 25
            Width = 155
            Height = 24
            CharCase = ecUpperCase
            DataField = 'Pratica'
            DataSource = dtmDados.dsAluno
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
        end
        object Panel6: TPanel
          Left = 8
          Top = 184
          Width = 527
          Height = 157
          BevelInner = bvRaised
          BevelOuter = bvLowered
          BorderWidth = 1
          TabOrder = 2
          OnEnter = Panel6Enter
          OnExit = Panel6Exit
          object Label7: TLabel
            Left = 134
            Top = 10
            Width = 68
            Height = 16
            Caption = 'Endere'#231'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label8: TLabel
            Left = 85
            Top = 57
            Width = 96
            Height = 16
            Caption = 'Complemento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label10: TLabel
            Left = 10
            Top = 105
            Width = 51
            Height = 16
            Caption = 'Cidade'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label11: TLabel
            Left = 266
            Top = 105
            Width = 21
            Height = 16
            Caption = 'UF'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label12: TLabel
            Left = 321
            Top = 105
            Width = 31
            Height = 16
            Caption = 'CEP'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label9: TLabel
            Left = 266
            Top = 57
            Width = 43
            Height = 16
            Caption = 'Bairro'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label22: TLabel
            Left = 10
            Top = 57
            Width = 55
            Height = 16
            Caption = 'N'#250'mero'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label24: TLabel
            Left = 10
            Top = 10
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
          object dbeEndereco: TDBEdit
            Left = 134
            Top = 27
            Width = 381
            Height = 24
            CharCase = ecUpperCase
            DataField = 'Endereco'
            DataSource = dtmDados.dsAluno
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object dbcTipoEnd: TDBComboBox
            Left = 10
            Top = 27
            Width = 121
            Height = 24
            Style = csDropDownList
            CharCase = ecUpperCase
            DataField = 'TipoEnd'
            DataSource = dtmDados.dsAluno
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 16
            Items.Strings = (
              'ALAMEDA'
              'AVENIDA'
              'CONDOMINIO'
              'CONJUNTO'
              'ESTRADA'
              'PRACA'
              'QUADRA'
              'RUA'
              'RESIDENCIAL'
              'RODOVIA'
              'VIA'
              'VILA')
            ParentFont = False
            TabOrder = 0
          end
          object dbeComplemento: TDBEdit
            Left = 85
            Top = 74
            Width = 175
            Height = 24
            CharCase = ecUpperCase
            DataField = 'Complemento'
            DataSource = dtmDados.dsAluno
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object dbeBairro: TDBEdit
            Left = 266
            Top = 73
            Width = 249
            Height = 24
            CharCase = ecUpperCase
            DataField = 'Bairro'
            DataSource = dtmDados.dsAluno
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object dbeCidade: TDBEdit
            Left = 10
            Top = 122
            Width = 249
            Height = 24
            CharCase = ecUpperCase
            DataField = 'Cidade'
            DataSource = dtmDados.dsAluno
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
          object dbeCEP: TDBEdit
            Left = 321
            Top = 122
            Width = 81
            Height = 24
            DataField = 'CEP'
            DataSource = dtmDados.dsAluno
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
          end
          object dbcUF: TDBComboBox
            Left = 266
            Top = 122
            Width = 50
            Height = 24
            Style = csDropDownList
            CharCase = ecUpperCase
            DataField = 'UF'
            DataSource = dtmDados.dsAluno
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 16
            Items.Strings = (
              'AC'
              'AL'
              'AM'
              'AP'
              'BA'
              'CE'
              'DF'
              'ES'
              'GO'
              'MA'
              'MG'
              'MS'
              'PA'
              'PB'
              'PE'
              'PI'
              'PR'
              'RJ'
              'RN'
              'RO'
              'RR'
              'RS'
              'SC'
              'SE'
              'SP'
              'TO')
            ParentFont = False
            TabOrder = 6
          end
          object dbeNumero: TDBEdit
            Left = 10
            Top = 74
            Width = 69
            Height = 24
            CharCase = ecUpperCase
            DataField = 'Numero'
            DataSource = dtmDados.dsAluno
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
        end
        object Panel7: TPanel
          Left = 8
          Top = 352
          Width = 527
          Height = 61
          BevelInner = bvRaised
          BevelOuter = bvLowered
          BorderWidth = 1
          TabOrder = 3
          OnEnter = Panel7Enter
          OnExit = Panel7Exit
          object Label13: TLabel
            Left = 122
            Top = 8
            Width = 50
            Height = 16
            Caption = 'Celular'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label14: TLabel
            Left = 10
            Top = 8
            Width = 63
            Height = 16
            Caption = 'Telefone'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label15: TLabel
            Left = 235
            Top = 8
            Width = 45
            Height = 16
            Caption = 'E-Mail'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object dbeTelefone: TDBEdit
            Left = 10
            Top = 25
            Width = 105
            Height = 24
            CharCase = ecUpperCase
            DataField = 'Telefone'
            DataSource = dtmDados.dsAluno
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object dbeCelular: TDBEdit
            Left = 122
            Top = 25
            Width = 105
            Height = 24
            CharCase = ecUpperCase
            DataField = 'Celular'
            DataSource = dtmDados.dsAluno
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object dbeEmail: TDBEdit
            Left = 235
            Top = 25
            Width = 280
            Height = 24
            CharCase = ecLowerCase
            DataField = 'Email'
            DataSource = dtmDados.dsAluno
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Informa'#231#245'es Adicionais'
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 546
        Height = 424
        Align = alClient
        BorderStyle = bsSingle
        TabOrder = 0
        object dbrTipoSangue: TDBRadioGroup
          Left = 398
          Top = 1
          Width = 137
          Height = 61
          Caption = 'Grupo Sangu'#237'neo'
          Color = clBtnFace
          Columns = 2
          DataField = 'TipoSangue'
          DataSource = dtmDados.dsAluno
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Items.Strings = (
            'A'
            'B'
            'AB'
            'O')
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          Values.Strings = (
            'A'
            'B'
            'AB'
            'O')
        end
        object GroupBox2: TGroupBox
          Left = 8
          Top = 189
          Width = 265
          Height = 222
          Caption = 'Foto'
          TabOrder = 4
          object Panel12: TPanel
            Left = 10
            Top = 21
            Width = 245
            Height = 191
            BorderStyle = bsSingle
            Color = clWindow
            TabOrder = 0
            object imgFoto: TImage
              Left = 1
              Top = 1
              Width = 239
              Height = 185
              Align = alClient
              Center = True
              ParentShowHint = False
              ShowHint = True
              Stretch = True
              OnClick = imgFotoClick
              OnDblClick = imgFotoDblClick
            end
          end
        end
        object DBRadioGroup1: TDBRadioGroup
          Left = 399
          Top = 58
          Width = 136
          Height = 59
          Caption = 'Rh'
          DataField = 'Rh'
          DataSource = dtmDados.dsAluno
          Items.Strings = (
            'Positivo'
            'Negativo')
          TabOrder = 2
          Values.Strings = (
            'Positivo'
            'Negativo')
        end
        object Panel8: TPanel
          Left = 8
          Top = 8
          Width = 385
          Height = 109
          BevelInner = bvRaised
          BevelOuter = bvLowered
          BorderWidth = 1
          TabOrder = 0
          OnEnter = Panel4Enter
          OnExit = Panel4Exit
          object Label18: TLabel
            Left = 10
            Top = 8
            Width = 94
            Height = 16
            Caption = 'Filia'#231#227'o (Pai)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label19: TLabel
            Left = 10
            Top = 56
            Width = 101
            Height = 16
            Caption = 'Filia'#231#227'o (M'#227'e)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object dbePai: TDBEdit
            Left = 10
            Top = 25
            Width = 363
            Height = 24
            CharCase = ecUpperCase
            DataField = 'Pai'
            DataSource = dtmDados.dsAluno
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object dbeMae: TDBEdit
            Left = 10
            Top = 73
            Width = 363
            Height = 24
            CharCase = ecUpperCase
            DataField = 'Mae'
            DataSource = dtmDados.dsAluno
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
        end
        object Panel9: TPanel
          Left = 280
          Top = 124
          Width = 257
          Height = 288
          BevelInner = bvRaised
          BevelOuter = bvLowered
          BorderWidth = 1
          TabOrder = 5
          OnEnter = Panel4Enter
          OnExit = Panel4Exit
          object Label21: TLabel
            Left = 10
            Top = 8
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
          object dbmObservacao: TDBMemo
            Left = 10
            Top = 25
            Width = 236
            Height = 196
            DataField = 'Observacao'
            DataSource = dtmDados.dsAluno
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ScrollBars = ssVertical
            TabOrder = 0
          end
        end
        object Panel10: TPanel
          Left = 8
          Top = 124
          Width = 265
          Height = 60
          BevelInner = bvRaised
          BevelOuter = bvLowered
          BorderWidth = 1
          TabOrder = 3
          OnEnter = Panel4Enter
          OnExit = Panel4Exit
          object Label20: TLabel
            Left = 10
            Top = 8
            Width = 67
            Height = 16
            Caption = 'Profiss'#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object dbeProfissao: TDBEdit
            Left = 10
            Top = 25
            Width = 245
            Height = 24
            CharCase = ecUpperCase
            DataField = 'Profissao'
            DataSource = dtmDados.dsAluno
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
        end
        object dbrSituacao: TDBRadioGroup
          Left = 294
          Top = 352
          Width = 227
          Height = 45
          Caption = 'Situa'#231#227'o'
          Columns = 2
          DataField = 'Situacao'
          DataSource = dtmDados.dsAluno
          Items.Strings = (
            'Ativo'
            'Inativo')
          TabOrder = 6
          Values.Strings = (
            'Ativo'
            'Inativo')
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Financeiro'
      ImageIndex = 6
      ParentShowHint = False
      ShowHint = True
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 546
        Height = 424
        Align = alClient
        BorderStyle = bsSingle
        TabOrder = 0
        object btnInserir: TSpeedButton
          Left = 216
          Top = 384
          Width = 75
          Height = 25
          Caption = 'Inserir'
          Flat = True
          Visible = False
        end
        object btnExcluir: TSpeedButton
          Left = 376
          Top = 384
          Width = 75
          Height = 25
          Caption = 'Excluir'
          Flat = True
          Visible = False
          OnClick = btnExcluirClick
        end
        object btnCancelar: TSpeedButton
          Left = 456
          Top = 384
          Width = 75
          Height = 25
          Caption = 'Cancelar'
          Flat = True
          Visible = False
          OnClick = btnCancelarClick
        end
        object btnEditar: TSpeedButton
          Left = 296
          Top = 384
          Width = 75
          Height = 25
          Caption = 'Editar'
          Flat = True
          Visible = False
        end
        object Label28: TLabel
          Left = 8
          Top = 129
          Width = 77
          Height = 16
          Caption = 'Refer'#234'ncia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Panel11: TPanel
          Left = 8
          Top = 8
          Width = 526
          Height = 108
          BevelInner = bvRaised
          BevelOuter = bvLowered
          BorderWidth = 1
          TabOrder = 0
          OnEnter = Panel11Enter
          OnExit = Panel11Exit
          object Label17: TLabel
            Left = 106
            Top = 56
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
          object Label23: TLabel
            Left = 10
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
          object Label26: TLabel
            Left = 106
            Top = 8
            Width = 38
            Height = 16
            Caption = 'Multa'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label27: TLabel
            Left = 186
            Top = 8
            Width = 67
            Height = 16
            Caption = 'Desconto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label29: TLabel
            Left = 266
            Top = 8
            Width = 74
            Height = 16
            Caption = 'Acr'#233'scimo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label30: TLabel
            Left = 384
            Top = 16
            Width = 68
            Height = 29
            Caption = 'Total:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -24
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object dbtTotal: TDBText
            Left = 384
            Top = 48
            Width = 98
            Height = 29
            AutoSize = True
            DataField = 'Valor'
            DataSource = dtmDados.dsCaixa
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -24
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label31: TLabel
            Left = 10
            Top = 56
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
          object dbePagamento: TDBEdit
            Left = 106
            Top = 73
            Width = 88
            Height = 24
            DataField = 'Pagamento'
            DataSource = dtmDados.dsCaixa
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
          object dbeValor: TDBEdit
            Left = 10
            Top = 25
            Width = 71
            Height = 24
            DataField = 'Valor'
            DataSource = dtmDados.dsCaixa
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object dbeMulta: TDBEdit
            Left = 106
            Top = 25
            Width = 71
            Height = 24
            DataField = 'Multa'
            DataSource = dtmDados.dsCaixa
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnExit = dbeMultaExit
          end
          object dbeDesconto: TDBEdit
            Left = 186
            Top = 25
            Width = 71
            Height = 24
            DataField = 'Desconto'
            DataSource = dtmDados.dsCaixa
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnExit = dbeDescontoExit
          end
          object dbeAcrescimo: TDBEdit
            Left = 266
            Top = 25
            Width = 78
            Height = 24
            DataField = 'Acrescimo'
            DataSource = dtmDados.dsCaixa
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnExit = dbeAcrescimoExit
          end
          object dbeVencimento: TDBEdit
            Left = 10
            Top = 73
            Width = 88
            Height = 24
            DataField = 'Vencimento'
            DataSource = dtmDados.dsCaixa
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 4
          end
        end
        object Panel13: TPanel
          Left = 8
          Top = 286
          Width = 526
          Height = 89
          BevelInner = bvRaised
          BevelOuter = bvLowered
          BorderWidth = 1
          TabOrder = 1
          OnEnter = Panel11Enter
          OnExit = Panel11Exit
          object chkJaneiro: TCheckBox
            Left = 16
            Top = 12
            Width = 97
            Height = 17
            Caption = 'Janeiro'
            TabOrder = 0
          end
          object chkFevereiro: TCheckBox
            Left = 136
            Top = 12
            Width = 97
            Height = 17
            Caption = 'Fevereiro'
            TabOrder = 1
          end
          object chkMarco: TCheckBox
            Left = 272
            Top = 12
            Width = 97
            Height = 17
            Caption = 'Mar'#231'o'
            TabOrder = 2
          end
          object chkAbril: TCheckBox
            Left = 408
            Top = 12
            Width = 97
            Height = 17
            Caption = 'Abril'
            TabOrder = 3
          end
          object chkMaio: TCheckBox
            Left = 16
            Top = 36
            Width = 97
            Height = 17
            Caption = 'Maio'
            TabOrder = 4
          end
          object chkJunho: TCheckBox
            Left = 136
            Top = 36
            Width = 97
            Height = 17
            Caption = 'Junho'
            TabOrder = 5
          end
          object chkJulho: TCheckBox
            Left = 272
            Top = 36
            Width = 97
            Height = 17
            Caption = 'Julho'
            TabOrder = 6
          end
          object chkAgosto: TCheckBox
            Left = 408
            Top = 36
            Width = 97
            Height = 17
            Caption = 'Agosto'
            TabOrder = 7
          end
          object chkSetembro: TCheckBox
            Left = 16
            Top = 60
            Width = 97
            Height = 17
            Caption = 'Setembro'
            TabOrder = 8
          end
          object chkOutubro: TCheckBox
            Left = 136
            Top = 60
            Width = 97
            Height = 17
            Caption = 'Outubro'
            TabOrder = 9
          end
          object chkNovembro: TCheckBox
            Left = 272
            Top = 60
            Width = 97
            Height = 17
            Caption = 'Novembro'
            TabOrder = 10
          end
          object chkDezembro: TCheckBox
            Left = 408
            Top = 60
            Width = 97
            Height = 17
            Caption = 'Dezembro'
            TabOrder = 11
          end
        end
        object dbgCaixaAluno: TDBGrid
          Left = 9
          Top = 155
          Width = 520
          Height = 124
          DataSource = dtmDados.dsCaixa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'CodCaixa'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'RefMes'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RefAno'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Valor'
              Visible = True
            end>
        end
        object dbcRefAno: TDBComboBox
          Left = 91
          Top = 124
          Width = 70
          Height = 24
          Style = csDropDownList
          DataField = 'RefAno'
          DataSource = dtmDados.dsCaixa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          Items.Strings = (
            '2007'
            '2008'
            '2009'
            '2010'
            '2011')
          ParentFont = False
          TabOrder = 3
        end
      end
    end
  end
  object btnFechar: TButton
    Left = 478
    Top = 484
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
  object Panel14: TPanel
    Left = 0
    Top = 0
    Width = 554
    Height = 27
    Align = alTop
    Color = clCream
    TabOrder = 2
    object dbtCodAluno: TDBText
      Left = 8
      Top = 5
      Width = 90
      Height = 16
      AutoSize = True
      DataField = 'CodAluno'
      DataSource = dtmDados.dsAluno
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbtNome: TDBText
      Left = 64
      Top = 5
      Width = 393
      Height = 16
      DataField = 'Nome'
      DataSource = dtmDados.dsAluno
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbtEntrada: TDBText
      Left = 468
      Top = 5
      Width = 77
      Height = 16
      Alignment = taRightJustify
      AutoSize = True
      DataField = 'Entrada'
      DataSource = dtmDados.dsAluno
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object opcFoto: TOpenPictureDialog
    Left = 508
    Top = 13
  end
  object popFoto: TPopupMenu
    Left = 476
    Top = 13
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
    Left = 444
    Top = 13
  end
end
