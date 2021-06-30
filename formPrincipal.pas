unit formPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Menus,
  Dialogs, ComCtrls, RpRave, RpBase, RpSystem, RpDefine, RpRender, Buttons, DB, ADODB,
  RpRenderPDF, ExtCtrls, AppEvnts, ImgList, ToolWin, DBTables, DBCtrls, StdCtrls,
  jpeg, Grids, DBGrids;

type
  TfrmPrincipal = class(TForm)
    MenuPrincipal: TMainMenu;
    mnuArquivo: TMenuItem;
    mnuCaixa: TMenuItem;
    N2: TMenuItem;
    mnuSair: TMenuItem;
    mnuUtilitario: TMenuItem;
    mnuCalendario: TMenuItem;
    mnuImpressao: TMenuItem;
    mnuEmail: TMenuItem;
    mnuConfigSys: TMenuItem;
    mnuRelatorio: TMenuItem;
    mnuAjuda: TMenuItem;
    mnuSobre: TMenuItem;
    ImgMenu: TImageList;
    AppEventos: TApplicationEvents;
    Timer: TTimer;
    ImageListDisabled: TImageList;
    ImageListEnabled: TImageList;
    PrinterConfig: TPrinterSetupDialog;
    StbPadrao: TStatusBar;
    coolbarFerramentas: TCoolBar;
    ToolBar: TToolBar;
    btnCaixa: TToolButton;
    btnLanc: TToolButton;
    ToolButton1: TToolButton;
    btnSair: TToolButton;
    ToolBarMenu: TToolBar;
    coolbarCadastro: TCoolBar;
    ToolBar1: TToolBar;
    toolbtnInserir: TToolButton;
    toolbtnAlterar: TToolButton;
    toolbtnExcluir: TToolButton;
    ToolBar2: TToolBar;
    toolbtnConfirmar: TToolButton;
    toolbtnCancelar: TToolButton;
    ToolBar3: TToolBar;
    toolbtnFirst: TToolButton;
    toolbtnPrior: TToolButton;
    toolbtnNext: TToolButton;
    toolbtnLast: TToolButton;
    ToolBar4: TToolBar;
    toolbtnLocalizar: TToolButton;
    rvpShaoLin: TRvProject;
    rvsShaoLin: TRvSystem;
    mnuLanc: TMenuItem;
    toolbtnImprimir: TToolButton;
    RvRenderPDF1: TRvRenderPDF;
    mnuLogin: TMenuItem;
    Timer1: TTimer;
    N1: TMenuItem;
    mnuBackup: TMenuItem;
    btnAluno: TToolButton;
    mnuAluno: TMenuItem;
    btnModalidade: TToolButton;
    mnuModalidade: TMenuItem;
    CoolBar1: TCoolBar;
    ToolBar5: TToolBar;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    btnExame: TToolButton;
    mnuClientes: TMenuItem;
    mnuPendentes: TMenuItem;
    mnuRegulares: TMenuItem;
    N3: TMenuItem;
    mnuPromocao: TMenuItem;
    mnuTurma: TMenuItem;
    btnTurma: TToolButton;
    mnuAtivos: TMenuItem;
    mnuInativos: TMenuItem;
    mnuTodos: TMenuItem;
    mnuKungFu: TMenuItem;

    //Procedures declaradas
    procedure Controles(Insercao: boolean; Confirmacao: boolean);
    procedure Pendencia;
    procedure RelClientes(Instrucao, Titulo: string);
    //Procedures declaradas

    //Funções
    Function Val_Data(Data: String): String;
    //Funções

    procedure TimerTimer(Sender: TObject);
    procedure mnuSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AppEventosHint(Sender: TObject);
    procedure mnuImpressaoClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnCaixaClick(Sender: TObject);
    procedure toolbtnInserirClick(Sender: TObject);
    procedure toolbtnAlterarClick(Sender: TObject);
    procedure toolbtnExcluirClick(Sender: TObject);
    procedure toolbtnConfirmarClick(Sender: TObject);
    procedure toolbtnCancelarClick(Sender: TObject);
    procedure toolbtnFirstClick(Sender: TObject);
    procedure toolbtnNextClick(Sender: TObject);
    procedure toolbtnPriorClick(Sender: TObject);
    procedure toolbtnLastClick(Sender: TObject);
    procedure mnuCalendarioClick(Sender: TObject);
    procedure toolbtnLocalizarClick(Sender: TObject);
    procedure mnuCaixaClick(Sender: TObject);
    procedure mnuConfigSysClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mnuEmailClick(Sender: TObject);
    procedure mnuLoginClick(Sender: TObject);
    procedure mnuLancClick(Sender: TObject);
    procedure btnLancClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure mnuBackupClick(Sender: TObject);
    procedure btnAlunoClick(Sender: TObject);
    procedure btnModalidadeClick(Sender: TObject);
    procedure mnuPendentesClick(Sender: TObject);
    procedure mnuRegularesClick(Sender: TObject);
    procedure mnuPromocaoClick(Sender: TObject);
    procedure mnuAlunoClick(Sender: TObject);
    procedure mnuModalidadeClick(Sender: TObject);
    procedure mnuTurmaClick(Sender: TObject);
    procedure btnTurmaClick(Sender: TObject);
    procedure mnuAtivosClick(Sender: TObject);
    procedure mnuInativosClick(Sender: TObject);
    procedure mnuTodosClick(Sender: TObject);
    procedure mnuKungFuClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    dsForm : TForm;
    dsTable: TADOQuery;
    Codigo : integer;
    Campo1, Campo2, Campo3, Tabela, Instrucao: string;
  end;

