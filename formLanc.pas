unit formLanc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, ComCtrls, DBCtrls, Mask, DB,
  Buttons, DateUtils;

type
  TfrmLanc = class(TForm)
    btnFechar: TButton;
    TabControl1: TTabControl;
    Panel2: TPanel;
    dbtTotalGeral: TDBText;
    Panel3: TPanel;
    dbgLanc: TDBGrid;
    TabControl2: TTabControl;
    Panel1: TPanel;
    btnGeral: TSpeedButton;
    btnEntrada: TSpeedButton;
    btnSaida: TSpeedButton;
    btnPendencia: TSpeedButton;
    dbtEntrada: TDBText;
    dbtSaida: TDBText;
    Label1: TLabel;
    lblPeriodo: TLabel;
    MskDataIni: TMaskEdit;
    MskDataFin: TMaskEdit;
    Bevel2: TBevel;
    Bevel1: TBevel;
    Bevel3: TBevel;
    btnReceber: TSpeedButton;
    btnPagar: TSpeedButton;
    btnSaldo: TSpeedButton;
    btnImprimir: TSpeedButton;
    procedure btnFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure MskDataIniExit(Sender: TObject);
    procedure MskDataFinExit(Sender: TObject);
    procedure dbgLancDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnGeralClick(Sender: TObject);
    procedure btnEntradaClick(Sender: TObject);
    procedure btnSaidaClick(Sender: TObject);
    procedure btnPendenciaClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnReceberClick(Sender: TObject);
    procedure btnPagarClick(Sender: TObject);
    procedure btnSaldoClick(Sender: TObject);
    procedure dbgLancDblClick(Sender: TObject);
    procedure lblPeriodoDblClick(Sender: TObject);
    procedure MskDataFinKeyPress(Sender: TObject; var Key: Char);
    procedure btnImprimirClick(Sender: TObject);
    procedure dbgLancTitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLanc: TfrmLanc;
  DataIni, DataFin: string;

implementation

uses formdados, formPrincipal;

{$R *.dfm}

procedure TfrmLanc.btnFecharClick(Sender: TObject);
begin
 close;
end;

procedure TfrmLanc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 frmprincipal.btnlanc.enabled     := true;
 frmprincipal.mnulanc.enabled     := true;
 frmprincipal.btncaixa.enabled    := true;
 frmprincipal.mnucaixa.enabled    := true;

 dtmdados.qryCaixa.Close;
 dtmdados.qryCaixa.SQL.Text := 'SELECT * FROM Caixa';
 dtmdados.qryCaixa.Open;

 dtmdados.qryLanc.Close;

 action  := cafree;
 frmlanc := nil;
end;

procedure TfrmLanc.FormShow(Sender: TObject);
var Ano, Mes, Dia: word;
begin
 top  := 0;
 left := 0;

 dataini := '';
 datafin := '';

 dtmdados.qryCaixa.SQL.Add('ORDER BY pagamento');
 dtmdados.qryCaixa.Open;

 decodedate(date, ano, mes, dia);
 mskdataini.text := '01' + '/' + inttostr(mes) + '/' + inttostr(ano);
 mskdatainiExit(sender);
 mskdatafin.text := inttostr(daysinmonth(date)) + '/' + inttostr(mes) + '/' + inttostr(ano);
 mskdatafinExit(sender);
 btnGeral.Click;
end;

procedure TfrmLanc.MskDataIniExit(Sender: TObject);
begin
 If (MskDataIni.Text <> '') And (MskDataIni.Text <> '  /  /  ') And (MskDataIni.Text <> '  /  /    ') Then
 Begin
   Try
    MskDataIni.Text := DateToStr(StrToDate(frmprincipal.Val_Data(MskDataIni.Text)));
    mskdatafin.text := mskdataini.text;
    dataini := '#' + formatdatetime('m/d/yyyy', strtodate(mskdataini.text)) + '#';
   Except
    application.messagebox('Data Inv?lida!', 'Aten?ao', mb_ok + mb_iconwarning);
    MskDataIni.SetFocus;
    exit;
   End;
 End
 Else
  dataini := '';
end;

