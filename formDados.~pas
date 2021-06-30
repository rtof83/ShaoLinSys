unit formDados;

interface

uses
  SysUtils, Classes, DB, Forms, Dialogs, Windows, DBTables, ADODB, COMObj,
  IniFiles, Graphics, StdCtrls, RpDefine, RpCon, RpConDS;

type
  TdtmDados = class(TDataModule)
    dbConnection: TADOConnection;
    qryCaixa: TADOQuery;
    dsCaixa: TDataSource;
    qryAluno: TADOQuery;
    dsAluno: TDataSource;
    qryTemp: TADOQuery;
    qryAlunoCodAluno: TAutoIncField;
    qryAlunoNome: TWideStringField;
    qryAlunoNascimento: TDateTimeField;
    qryAlunoPratica: TIntegerField;
    qryAlunoSexo: TWideStringField;
    qryAlunoEntrada: TDateTimeField;
    qryAlunoRG: TWideStringField;
    qryAlunoTipoEnd: TWideStringField;
    qryAlunoEndereco: TWideStringField;
    qryAlunoComplemento: TWideStringField;
    qryAlunoBairro: TWideStringField;
    qryAlunoCidade: TWideStringField;
    qryAlunoUF: TWideStringField;
    qryAlunoCEP: TWideStringField;
    qryAlunoTelefone: TWideStringField;
    qryAlunoCelular: TWideStringField;
    qryAlunoEmail: TWideStringField;
    qryAlunoCodModalidade: TSmallintField;
    qryAlunoVencimento: TSmallintField;
    dsModalidade: TDataSource;
    qryModalidade: TADOQuery;
    qryModalidadeCodModalidade: TAutoIncField;
    qryModalidadeModalidade: TWideStringField;
    qryModalidadeValor: TBCDField;
    qryAlunoPai: TWideStringField;
    qryAlunoMae: TWideStringField;
    qryAlunoTipoSangue: TWideStringField;
    qryAlunoProfissao: TWideStringField;
    qryAlunoObservacao: TMemoField;
    qryAlunoFoto: TWideStringField;
    qryAlunoNumero: TIntegerField;
    qryAlunoRh: TWideStringField;
    qryAlunoGraduacao: TWideStringField;
    dlgDB: TOpenDialog;
    qryLogin: TADOQuery;
    qryLoginUsuario: TWideStringField;
    qryLoginSenha: TWideStringField;
    dsConfigSys: TDataSource;
    qryConfigSys: TADOQuery;
    qryConfigSysUsuario: TWideStringField;
    qryConfigSysSenha: TWideStringField;
    qryConfigSysHost: TWideStringField;
    qryConfigSysImagem: TWideStringField;
    qryLanc: TADOQuery;
    qryLancTotalGeral: TCurrencyField;
    qryLancEntrada: TCurrencyField;
    qryLancSaida: TCurrencyField;
    dsLanc: TDataSource;
    qryCaixaCodCaixa: TAutoIncField;
    qryCaixaTipo: TWideStringField;
    qryCaixaObservacao: TMemoField;
    qryCaixaValor: TBCDField;
    qryCaixaPendente: TWideStringField;
    dsLogin: TDataSource;
    qryCaixaDescricao: TWideStringField;
    qryCaixaDescOpt: TWideStringField;
    qryAlunoStatus: TWideStringField;
    qryCaixaVencimento: TDateTimeField;
    qryCaixaPagamento: TDateTimeField;
    qryCaixaRefAno: TSmallintField;
    qryCaixaMulta: TBCDField;
    qryCaixaDesconto: TBCDField;
    qryCaixaAcrescimo: TBCDField;
    qryCaixaRefMes: TWideStringField;
    qryAlunoModalidade: TStringField;
    qryAlunoIni: TADOQuery;
    dsAlunoIni: TDataSource;
    qryAlunoIniCodAluno: TAutoIncField;
    qryAlunoIniNome: TWideStringField;
    qryAlunoIniNascimento: TDateTimeField;
    qryAlunoIniPratica: TIntegerField;
    qryAlunoIniVencimento: TSmallintField;
    qryAlunoIniCodModalidade: TSmallintField;
    qryAlunoIniSexo: TWideStringField;
    qryAlunoIniEntrada: TDateTimeField;
    qryAlunoIniRG: TWideStringField;
    qryAlunoIniTipoEnd: TWideStringField;
    qryAlunoIniEndereco: TWideStringField;
    qryAlunoIniNumero: TIntegerField;
    qryAlunoIniComplemento: TWideStringField;
    qryAlunoIniBairro: TWideStringField;
    qryAlunoIniCidade: TWideStringField;
    qryAlunoIniUF: TWideStringField;
    qryAlunoIniCEP: TWideStringField;
    qryAlunoIniTelefone: TWideStringField;
    qryAlunoIniCelular: TWideStringField;
    qryAlunoIniEmail: TWideStringField;
    qryAlunoIniPai: TWideStringField;
    qryAlunoIniMae: TWideStringField;
    qryAlunoIniTipoSangue: TWideStringField;
    qryAlunoIniRh: TWideStringField;
    qryAlunoIniProfissao: TWideStringField;
    qryAlunoIniObservacao: TMemoField;
    qryAlunoIniFoto: TWideStringField;
    qryAlunoIniGraduacao: TWideStringField;
    qryAlunoIniStatus: TWideStringField;
    qryAlunoIniModalidade: TStringField;
    rdsAluno: TRvDataSetConnection;
    qryTempdb: TADOQuery;
    qryTempdbNome: TWideStringField;
    qryTempdbNascimento: TDateTimeField;
    qryTempdbCelular: TWideStringField;
    qryTempdbGraduacao: TWideStringField;
    qryTempdbVencimento: TSmallintField;
    dsTurma: TDataSource;
    qryTurma: TADOQuery;
    qryTurmaCodTurma: TAutoIncField;
    qryTurmaTurma: TWideStringField;
    qryAlunoCodTurma: TSmallintField;
    qryAlunoTurma: TStringField;
    qryAlunoIniCodTurma: TSmallintField;
    qryAlunoIniTurma: TStringField;
    qryAlunoSituacao: TWideStringField;
    qryAlunoIniSituacao: TWideStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure dsModalidadeDataChange(Sender: TObject; Field: TField);
    procedure dsLoginDataChange(Sender: TObject; Field: TField);
    procedure dsAlunoDataChange(Sender: TObject; Field: TField);
    procedure dsAlunoStateChange(Sender: TObject);
    procedure qryModalidadeAfterInsert(DataSet: TDataSet);
    procedure qryTurmaAfterInsert(DataSet: TDataSet);
    procedure qryAlunoAfterInsert(DataSet: TDataSet);
    procedure dsTurmaDataChange(Sender: TObject; Field: TField);
    procedure dsCaixaStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmDados: TdtmDados;