var
  frmPrincipal: TfrmPrincipal;
           Mes: string;

implementation

uses formCalendario, formLocalizar, formDados,
     formEmail, formUsuario, formLanc, formBackup, formCaixa,
     formConfigSys, formAluno, formModalidade, formAlunoIni, formTurma;

{$R *.dfm}

//Procedures declaradas
procedure tfrmprincipal.controles(Insercao: boolean; Confirmacao: boolean);
var I: integer;
begin
 toolbtninserir.enabled   := insercao;
 toolbtnexcluir.enabled   := insercao;
 toolbtnalterar.enabled   := insercao;
 toolbtnlocalizar.enabled := insercao;
 toolbtnimprimir.enabled  := insercao;
 toolbtnconfirmar.enabled := confirmacao;
 toolbtncancelar.enabled  := confirmacao;
 {***}
 toolbtnfirst.enabled     := insercao;
 toolbtnprior.enabled     := insercao;
 toolbtnnext.enabled      := insercao;
 toolbtnlast.enabled      := insercao;
 {***}
 I := dsform.ComponentCount - 1;
 repeat
  if dsform.components[I].classname = 'TPanel' then
   TPanel(dsform.FindComponent(dsform.components[I].name)).Enabled := Confirmacao;
  I := I - 1;
 until I = 0;
end;

procedure tfrmprincipal.pendencia;
begin
 dtmdados.qryTemp.SQL.Clear;
 dtmdados.qryTemp.SQL.Text := 'SELECT * FROM Caixa WHERE pagamento = #' + formatdatetime('m/d/yyyy', date) + '# AND pendente = ''X''';
 dtmdados.qryTemp.Open;
 {***}
 if dtmdados.qryTemp.RecordCount > 0 then
 begin
   if application.MessageBox('Existe(m) Vencimento(s) para a data de hoje. Verificar?', 'Mensagem', mb_yesno + mb_iconquestion) = id_yes then
   begin
     btnlanc.Click;
     frmlanc.btnPendencia.Click;
     frmlanc.btnPendencia.Down := true;
   end;
 end;
 {***}
 dtmdados.qryTemp.Close;
end;

procedure tfrmprincipal.RelClientes(Instrucao, Titulo: string);
begin
 dtmdados.qrytemp.SQL.Text := instrucao;
 dtmdados.qryTemp.Open;

 if dtmdados.qryTemp.recordcount > 0 then
 begin
   rvpShaoLin.ProjectFile := ExtractFilePath(Application.ExeName) + '\Relatorios\relClientes.rav';
   rvpShaoLin.SetParam('Titulo', titulo);
   rvpShaoLin.SetParam('Total', formatfloat('00', dtmdados.qryTemp.RecordCount) + ' registro(s) encontrado(s).');
   rvpShaoLin.Execute;
   rvpShaoLin.Close;
 end
 else
  application.messagebox('Não foram encontrados registros.', 'Mensagem', mb_ok + mb_iconinformation);

 dtmdados.qryTemp.Close;