procedure TfrmLanc.MskDataFinExit(Sender: TObject);
begin
 If (MskDataFin.Text <> '') And (MskDataFin.Text <> '  /  /  ') And (MskDataFin.Text <> '  /  /    ') Then
 Begin
   Try
    MskDataFin.Text := DateToStr(StrToDate(frmprincipal.Val_Data(MskDataFin.Text)));
    datafin := '#' + formatdatetime('m/d/yyyy', strtodate(mskdatafin.text)) + '#';
   Except
    application.messagebox('Data Inv?lida!', 'Aten?ao', mb_ok + mb_iconwarning);
    MskDataFin.SetFocus;
   End;
 End
 Else
 Begin
   If (MskDataIni.Text <> '') And (MskDataIni.Text <> '  /  /  ') And (MskDataIni.Text <> '  /  /    ') Then
    application.messagebox('Informe a Data Inicial.', 'Aten??o', mb_ok + mb_iconwarning);
   mskdataini.setfocus;
   datafin := '';
 End;
end;

procedure TfrmLanc.dbgLancDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
 if dtmdados.qrycaixaTipo.asstring = 'SA?DA' then
  dbgLanc.Canvas.Brush.Color := $00E6E6FF
 else if dtmdados.qrycaixaTipo.asstring = 'ENTRADA' then
  dbgLanc.Canvas.Brush.Color := $00FFE8E8;

  dbgLanc.DefaultDrawDataCell(rect, dbgLanc.columns[datacol].field, state);
  {dbgLanc.Canvas.FillRect(Rect);

 if dtmdados.qryCaixaPendente.AsString = '' then
  dbglanc.Columns[3].Font.Style := [fsBold]
 else
  dbglanc.Columns[3].Font.Style := [];}
end;

procedure TfrmLanc.btnGeralClick(Sender: TObject);
begin
 dbgLanc.Options := [dgTitles,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit];
 mskdataini.enabled := true;
 mskdatafin.enabled := true;
 
 dtmdados.qryLanc.Close;
 dtmdados.qryLanc.SQL.Clear;
 if (dataini <> '') and (datafin <> '') then
  dtmdados.qryLanc.SQL.Text := 'SELECT DISTINCT((select sum(valor) from caixa where tipo = ''ENTRADA'' and pagamento >= ' + dataini + ' and pagamento <= ' + datafin + ') - ' +
                               '(select sum(valor) from caixa where tipo = ''SA?DA'' and pagamento >= '   + dataini + ' and pagamento <= ' + datafin + ')) as TotalGeral, '     +
                               '(select sum(valor) from caixa where tipo = ''ENTRADA'' and pagamento >= ' + dataini + ' and pagamento <= ' + datafin + ') as Entrada, '       +
                               '(select sum(valor) from caixa where tipo = ''SA?DA'' and pagamento >= '   + dataini + ' and pagamento <= ' + datafin + ') as Saida FROM Caixa'
 else
  dtmdados.qryLanc.SQL.Text := 'SELECT DISTINCT((select sum(valor) from caixa where tipo = ''ENTRADA'') - ' +
                              '(select sum(valor) from caixa where tipo = ''SA?DA'')) as TotalGeral, '      +
                              '(select sum(valor) from caixa where tipo = ''ENTRADA'') as Entrada, '        +
                              '(select sum(valor) from caixa where tipo = ''SA?DA'') as Saida FROM Caixa';
 dtmdados.qryLanc.Open;

 dtmdados.qryCaixa.Filtered := false;
 if (dataini <> '') and (datafin <> '') then
 begin
   dtmdados.qryCaixa.Filter   := 'pagamento >= ' + mskdataini.text + ' and pagamento <= ' + mskdatafin.text;
   dtmdados.qryCaixa.Filtered := true;
 end;
end;