implementation

uses formPrincipal, formCaixa, formLogin, formBackup, formModalidade, formUsuario,
  formAluno, formAlunoIni, formTurma;

{$R *.dfm}

procedure TdtmDados.DataModuleCreate(Sender: TObject);
var Ini: TIniFile;
begin
 Ini := TIniFile.Create(copy(application.ExeName, 0, length(application.ExeName) - 14) + 'Config.ini');
 if Ini.ReadString('DB', 'Path', '') = '' then
 begin
   application.messagebox('A base de dados não foi localizada!', 'Atenção', mb_ok + mb_iconwarning);
   dlgdb.InitialDir := application.GetNamePath + '\DB';
   dlgdb.Execute;
   if dlgdb.filename <> '' then
    Ini.WriteString('DB', 'Path', dlgdb.FileName)
   else
    exit;
 end;

 try
  dbConnection.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' + Ini.ReadString('DB','Path','') + ';Persist Security Info=False';
  dbConnection.open;
 except
  application.messagebox('Não foi possível realizar a conexão com a base de dados','Erro',mb_ok + mb_iconerror);
  exit;
 end;
 Ini.free;
 {***}
 {if unit01.unit001 <> 'Y2CBGBRE' then
 begin
   application.messagebox('O Sistema não está validado!', 'Erro', mb_ok + mb_iconerror);
   application.terminate;
 end;
 {***}
// application.createform(tfrmlogin, frmlogin);
// frmlogin.showmodal;
// frmlogin.free;
 {***}
 qryaluno.Open;
 qrymodalidade.Open;
 qrylogin.Open;
 qrycaixa.Open;
 {***}
 application.createform(tfrmprincipal, frmprincipal);
 frmprincipal.show;
end;

procedure TdtmDados.DataModuleDestroy(Sender: TObject);
var ArquivoMDB, Temp: string;
    DB: OLEVariant;
begin
 ArquivoMDB := ExtractFilePath(Application.ExeName) + 'DB\ShaoLinSys.mdb';
 dbConnection.Close;
 DB   := CreateOLEObject('DAO.DBEngine.36');
 Temp := ExtractFilePath(ArquivoMDB) + 'Temp.mdb';
 DB.CompactDataBase(ArquivoMDB, Temp);
 DeleteFile(pchar(ArquivoMDB));
 RenameFile(Temp, ArquivoMDB);

 //Backup
 try
  deletefile(pchar(ExtractFilePath(Application.ExeName) + 'DB\Backup' + formatdatetime('ddmmyy', date) + '.bck'));
 finally
  copyfile(pchar(ArquivoMDB), pchar(ExtractFilePath(Application.ExeName) + 'DB\Backup' + formatdatetime('ddmmyy', date) + '.bck'), true);
 end;

 application.CreateForm(tfrmbackup, frmbackup);
 frmbackup.tag := 1;
 frmbackup.close;
end;

procedure TdtmDados.dsModalidadeDataChange(Sender: TObject; Field: TField);
begin
 if (frmmodalidade <> nil) and (qrymodalidade.state = dsbrowse) then
 begin
   qryTemp.Close;
   qryTemp.SQL.Text := 'SELECT count(*) as ContMod FROM modalidade';
   qryTemp.Open;
   {***}
   frmmodalidade.lblcontmod.caption := qrytemp.fieldbyname('contmod').asstring + ' registro(s) encontrado(s)';
 end;
end;

procedure TdtmDados.dsLoginDataChange(Sender: TObject; Field: TField);
begin
 if (frmusuario <> nil) and (qrylogin.state = dsbrowse) then
 begin
   qryTemp.Close;
   qryTemp.SQL.Text := 'SELECT count(*) as ContMod FROM login';
   qryTemp.Open;
   {***}
   frmusuario.lblcontmod.caption := qrytemp.fieldbyname('contmod').asstring + ' registro(s) encontrado(s)';
 end;
end;

procedure TdtmDados.dsAlunoDataChange(Sender: TObject; Field: TField);
begin
 if (frmaluno <> nil) or (frmalunoini <> nil) and (qryaluno.state = dsbrowse) then
 begin
   qryTemp.Close;
   qryTemp.SQL.Text := 'SELECT count(*) as ContMod FROM aluno';
   qryTemp.Open;
   {***}
   if frmalunoini <> nil then
    frmalunoini.lblcontmod.caption := qrytemp.fieldbyname('contmod').asstring + ' registro(s) encontrado(s)';
//   if frmaluno <> nil then
//    frmaluno.lblcontmod.caption := qrytemp.fieldbyname('contmod').asstring + ' registro(s) encontrado(s)';
 end;

 if frmaluno <> nil then
 begin
   //Limpa CheckBox
   frmaluno.chkJaneiro.Checked   := false;
   frmaluno.chkFevereiro.Checked := false;
   frmaluno.chkMarco.Checked     := false;
   frmaluno.chkAbril.Checked     := false;
   frmaluno.chkMaio.Checked      := false;
   frmaluno.chkJunho.Checked     := false;
   frmaluno.chkJulho.Checked     := false;
   frmaluno.chkAgosto.Checked    := false;
   frmaluno.chkSetembro.Checked  := false;
   frmaluno.chkOutubro.Checked   := false;
   frmaluno.chkNovembro.Checked  := false;
   frmaluno.chkDezembro.Checked  := false;

   //Caixa
   qrycaixa.Filtered := false;
   qrycaixa.Filter   := 'descopt = ''ALUNO'' and descricao = ''' + qryAlunoNome.AsString + ''' and refano = ' + FormatDateTime('yyyy', date) + '';
   qrycaixa.Filtered := true;

   //Preenche Checkbox
   if qrycaixa.RecordCount > 0 then
   begin
     repeat
//      TCheckBox(frmaluno.FindComponent('chk' + qryCaixaRefMes.AsString)).Checked := true;
      qrycaixa.Next;
     until qrycaixa.Eof;
   end;
 end;
end;

procedure TdtmDados.dsAlunoStateChange(Sender: TObject);
begin
 if frmaluno <> nil then
 begin
   if (qryaluno.state = dsinsert) or (qryaluno.state = dsedit) then
    frmaluno.TabSheet3.TabVisible := false
   else if qryaluno.state = dsbrowse then
    frmaluno.TabSheet3.TabVisible := true;
 end;
end;

procedure TdtmDados.qryModalidadeAfterInsert(DataSet: TDataSet);
begin
 if frmmodalidade <> nil then
  frmmodalidade.dbemodalidade.setfocus;
end;

procedure TdtmDados.qryTurmaAfterInsert(DataSet: TDataSet);
begin
 if frmturma <> nil then
  frmturma.dbeturma.setfocus;
end;

procedure TdtmDados.qryAlunoAfterInsert(DataSet: TDataSet);
begin
 if frmaluno <> nil then
  frmaluno.dbealuno.setfocus;
end;

procedure TdtmDados.dsTurmaDataChange(Sender: TObject; Field: TField);
begin
 if (frmturma <> nil) and (qryturma.state = dsbrowse) then
 begin
   qryTemp.Close;
   qryTemp.SQL.Text := 'SELECT count(*) as ContTurma FROM turma';
   qryTemp.Open;
   {***}
   frmturma.lblcontturma.caption := qrytemp.fieldbyname('contturma').asstring + ' registro(s) encontrado(s)';
 end;
end;

procedure TdtmDados.dsCaixaStateChange(Sender: TObject);
begin
 if frmcaixa <> nil then
 begin
   if qrycaixa.State = dsinsert then
    qrycaixaRefAno.AsInteger := strtoint(formatdatetime('yyyy', now));
 end;
end;

end.