end;
//Procedures declaradas

//Funções
Function tfrmprincipal.Val_Data(Data : String) : String;
Var Ano : Integer;
Begin
 If (Data <> '') Then
   Begin
    If (Copy(Data,7,4) <> '') Then
      Begin
       Ano := StrToInt(TrimLeft(TrimRight(Copy(Data,7,4))));
       If (Ano >= 0) And (Ano <= 9) Then
         Val_Data := Copy(Data,1,6) + '200' + IntToStr(Ano)
       Else If (Ano >= 10) And (Ano <= 69) Then
         Val_Data := Copy(Data,1,6) + '20'  + IntToStr(Ano)
       Else If (Ano >= 70) And (Ano <= 99) Then
         Val_Data := Copy(Data,1,6) + '19' + IntToStr(Ano)
       Else
         Val_Data := Data;
      End
    Else
      Val_Data := '';
   End
 Else
   Val_Data := '';
End;
//Funções

procedure TfrmPrincipal.TimerTimer(Sender: TObject);
begin
 stbPadrao.panels[1].text := FormatDateTime('dddd, dd "de" mmmm "de" yyyy', date);
 stbPadrao.panels[2].text := timetostr(time);
end;

procedure TfrmPrincipal.mnuSairClick(Sender: TObject);
begin
 close;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if application.messagebox('Sair do sistema?','Mensagem',mb_yesno + mb_iconquestion) = id_yes then
  action := cafree
 else
  action := canone;
end;

procedure TfrmPrincipal.AppEventosHint(Sender: TObject);
begin
 stbpadrao.panels[0].text := application.hint;
end;

procedure TfrmPrincipal.mnuImpressaoClick(Sender: TObject);
begin
 printerconfig.execute;
end;

procedure TfrmPrincipal.btnSairClick(Sender: TObject);
begin
 close;
end;

procedure TfrmPrincipal.btnCaixaClick(Sender: TObject);
begin
 tag := tag + 1;
 coolbarcadastro.visible := true;
 btnaluno.enabled        := false;
 mnualuno.enabled        := false;
 btncaixa.enabled        := false;
 mnucaixa.enabled        := false;
 mnulanc.enabled         := false;
 btnlanc.enabled         := false;
 application.createform(tfrmcaixa, frmcaixa);
 frmcaixa.show;
end;

procedure TfrmPrincipal.toolbtnInserirClick(Sender: TObject);
begin
 controles(false,true);
 dstable.append;
end;

procedure TfrmPrincipal.toolbtnAlterarClick(Sender: TObject);
begin
 controles(false, true);
 dstable.edit;
end;

procedure TfrmPrincipal.toolbtnExcluirClick(Sender: TObject);
begin
 if application.messagebox('Tem certeza que deseja excluir este registro?','Atenção',mb_yesno + mb_iconwarning) = id_yes then
 begin
   dstable.Delete;
   if dstable.recordcount = 0 then
   begin
     toolbtnexcluir.enabled   := false;
     toolbtnalterar.enabled   := false;
     toolbtnlocalizar.enabled := false;
     toolbtnimprimir.enabled  := false;
   end;
 end;
end;