procedure TfrmLanc.btnEntradaClick(Sender: TObject);
begin
 dbgLanc.Options := [dgTitles,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit];
 mskdataini.enabled := true;
 mskdatafin.enabled := true;

 dtmdados.qryLanc.Close;
 dtmdados.qryLanc.SQL.Clear;
 if (dataini <> '') and (datafin <> '') then
  dtmdados.qryLanc.SQL.Text := 'SELECT SUM(valor) as TotalGeral, (select sum(valor) from caixa where tipo = ''ENTRADA'' and datacad >= ' + dataini + ' and datapag <= ' + datafin + ') as Entrada, ' +
                               '(sum(valor) - sum(valor)) as Saida FROM Caixa WHERE tipo = ''ENTRADA'' and datacad >= ' + dataini + ' and datapag <= ' + datafin
 else
  dtmdados.qryLanc.SQL.Text := 'SELECT SUM(valor) as TotalGeral, (select sum(valor) from caixa where tipo = ''ENTRADA'') as Entrada, ' +
                               '(sum(valor) - sum(valor)) as Saida FROM Caixa WHERE tipo = ''ENTRADA''';
 dtmdados.qryLanc.Open;

 dtmdados.qryCaixa.Filtered := false;
 if (dataini <> '') and (datafin <> '') then
  dtmdados.qryCaixa.Filter   := 'tipo = ''ENTRADA'' and datacad >= ' + dataini + ' and datapag <= ' + datafin
 else
  dtmdados.qryCaixa.Filter   := 'tipo = ''ENTRADA''';
 dtmdados.qryCaixa.Filtered := true;
end;

procedure TfrmLanc.btnSaidaClick(Sender: TObject);
begin
 dbgLanc.Options := [dgTitles,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit];
 mskdataini.enabled := true;
 mskdatafin.enabled := true;

 dtmdados.qryLanc.Close;
 dtmdados.qryLanc.SQL.Clear;
 if (dataini <> '') and (datafin <> '') then
  dtmdados.qryLanc.SQL.Text := 'SELECT SUM(valor) as TotalGeral, (select sum(valor) from caixa where tipo = ''SA?DA'' and datacad >= ' + dataini + ' and datapag <= ' + datafin + ') as Saida, ' +
                               '(sum(valor) - sum(valor)) as Entrada FROM Caixa WHERE tipo = ''SA?DA'' and datacad >= ' + dataini + ' and datapag <= ' + datafin
 else
  dtmdados.qryLanc.SQL.Text := 'SELECT SUM(valor) as TotalGeral, (select sum(valor) from caixa where tipo = ''SA?DA'') as Saida, ' +
                               '(sum(valor) - sum(valor)) as Entrada FROM Caixa WHERE tipo = ''SA?DA''';
 dtmdados.qryLanc.Open;

 dtmdados.qryCaixa.Filtered := false;
 if (dataini <> '') and (datafin <> '') then
  dtmdados.qryCaixa.Filter   := 'tipo = ''SA?DA'' and datacad >= ' + dataini + ' and datapag <= ' + datafin
 else
  dtmdados.qryCaixa.Filter   := 'tipo = ''SA?DA''';
 dtmdados.qryCaixa.Filtered := true;
end;

procedure TfrmLanc.btnPendenciaClick(Sender: TObject);
begin
 dbgLanc.Options    := [dgTitles,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit];
 mskdataini.enabled := false;
 mskdatafin.enabled := false;

 dtmdados.qryLanc.Close;
 dtmdados.qryLanc.SQL.Clear;
 dtmdados.qryLanc.SQL.Text := 'SELECT DISTINCT((select sum(valor) from caixa where tipo = ''ENTRADA'' and pendente = ''X'' and datapag < date()) - ' +
                              '(select sum(valor) from caixa where tipo = ''SA?DA'' and pendente = ''X'' and datapag < date())) as TotalGeral, '     +
                              '(select sum(valor) from caixa where tipo = ''ENTRADA'' and pendente = ''X'' and datapag < date()) as Entrada, '       +
                              '(select sum(valor) from caixa where tipo = ''SA?DA'' and pendente = ''X'' and datapag < date()) as Saida FROM Caixa';
 dtmdados.qryLanc.Open;

 dtmdados.qryCaixa.Filtered := false;
 dtmdados.qryCaixa.Filter   := 'pendente = ''X'' and datapag < ' + datetostr(date);
 dtmdados.qryCaixa.Filtered := true;
end;

procedure TfrmLanc.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
 case key of
  38: SelectNext(ActiveControl,False,True);
  40: SelectNext(ActiveControl,True,True);
  13: SelectNext(ActiveControl,True,True);
  27: close;
 end;
end;

