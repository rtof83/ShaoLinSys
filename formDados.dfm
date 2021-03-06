object dtmDados: TdtmDados
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 283
  Top = 111
  Height = 279
  Width = 673
  object dbConnection: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=R:\Arquivos\Delphi\' +
      'Shao Lin\DB\ShaoLinSys.mdb;Persist Security Info=False;'
    KeepConnection = False
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 32
    Top = 24
  end
  object qryCaixa: TADOQuery
    Connection = dbConnection
    Parameters = <>
    SQL.Strings = (
      'select * from caixa')
    Left = 32
    Top = 96
    object qryCaixaCodCaixa: TAutoIncField
      FieldName = 'CodCaixa'
      ReadOnly = True
    end
    object qryCaixaDescricao: TWideStringField
      FieldName = 'Descricao'
      Size = 100
    end
    object qryCaixaTipo: TWideStringField
      FieldName = 'Tipo'
      Size = 7
    end
    object qryCaixaObservacao: TMemoField
      FieldName = 'Observacao'
      BlobType = ftMemo
    end
    object qryCaixaValor: TBCDField
      Alignment = taCenter
      FieldName = 'Valor'
      currency = True
      Precision = 19
    end
    object qryCaixaPendente: TWideStringField
      FieldName = 'Pendente'
      Size = 1
    end
    object qryCaixaDescOpt: TWideStringField
      FieldName = 'DescOpt'
      Size = 6
    end
    object qryCaixaVencimento: TDateTimeField
      Alignment = taCenter
      FieldName = 'Vencimento'
      EditMask = '99/99/9999'
    end
    object qryCaixaPagamento: TDateTimeField
      Alignment = taCenter
      FieldName = 'Pagamento'
      EditMask = '99/99/9999'
    end
    object qryCaixaRefMes: TWideStringField
      FieldName = 'RefMes'
    end
    object qryCaixaRefAno: TSmallintField
      Alignment = taCenter
      FieldName = 'RefAno'
      DisplayFormat = '0000'
    end
    object qryCaixaMulta: TBCDField
      Alignment = taCenter
      FieldName = 'Multa'
      currency = True
      Precision = 19
    end
    object qryCaixaDesconto: TBCDField
      Alignment = taCenter
      FieldName = 'Desconto'
      currency = True
      Precision = 19
    end
    object qryCaixaAcrescimo: TBCDField
      Alignment = taCenter
      FieldName = 'Acrescimo'
      currency = True
      Precision = 19
    end
  end
  object dsCaixa: TDataSource
    DataSet = qryCaixa
    OnStateChange = dsCaixaStateChange
    Left = 32
    Top = 152
  end
  object qryAluno: TADOQuery
    Connection = dbConnection
    AfterInsert = qryAlunoAfterInsert
    Parameters = <>
    SQL.Strings = (
      'select * from aluno')
    Left = 104
    Top = 96
    object qryAlunoCodAluno: TAutoIncField
      FieldName = 'CodAluno'
      ReadOnly = True
      DisplayFormat = '00000'
    end
    object qryAlunoNome: TWideStringField
      FieldName = 'Nome'
      Size = 100
    end
    object qryAlunoCodTurma: TSmallintField
      FieldName = 'CodTurma'
    end
    object qryAlunoNascimento: TDateTimeField
      Alignment = taCenter
      FieldName = 'Nascimento'
      EditMask = '99/99/9999'
    end
    object qryAlunoPratica: TIntegerField
      Alignment = taCenter
      FieldName = 'Pratica'
      DisplayFormat = '000 meses'
    end
    object qryAlunoSexo: TWideStringField
      FieldName = 'Sexo'
      Size = 9
    end
    object qryAlunoEntrada: TDateTimeField
      Alignment = taCenter
      FieldName = 'Entrada'
      EditMask = '99/99/9999'
    end
    object qryAlunoRG: TWideStringField
      Alignment = taCenter
      FieldName = 'RG'
    end
    object qryAlunoTipoEnd: TWideStringField
      FieldName = 'TipoEnd'
    end
    object qryAlunoEndereco: TWideStringField
      FieldName = 'Endereco'
      Size = 60
    end
    object qryAlunoComplemento: TWideStringField
      FieldName = 'Complemento'
      Size = 40
    end
    object qryAlunoBairro: TWideStringField
      FieldName = 'Bairro'
      Size = 60
    end
    object qryAlunoCidade: TWideStringField
      FieldName = 'Cidade'
      Size = 60
    end
    object qryAlunoUF: TWideStringField
      Alignment = taCenter
      FieldName = 'UF'
      Size = 2
    end
    object qryAlunoCEP: TWideStringField
      Alignment = taCenter
      FieldName = 'CEP'
      EditMask = '99.999-999'
      Size = 10
    end
    object qryAlunoTelefone: TWideStringField
      Alignment = taCenter
      FieldName = 'Telefone'
      EditMask = '(99) 9999-9999'
      Size = 14
    end
    object qryAlunoCelular: TWideStringField
      Alignment = taCenter
      FieldName = 'Celular'
      EditMask = '(99) 9999-9999'
      Size = 14
    end
    object qryAlunoEmail: TWideStringField
      FieldName = 'Email'
      Size = 60
    end
    object qryAlunoCodModalidade: TSmallintField
      FieldName = 'CodModalidade'
    end
    object qryAlunoVencimento: TSmallintField
      Alignment = taCenter
      FieldName = 'Vencimento'
      DisplayFormat = '00'
    end
    object qryAlunoPai: TWideStringField
      FieldName = 'Pai'
      Size = 100
    end
    object qryAlunoMae: TWideStringField
      FieldName = 'Mae'
      Size = 100
    end
    object qryAlunoTipoSangue: TWideStringField
      FieldName = 'TipoSangue'
      Size = 2
    end
    object qryAlunoProfissao: TWideStringField
      FieldName = 'Profissao'
      Size = 60
    end
    object qryAlunoObservacao: TMemoField
      FieldName = 'Observacao'
      BlobType = ftMemo
    end
    object qryAlunoFoto: TWideStringField
      FieldName = 'Foto'
      Size = 255
    end
    object qryAlunoNumero: TIntegerField
      Alignment = taCenter
      FieldName = 'Numero'
    end
    object qryAlunoRh: TWideStringField
      FieldName = 'Rh'
      Size = 8
    end
    object qryAlunoGraduacao: TWideStringField
      DisplayWidth = 40
      FieldName = 'Graduacao'
      Size = 40
    end
    object qryAlunoStatus: TWideStringField
      Alignment = taCenter
      FieldName = 'Status'
    end
    object qryAlunoModalidade: TStringField
      Alignment = taCenter
      FieldKind = fkLookup
      FieldName = 'Modalidade'
      LookupDataSet = qryModalidade
      LookupKeyFields = 'CodModalidade'
      LookupResultField = 'Modalidade'
      KeyFields = 'CodModalidade'
      Lookup = True
    end
    object qryAlunoTurma: TStringField
      FieldKind = fkLookup
      FieldName = 'Turma'
      LookupDataSet = qryTurma
      LookupKeyFields = 'CodTurma'
      LookupResultField = 'Turma'
      KeyFields = 'CodTurma'
      Size = 100
      Lookup = True
    end
    object qryAlunoSituacao: TWideStringField
      FieldName = 'Situacao'
      Size = 7
    end
  end
  object dsAluno: TDataSource
    DataSet = qryAluno
    OnStateChange = dsAlunoStateChange
    OnDataChange = dsAlunoDataChange
    Left = 104
    Top = 152
  end
  object qryTemp: TADOQuery
    Connection = dbConnection
    Parameters = <>
    Left = 208
    Top = 24
  end
  object dsModalidade: TDataSource
    DataSet = qryModalidade
    OnDataChange = dsModalidadeDataChange
    Left = 192
    Top = 152
  end
  object qryModalidade: TADOQuery
    Connection = dbConnection
    CursorType = ctStatic
    AfterInsert = qryModalidadeAfterInsert
    Parameters = <>
    SQL.Strings = (
      'select * from modalidade')
    Left = 192
    Top = 96
    object qryModalidadeCodModalidade: TAutoIncField
      FieldName = 'CodModalidade'
      ReadOnly = True
    end
    object qryModalidadeModalidade: TWideStringField
      FieldName = 'Modalidade'
      Size = 60
    end
    object qryModalidadeValor: TBCDField
      FieldName = 'Valor'
      currency = True
      Precision = 19
    end
  end
  object dlgDB: TOpenDialog
    DefaultExt = 'mdb'
    Filter = 'Banco MS Access|*.mdb'
    Left = 104
    Top = 24
  end
  object qryLogin: TADOQuery
    Connection = dbConnection
    Parameters = <>
    SQL.Strings = (
      'select * from login')
    Left = 280
    Top = 96
    object qryLoginUsuario: TWideStringField
      FieldName = 'Usuario'
      Size = 16
    end
    object qryLoginSenha: TWideStringField
      FieldName = 'Senha'
      Size = 12
    end
  end
  object dsConfigSys: TDataSource
    DataSet = qryConfigSys
    Left = 352
    Top = 152
  end
  object qryConfigSys: TADOQuery
    Connection = dbConnection
    Parameters = <>
    SQL.Strings = (
      'select * from configsys')
    Left = 352
    Top = 96
    object qryConfigSysUsuario: TWideStringField
      FieldName = 'Usuario'
    end
    object qryConfigSysSenha: TWideStringField
      FieldName = 'Senha'
    end
    object qryConfigSysHost: TWideStringField
      FieldName = 'Host'
      Size = 50
    end
    object qryConfigSysImagem: TWideStringField
      FieldName = 'Imagem'
      Size = 255
    end
  end
  object qryLanc: TADOQuery
    Connection = dbConnection
    Parameters = <>
    Left = 424
    Top = 96
    object qryLancTotalGeral: TCurrencyField
      FieldName = 'TotalGeral'
      DisplayFormat = 'Total: R$ #,##0.00'
    end
    object qryLancEntrada: TCurrencyField
      FieldName = 'Entrada'
      DisplayFormat = 'Entrada: R$ #,##0.00'
    end
    object qryLancSaida: TCurrencyField
      FieldName = 'Saida'
      DisplayFormat = 'Sa'#237'da: R$ #,##0.00'
    end
  end
  object dsLanc: TDataSource
    DataSet = qryLanc
    Left = 424
    Top = 152
  end
  object dsLogin: TDataSource
    DataSet = qryLogin
    OnDataChange = dsLoginDataChange
    Left = 280
    Top = 152
  end
  object qryAlunoIni: TADOQuery
    Connection = dbConnection
    Parameters = <>
    SQL.Strings = (
      'select * from aluno order by nome')
    Left = 488
    Top = 96
    object qryAlunoIniCodAluno: TAutoIncField
      FieldName = 'CodAluno'
      ReadOnly = True
    end
    object qryAlunoIniNome: TWideStringField
      FieldName = 'Nome'
      Size = 100
    end
    object qryAlunoIniNascimento: TDateTimeField
      FieldName = 'Nascimento'
    end
    object qryAlunoIniPratica: TIntegerField
      FieldName = 'Pratica'
    end
    object qryAlunoIniVencimento: TSmallintField
      Alignment = taCenter
      FieldName = 'Vencimento'
      DisplayFormat = '00'
    end
    object qryAlunoIniCodModalidade: TSmallintField
      FieldName = 'CodModalidade'
    end
    object qryAlunoIniSexo: TWideStringField
      FieldName = 'Sexo'
      Size = 9
    end
    object qryAlunoIniEntrada: TDateTimeField
      FieldName = 'Entrada'
    end
    object qryAlunoIniRG: TWideStringField
      FieldName = 'RG'
    end
    object qryAlunoIniTipoEnd: TWideStringField
      FieldName = 'TipoEnd'
    end
    object qryAlunoIniEndereco: TWideStringField
      FieldName = 'Endereco'
      Size = 60
    end
    object qryAlunoIniNumero: TIntegerField
      FieldName = 'Numero'
    end
    object qryAlunoIniComplemento: TWideStringField
      FieldName = 'Complemento'
      Size = 40
    end
    object qryAlunoIniBairro: TWideStringField
      FieldName = 'Bairro'
      Size = 60
    end
    object qryAlunoIniCidade: TWideStringField
      FieldName = 'Cidade'
      Size = 60
    end
    object qryAlunoIniUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object qryAlunoIniCEP: TWideStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qryAlunoIniTelefone: TWideStringField
      FieldName = 'Telefone'
      Size = 14
    end
    object qryAlunoIniCelular: TWideStringField
      FieldName = 'Celular'
      Size = 14
    end
    object qryAlunoIniEmail: TWideStringField
      FieldName = 'Email'
      Size = 60
    end
    object qryAlunoIniPai: TWideStringField
      FieldName = 'Pai'
      Size = 100
    end
    object qryAlunoIniMae: TWideStringField
      FieldName = 'Mae'
      Size = 100
    end
    object qryAlunoIniTipoSangue: TWideStringField
      FieldName = 'TipoSangue'
      Size = 2
    end
    object qryAlunoIniRh: TWideStringField
      FieldName = 'Rh'
      Size = 8
    end
    object qryAlunoIniProfissao: TWideStringField
      FieldName = 'Profissao'
      Size = 60
    end
    object qryAlunoIniObservacao: TMemoField
      FieldName = 'Observacao'
      BlobType = ftMemo
    end
    object qryAlunoIniFoto: TWideStringField
      FieldName = 'Foto'
      Size = 255
    end
    object qryAlunoIniGraduacao: TWideStringField
      FieldName = 'Graduacao'
      Size = 40
    end
    object qryAlunoIniStatus: TWideStringField
      Alignment = taCenter
      FieldName = 'Status'
      Size = 40
    end
    object qryAlunoIniModalidade: TStringField
      Alignment = taCenter
      FieldKind = fkLookup
      FieldName = 'Modalidade'
      LookupDataSet = qryModalidade
      LookupKeyFields = 'CodModalidade'
      LookupResultField = 'Modalidade'
      KeyFields = 'CodModalidade'
      Lookup = True
    end
    object qryAlunoIniCodTurma: TSmallintField
      FieldName = 'CodTurma'
    end
    object qryAlunoIniTurma: TStringField
      Alignment = taCenter
      FieldKind = fkLookup
      FieldName = 'Turma'
      LookupDataSet = qryTurma
      LookupKeyFields = 'CodTurma'
      LookupResultField = 'Turma'
      KeyFields = 'CodTurma'
      Size = 100
      Lookup = True
    end
    object qryAlunoIniSituacao: TWideStringField
      Alignment = taCenter
      FieldName = 'Situacao'
      Size = 7
    end
  end
  object dsAlunoIni: TDataSource
    DataSet = qryAlunoIni
    Left = 488
    Top = 152
  end
  object rdsAluno: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qryTemp
    Left = 280
    Top = 24
  end
  object qryTempdb: TADOQuery
    Connection = dbConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from temp')
    Left = 352
    Top = 24
    object qryTempdbNome: TWideStringField
      FieldName = 'Nome'
      Size = 100
    end
    object qryTempdbNascimento: TDateTimeField
      FieldName = 'Nascimento'
    end
    object qryTempdbCelular: TWideStringField
      FieldName = 'Celular'
      Size = 14
    end
    object qryTempdbVencimento: TSmallintField
      FieldName = 'Vencimento'
    end
    object qryTempdbGraduacao: TWideStringField
      FieldName = 'Graduacao'
      Size = 40
    end
  end
  object dsTurma: TDataSource
    DataSet = qryTurma
    OnDataChange = dsTurmaDataChange
    Left = 552
    Top = 152
  end
  object qryTurma: TADOQuery
    Connection = dbConnection
    CursorType = ctStatic
    AfterInsert = qryTurmaAfterInsert
    Parameters = <>
    SQL.Strings = (
      'select * from turma')
    Left = 552
    Top = 96
    object qryTurmaCodTurma: TAutoIncField
      FieldName = 'CodTurma'
      ReadOnly = True
    end
    object qryTurmaTurma: TWideStringField
      FieldName = 'Turma'
      Size = 100
    end
  end
end