procedure TfrmPrincipal.toolbtnConfirmarClick(Sender: TObject);
var I: integer;
begin
 I := dsform.ComponentCount - 1;
 repeat
   // Campos Obrigatórios
   if dsform.components[I].classname = 'TDBEdit' then
   begin
     if (TDBEdit(dsform.FindComponent(dsform.components[I].name)).Tag = 1) and (TDBEdit(dsform.FindComponent(dsform.components[I].name)).Text = '') then
     begin
       application.messagebox('Os Campos obrigatórios devem ser preenchidos.', 'Atenção', mb_ok + mb_iconwarning);
       exit;
     end;
   end;
   if dsform.components[I].classname = 'TDBLookupComboBox' then
   begin
     if (TDBLookupComboBox(dsform.FindComponent(dsform.components[I].name)).Tag = 1) and (TDBLookupComboBox(dsform.FindComponent(dsform.components[I].name)).Text = '') then
     begin
       application.messagebox('Os Campos obrigatórios devem ser preenchidos.', 'Atenção', mb_ok + mb_iconwarning);
       exit;
     end;
   end;
   I := I - 1;
 until I = 0;

 controles(true, false);
 dstable.post;
end;

procedure TfrmPrincipal.toolbtnCancelarClick(Sender: TObject);
begin
 controles(true, false);
 dstable.cancel;

 if dstable.recordcount = 0 then
 begin
   toolbtnexcluir.enabled   := false;
   toolbtnalterar.enabled   := false;
   toolbtnlocalizar.enabled := false
 end;
end;

procedure TfrmPrincipal.toolbtnFirstClick(Sender: TObject);
begin
 dstable.first;
end;

procedure TfrmPrincipal.toolbtnNextClick(Sender: TObject);
begin
 dstable.next;
end;

procedure TfrmPrincipal.toolbtnPriorClick(Sender: TObject);
begin
 dstable.prior;
end;

procedure TfrmPrincipal.toolbtnLastClick(Sender: TObject);
begin
 dstable.last;
end;

procedure TfrmPrincipal.mnuCalendarioClick(Sender: TObject);
begin
 mnucalendario.enabled := false;
 application.createform(tfrmcalendario, frmcalendario);
 frmcalendario.show;
end;

procedure TfrmPrincipal.toolbtnLocalizarClick(Sender: TObject);
begin
 application.createform(tfrmlocalizar, frmlocalizar);
 with frmlocalizar do
 begin
   gridlocalizar.Columns[0].FieldName := campo1;
   gridlocalizar.Columns[1].FieldName := campo2;

   qrylocalizar.sql.text := instrucao + ' order by ' + campo1;
   qrylocalizar.open;

   caption := 'Localizar ' + tabela;
   showmodal;
   dstable.Locate(campo1, qrylocalizar.fieldbyname(campo1).asstring, []);
   free;
 end;
end;

procedure TfrmPrincipal.mnuCaixaClick(Sender: TObject);
begin
 btncaixa.click;
end;

procedure TfrmPrincipal.mnuConfigSysClick(Sender: TObject);
begin
 tag := tag + 1;
 coolbarcadastro.visible := true;
 mnuconfigsys.enabled := false;
 application.createform(tfrmconfigsys, frmconfigsys);
 frmconfigsys.show;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
var Dia, MesInt, ano: word;
begin
 //Verifica Status
// showmessage(inttostr(round(date - strtodate('01/10/2007'))));
// close;
 repeat
  dtmdados.qrytemp.Close;