procedure TfrmLanc.btnReceberClick(Sender: TObject);
begin
 dbgLanc.Options := [dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit];
 mskdataini.enabled := true;
 mskdatafin.enabled := true;

 dtmdados.qryLanc.Close;
 dtmdados.qryLanc.SQL.Clear;
 if (dataini <> '') and (datafin <> '') then
  dtmdados.qryLanc.SQL.Text := 'SELECT DISTINCT(select sum(valor) from caixa where tipo = ''ENTRADA'' and pendente = ''X'' and datacad >= ' + dataini + ' and datapag <= ' + datafin + ') as TotalGeral, ' +
                               '(select sum(valor) from caixa where tipo = ''ENTRADA'' and pendente = ''X'' and datacad >= ' + dataini + ' and datapag <= ' + datafin + ') as Entrada, '                   +
                               '(sum(valor) - sum(valor)) as Saida FROM Caixa'
 else
  dtmdados.qryLanc.SQL.Text := 'SELECT DISTINCT(select sum(valor) from caixa where tipo = ''ENTRADA'' and pendente = ''X'') as TotalGeral, ' +
                               '(select sum(valor) from caixa where tipo = ''ENTRADA'' and pendente = ''X'') as Entrada, '                    +
                               '(sum(valor) - sum(valor)) as Saida FROM Caixa';
 dtmdados.qryLanc.Open;

 dtmdados.qryCaixa.Filtered := false;
 if (dataini <> '') and (datafin <> '') then
  dtmdados.qryCaixa.Filter   := 'tipo = ''ENTRADA'' and pendente = ''X'' and datacad >= ' + dataini + ' and datapag <= ' + datafin
 else
  dtmdados.qryCaixa.Filter   := 'tipo = ''ENTRADA'' and pendente = ''X''';
 dtmdados.qryCaixa.Filtered := true;
end;

procedure TfrmLanc.btnPagarClick(Sender: TObject);
begin
 dbgLanc.Options := [dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit];
 mskdataini.enabled := true;
 mskdatafin.enabled := true;

 dtmdados.qryLanc.Close;
 dtmdados.qryLanc.SQL.Clear;
 if (dataini <> '') and (datafin <> '') then
  dtmdados.qryLanc.SQL.Text := 'SELECT DISTINCT(select sum(valor) from caixa where tipo = ''SA?DA'' and pendente = ''X'' and datacad >= ' + dataini + ' and datapag <= ' + datafin + ') as TotalGeral, ' +
                               '(select sum(valor) from caixa where tipo = ''SA?DA'' and pendente = ''X'' and datacad >= ' + dataini + ' and datapag <= ' + datafin + ') as Saida, '                     +
                               '(sum(valor) - sum(valor)) as Entrada FROM Caixa'
 else
  dtmdados.qryLanc.SQL.Text := 'SELECT DISTINCT(select sum(valor) from caixa where tipo = ''SA?DA'' and pendente = ''X'') as TotalGeral, ' +
                               '(select sum(valor) from caixa where tipo = ''SA?DA'' and pendente = ''X'') as Saida, '                     +
                               '(sum(valor) - sum(valor)) as Entrada FROM Caixa';
 dtmdados.qryLanc.Open;

 dtmdados.qryCaixa.Filtered := false;
 if (dataini <> '') and (datafin <> '') then
  dtmdados.qryCaixa.Filter   := 'tipo = ''SA?DA'' and pendente = ''X'' and datacad >= ' + dataini + ' and datapag <= ' + datafin
 else
  dtmdados.qryCaixa.Filter   := 'tipo = ''SA?DA'' and pendente = ''X''';
 dtmdados.qryCaixa.Filtered := true;
end;