//  dtmdados.qryTemp.SQL.Text := 'SELECT * FROM caixa WHERE descricao = ''' + dtmdados.qryAlunoNome.AsString + ''' AND refmes = ''' + formatdatetime('mmmm', date) + ''' AND refano = ' + formatdatetime('yyyy', date);
  dtmdados.qryTemp.SQL.Text := 'SELECT * FROM caixa WHERE descopt = "ALUNO" and descricao = ''' + dtmdados.qryAlunoNome.AsString + '''';
  dtmdados.qryTemp.Open;
  dtmdados.qryTemp.Last;

  decodedate(date, ano, mesint, dia);

  if dtmdados.qryTemp.FieldByName('refmes').AsString = 'JANEIRO' then
   mes := '01'
  else if dtmdados.qryTemp.FieldByName('refmes').AsString = 'FEVEREIRO' then
   mes := '02'
  else if dtmdados.qryTemp.FieldByName('refmes').AsString = 'MARÇO' then
   mes := '03'
  else if dtmdados.qryTemp.FieldByName('refmes').AsString = 'ABRIL' then
   mes := '04'
  else if dtmdados.qryTemp.FieldByName('refmes').AsString = 'MAIO' then
   mes := '05'
  else if dtmdados.qryTemp.FieldByName('refmes').AsString = 'JUNHO' then
   mes := '06'
  else if dtmdados.qryTemp.FieldByName('refmes').AsString = 'JULHO' then
   mes := '07'
  else if dtmdados.qryTemp.FieldByName('refmes').AsString = 'AGOSTO' then
   mes := '08'
  else if dtmdados.qryTemp.FieldByName('refmes').AsString = 'SETEMBRO' then
   mes := '09'
  else if dtmdados.qryTemp.FieldByName('refmes').AsString = 'OUTUBRO' then
   mes := '10'
  else if dtmdados.qryTemp.FieldByName('refmes').AsString = 'NOVEMBRO' then
   mes := '11'
  else if dtmdados.qryTemp.FieldByName('refmes').AsString = 'DEZEMBRO' then
   mes := '12';

  if dtmdados.qryTemp.RecordCount > 0 then
  begin
//    if date < encodedate(dtmdados.qrytemp.fieldbyname('refano').AsInteger, strtoint(mes), dtmdados.qryAlunoVencimento.AsInteger - 1, 1) then
    if date < incmonth(encodedate(dtmdados.qrytemp.fieldbyname('refano').AsInteger, strtoint(mes), dtmdados.qryAlunoVencimento.AsInteger), 1) then
    begin
      dtmdados.qryAluno.Edit;
       dtmdados.qryAlunoStatus.AsString := 'REGULAR';
      dtmdados.qryAluno.Post;
    end
    else
    begin
      dtmdados.qryAluno.Edit;
       dtmdados.qryAlunoStatus.AsString := 'PENDENTE';
      dtmdados.qryAluno.Post;
    end;
  end;

  dtmdados.qryAluno.Next;
 until dtmdados.qryAluno.Eof;

 dtmdados.qryAlunoIni.Open;
 application.CreateForm(tfrmalunoini, frmalunoini);
 frmalunoini.show;
end;

procedure TfrmPrincipal.mnuEmailClick(Sender: TObject);
begin
 mnuemail.enabled := false;
 application.createform(tfrmemail, frmemail);
 frmemail.show;
end;

procedure TfrmPrincipal.mnuLoginClick(Sender: TObject);
begin
 tag := tag + 1;
 coolbarcadastro.visible := true;
 mnulogin.enabled := false;
 application.createform(tfrmusuario, frmusuario);
 frmusuario.show;
end;

procedure TfrmPrincipal.mnuLancClick(Sender: TObject);
begin
 btnlanc.click;
end;

procedure TfrmPrincipal.btnLancClick(Sender: TObject);
begin
 btncaixa.enabled    := false;
 mnucaixa.enabled    := false;
 mnulanc.enabled     := false;
 btnlanc.enabled     := false;
 {***}
 application.createform(tfrmlanc, frmlanc);
 frmlanc.show;
end;

procedure TfrmPrincipal.Timer1Timer(Sender: TObject);
begin
 timer1.Enabled := false;
 pendencia;
end;

procedure TfrmPrincipal.mnuBackupClick(Sender: TObject);
begin
 application.CreateForm(tfrmbackup, frmbackup);
 frmbackup.ShowModal;
end;

procedure TfrmPrincipal.btnAlunoClick(Sender: TObject);
begin
 tag := tag + 1;
 coolbarcadastro.visible := true;
 btnaluno.enabled        := false;
 mnualuno.enabled        := false;
 btncaixa.enabled        := false;
 mnucaixa.enabled        := false;
 btnlanc.enabled         := false;
 mnulanc.enabled         := false;
 application.createform(tfrmaluno, frmaluno);
 frmaluno.show;
end;

procedure TfrmPrincipal.btnModalidadeClick(Sender: TObject);
begin
 tag := tag + 1;
 coolbarcadastro.visible := true;
 btnmodalidade.enabled   := false;
 mnumodalidade.enabled   := false;
 application.createform(tfrmmodalidade, frmmodalidade);
 frmmodalidade.show;
end;

procedure TfrmPrincipal.mnuPendentesClick(Sender: TObject);
begin
 relclientes('select * from aluno where status = "PENDENTE" order by nome', 'Relatório de Pendências')
end;

procedure TfrmPrincipal.mnuRegularesClick(Sender: TObject);
begin
 relclientes('select * from aluno where status = "REGULAR" order by nome', 'Relatório de Clientes Regulares')
end;

procedure TfrmPrincipal.mnuPromocaoClick(Sender: TObject);
var MontaData: string;
Cont, ContWin: integer;
begin
 dtmdados.qryAluno.First;
 dtmdados.qryTempdb.Open;
 repeat
  cont    := 7;
  contwin := 0;
  repeat
   montadata := '01/' + inttostr(cont) + '/2008';

   dtmdados.qryTemp.SQL.Text := 'SELECT * FROM Caixa WHERE descopt = "ALUNO" AND refano = 2008 AND month(pagamento) <= ' + inttostr(cont) + ' AND refmes = "' + formatdatetime('mmmm', strtodate(MontaData)) + '" AND descricao = "' + dtmdados.qryAlunoNome.AsString + '"';
   dtmdados.qryTemp.Open;

   if (dtmdados.qryTemp.RecordCount > 0) and (dtmdados.qryTemp.fieldbyname('pagamento').AsDateTime <= strtodate(dtmdados.qryAlunoVencimento.AsString + '/' + inttostr(cont) + '/2008')) then
    contwin := contwin + 1;

   cont := cont + 1;
  until formatdatetime('mmmm', strtodate(MontaData)) = 'dezembro';
  if contwin = 6 then
  begin
   dtmdados.qryTempdb.Append;
    dtmdados.qryTempdbNome.AsString         := dtmdados.qryAlunoNome.AsString;
    dtmdados.qryTempdbNascimento.AsDateTime := dtmdados.qryAlunoNascimento.AsDateTime;
    dtmdados.qryTempdbCelular.AsString      := dtmdados.qryAlunoCelular.AsString;
    dtmdados.qryTempdbVencimento.AsInteger  := dtmdados.qryAlunoVencimento.AsInteger;
    dtmdados.qryTempdbGraduacao.AsString    := dtmdados.qryAlunoGraduacao.AsString;
   dtmdados.qryTempdb.Post;
  end;

  dtmdados.qryAluno.Next;
 until dtmdados.qryAluno.Eof;

 relclientes('SELECT * FROM temp ORDER BY nome', 'Promoção Julho / Dezembro 2008');

 dtmdados.qryTempdb.SQL.Text := 'DELETE FROM temp';
 dtmdados.qryTempdb.ExecSQL;
 dtmdados.qryTempdb.Close;
end;

procedure TfrmPrincipal.mnuAlunoClick(Sender: TObject);
begin
 btnaluno.Click;
end;

procedure TfrmPrincipal.mnuModalidadeClick(Sender: TObject);
begin
 btnmodalidade.Click;
end;

procedure TfrmPrincipal.mnuTurmaClick(Sender: TObject);
begin
 btnturma.Click;
end;

procedure TfrmPrincipal.btnTurmaClick(Sender: TObject);
begin
 tag := tag + 1;
 coolbarcadastro.visible := true;
 btnturma.enabled := false;
 mnuturma.enabled := false;
 application.createform(tfrmturma, frmturma);
 frmturma.show;
end;

procedure TfrmPrincipal.mnuAtivosClick(Sender: TObject);
begin
 relclientes('select * from aluno where situacao = "Ativo" order by nome', 'Relatório de Clientes Ativos');
end;

procedure TfrmPrincipal.mnuInativosClick(Sender: TObject);
begin
 relclientes('select * from aluno where situacao = "Inativo" order by nome', 'Relatório de Clientes Inativos');
end;

procedure TfrmPrincipal.mnuTodosClick(Sender: TObject);
begin
 relclientes('select * from aluno order by nome', 'Relatório de Clientes');
end;

procedure TfrmPrincipal.mnuKungFuClick(Sender: TObject);
begin
 relclientes('select * from aluno where codmodalidade = 1 order by nome', 'Relatório de Clientes (Modalidade Kung Fu)');
end;

end.