procedure TfrmLanc.btnSaldoClick(Sender: TObject);
begin
 dbgLanc.Options := [dgTitles,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit];
 mskdataini.enabled := true;
 mskdatafin.enabled := true;

 dtmdados.qryLanc.Close;
 dtmdados.qryLanc.SQL.Clear;
 if (dataini <> '') and (datafin <> '') then
  dtmdados.qryLanc.SQL.Text := 'SELECT DISTINCT((select sum(valor) from caixa where tipo = ''ENTRADA'' and pendente is null and pagamento >= ' + dataini + ' and pagamento <= ' + datafin + ') - ' +
                               '(select sum(valor) from caixa where tipo = ''SA?DA'' and pendente is null and pagamento >= ' + dataini + ' and pagamento <= ' + datafin + ')) as TotalGeral, '     +
                               '(select sum(valor) from caixa where tipo = ''ENTRADA'' and pendente is null and pagamento >= ' + dataini + ' and pagamento <= ' + datafin + ') as Entrada, '       +
                               '(select sum(valor) from caixa where tipo = ''SA?DA'' and pendente is null and pagamento >= ' + dataini + ' and pagamento <= ' + datafin + ') as Saida FROM Caixa'
 else
  dtmdados.qryLanc.SQL.Text := 'SELECT DISTINCT((select sum(valor) from caixa where tipo = ''ENTRADA'' and pendente is null) - ' +
                               '(select sum(valor) from caixa where tipo = ''SA?DA'' and pendente is null)) as TotalGeral, '     +
                               '(select sum(valor) from caixa where tipo = ''ENTRADA'' and pendente is null) as Entrada, '       +
                               '(select sum(valor) from caixa where tipo = ''SA?DA'' and pendente is null) as Saida FROM Caixa';
 dtmdados.qryLanc.Open;

 dtmdados.qryCaixa.Filtered := false;
 if (dataini <> '') and (datafin <> '') then
  dtmdados.qryCaixa.Filter   := 'pendente = null and pagamento >= ' + mskdataini.text + ' and pagamento <= ' + mskdatafin.text
 else
  dtmdados.qryCaixa.Filter   := 'pendente = null';
 dtmdados.qryCaixa.Filtered := true;
end;

procedure TfrmLanc.dbgLancDblClick(Sender: TObject);
begin
 if dtmdados.qryCaixa.RecordCount > 0 then
 begin
   if (btnreceber.Down = true) or (btnpagar.Down = true) then
   begin
     if application.messagebox('Efetuar Baixa?', 'Mensagem', mb_yesno + mb_iconquestion) = id_yes then
     begin
       try
        dtmdados.qryCaixa.Edit;
         dtmdados.qryCaixaPendente.Clear;
        dtmdados.qryCaixa.Post;
       except
       end;
       {***}
       dtmdados.qryLanc.Close;
       dtmdados.qryLanc.Open;
     end;
   end;

   if btngeral.Down = true then
   begin
     frmprincipal.codigo := dtmdados.qryCaixaCodCaixa.AsInteger;
     close;
     frmprincipal.btnCaixa.Click;
     dtmdados.qryCaixa.Locate('codcaixa', frmprincipal.codigo, []);
     frmprincipal.toolbtnAlterar.Click;
   end;
 end;
end;

procedure TfrmLanc.lblPeriodoDblClick(Sender: TObject);
begin
 mskdataini.text := '';
 mskdatafin.text := '';
 dataini         := '';
 datafin         := '';

 if btngeral.Down     = true then btngeral.Click;
 if btnentrada.Down   = true then btnentrada.Click;
 if btnsaida.Down     = true then btnsaida.Click;
 if btnpendencia.Down = true then btnpendencia.Click;
 if btnreceber.Down   = true then btnreceber.Click;
 if btnpagar.Down     = true then btnpagar.Click;
 if btnsaldo.Down     = true then btnsaldo.Click;
end;

procedure TfrmLanc.MskDataFinKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
 begin
   if (dataini <> '') and (datafin <> '') then
   begin
     if btngeral.Down     = true then btngeral.Click;
     if btnentrada.Down   = true then btnentrada.Click;
     if btnsaida.Down     = true then btnsaida.Click;
     if btnpendencia.Down = true then btnpendencia.Click;
     if btnreceber.Down   = true then btnreceber.Click;
     if btnpagar.Down     = true then btnpagar.Click;
     if btnsaldo.Down     = true then btnsaldo.Click;
   end;
 end;
end;

procedure TfrmLanc.btnImprimirClick(Sender: TObject);
var Periodo: string;
begin
 if (dataini <> '') and (datafin <> '') then
  periodo := ' - ' + mskdataini.Text + ' a ' + mskdatafin.Text
 else
  periodo := '';

 if btngeral.Down     = true then frmprincipal.rvpShaoLin.SetParam('tipo', 'Lan?amento Geral' + periodo);
 if btnentrada.Down   = true then frmprincipal.rvpShaoLin.SetParam('tipo', 'Entradas' + periodo);
 if btnsaida.Down     = true then frmprincipal.rvpShaoLin.SetParam('tipo', 'Sa?das' + periodo);
 if btnpendencia.Down = true then frmprincipal.rvpShaoLin.SetParam('tipo', 'Pend?ncias' + periodo);
 if btnreceber.Down   = true then frmprincipal.rvpShaoLin.SetParam('tipo', 'a Receber' + periodo);
 if btnpagar.Down     = true then frmprincipal.rvpShaoLin.SetParam('tipo', 'a Pagar' + periodo);
 if btnsaldo.Down     = true then frmprincipal.rvpShaoLin.SetParam('tipo', 'Saldo' + periodo);

 frmprincipal.rvpShaoLin.ProjectFile := ExtractFilePath(Application.ExeName) + '\Relatorios\relLanc.rav';
 frmprincipal.rvpShaoLin.Execute;
 frmprincipal.rvpShaoLin.close;
end;

procedure TfrmLanc.dbgLancTitleClick(Column: TColumn);
begin
 if dtmdados.qryCaixa.RecordCount > 0 then
 begin
   if dbglanc.Columns[0] = Column then
   begin
     dtmdados.qryCaixa.Close;
     dtmdados.qryCaixa.SQL.Clear;
     if dbglanc.Tag = 0 then
     begin
       dtmdados.qryCaixa.SQL.Text := 'SELECT * FROM Caixa ORDER BY descricao';
       dbglanc.Tag := 1;
     end
     else
     begin
       dtmdados.qryCaixa.SQL.Text := 'SELECT * FROM Caixa ORDER BY descricao DESC';
       dbglanc.Tag := 0;
     end;
     dtmdados.qryCaixa.Open;
   end;

   if dbglanc.Columns[1] = Column then
   begin
     dtmdados.qryCaixa.Close;
     dtmdados.qryCaixa.SQL.Clear;
     if dbglanc.Tag = 0 then
     begin
       dtmdados.qryCaixa.SQL.Text := 'SELECT * FROM Caixa ORDER BY tipo';
       dbglanc.Tag := 1;
     end
     else
     begin
       dtmdados.qryCaixa.SQL.Text := 'SELECT * FROM Caixa ORDER BY tipo DESC';
       dbglanc.Tag := 0;
     end;
     dtmdados.qryCaixa.Open;
   end;

   if dbglanc.Columns[2] = Column then
   begin
     dtmdados.qryCaixa.Close;
     dtmdados.qryCaixa.SQL.Clear;
     if dbglanc.Tag = 0 then
     begin
       dtmdados.qryCaixa.SQL.Text := 'SELECT * FROM Caixa ORDER BY datacad';
       dbglanc.Tag := 1;
     end
     else
     begin
       dtmdados.qryCaixa.SQL.Text := 'SELECT * FROM Caixa ORDER BY datacad DESC';
       dbglanc.Tag := 0;
     end;
     dtmdados.qryCaixa.Open;
   end;

   if dbglanc.Columns[3] = Column then
   begin
     dtmdados.qryCaixa.Close;
     dtmdados.qryCaixa.SQL.Clear;
     if dbglanc.Tag = 0 then
     begin
       dtmdados.qryCaixa.SQL.Text := 'SELECT * FROM Caixa ORDER BY datapag';
       dbglanc.Tag := 1;
     end
     else
     begin
       dtmdados.qryCaixa.SQL.Text := 'SELECT * FROM Caixa ORDER BY datapag DESC';
       dbglanc.Tag := 0;
     end;
     dtmdados.qryCaixa.Open;
   end;

   if dbglanc.Columns[4] = Column then
   begin
     dtmdados.qryCaixa.Close;
     dtmdados.qryCaixa.SQL.Clear;
     if dbglanc.Tag = 0 then
     begin
       dtmdados.qryCaixa.SQL.Text := 'SELECT * FROM Caixa ORDER BY valor';
       dbglanc.Tag := 1;
     end
     else
     begin
       dtmdados.qryCaixa.SQL.Text := 'SELECT * FROM Caixa ORDER BY valor DESC';
       dbglanc.Tag := 0;
     end;
     dtmdados.qryCaixa.Open;
   end;
 end;
end;

end.
