unit formCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Mask, DBCtrls, Grids, DBGrids, DB,
  Buttons;

type
  TfrmCaixa = class(TForm)
    TabControl1: TTabControl;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    dbcTipo: TDBComboBox;
    dbrDescricao: TDBRadioGroup;
    dbeDesc: TDBEdit;
    dbcAluno: TDBLookupComboBox;
    Label3: TLabel;
    dbeVencimento: TDBEdit;
    dbePagamento: TDBEdit;
    Label4: TLabel;
    dbeValor: TDBEdit;
    Label5: TLabel;
    dbmObs: TDBMemo;
    btnFechar: TButton;
    Label6: TLabel;
    dbcRefMes: TDBComboBox;
    dbeRefAno: TDBEdit;
    procedure btnAlunoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure dbrDescricaoClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure dbcAlunoClick(Sender: TObject);
    procedure dbrDescricaoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCaixa: TfrmCaixa;

implementation

uses formDados, formAluno, formPrincipal;

{$R *.dfm}

procedure TfrmCaixa.btnAlunoClick(Sender: TObject);
begin
 application.CreateForm(tfrmaluno, frmaluno);
 frmaluno.showmodal;
 frmaluno.free;
end;

procedure TfrmCaixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if (dtmdados.qrycaixa.state = dsinsert) or (dtmdados.qrycaixa.state = dsedit) then
 begin
   application.messagebox('Inclusão ou edição em andamento.', 'Atenção', mb_ok + mb_iconwarning);
   exit;
 end;

 frmprincipal.tag := frmprincipal.tag - 1;
 if frmprincipal.tag = 0 then frmprincipal.coolbarcadastro.visible := false;
 frmprincipal.mnucaixa.enabled := true;
 frmprincipal.btncaixa.enabled := true;
 frmprincipal.mnulanc.enabled  := true;
 frmprincipal.btnlanc.enabled  := true;
 frmprincipal.btnaluno.enabled := true;
 frmprincipal.mnualuno.enabled := true;

 action   := cafree;
 frmcaixa := nil;
end;

procedure TfrmCaixa.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
 case key of
  38: SelectNext(ActiveControl, False, True);
  40: SelectNext(ActiveControl, True, True);
  13: SelectNext(ActiveControl, True, True);
  27: close;
 end;

 //Localizar
 if (key = 114) and ((dtmdados.qrycaixa.State = dsbrowse) or (dtmdados.qrycaixa.State = dsinactive)) then frmprincipal.toolbtnlocalizar.click;
end;

procedure TfrmCaixa.FormShow(Sender: TObject);
begin
 top  := 0;
 left := 0;

 with frmprincipal do
 begin
   dsform    := frmcaixa;
   dstable   := dtmdados.qrycaixa;
   Campo1    := 'codcaixa';
   Campo2    := 'descricao';
   Tabela    := 'Caixa';
   instrucao := 'select * from caixa';
 end;

 if dtmdados.qrycaixa.recordcount = 0 then
 begin
   frmprincipal.toolbtnexcluir.enabled   := false;
   frmprincipal.toolbtnalterar.enabled   := false;
   frmprincipal.toolbtnlocalizar.enabled := false;
 end;

 panel1.enabled := false;
end;

procedure TfrmCaixa.dbrDescricaoClick(Sender: TObject);
begin
 if dbrdescricao.ItemIndex = 0 then
 begin
   dbcaluno.Visible := true;
   dbeDesc.Visible  := false;
 end;

 if dbrdescricao.ItemIndex = 1 then
 begin
   dbeDesc.Visible  := true;
   dbcaluno.Visible := false;
 end;

 dtmdados.qryCaixaDescricao.AsString := '';
end;

procedure TfrmCaixa.btnFecharClick(Sender: TObject);
begin
 close;
end;

procedure TfrmCaixa.dbcAlunoClick(Sender: TObject);
begin
 if dtmdados.qryCaixa.State = dsinsert then
 begin
   dtmdados.qryCaixaVencimento.AsDateTime := strtodate(dtmdados.qryAlunoVencimento.asstring + '/' + FormatDateTime('mm', date) + '/' + FormatDateTime('yyyy', date));
   dtmdados.qryCaixaPagamento.AsDateTime  := date;
   dbevalor.SetFocus;
 end;
end;

procedure TfrmCaixa.dbrDescricaoChange(Sender: TObject);
begin
 if (dbrdescricao.ItemIndex = 1) and (dtmdados.qryCaixa.State = dsinsert) then
 begin
   dtmdados.qryCaixaVencimento.AsString := '';
   dtmdados.qryCaixaPagamento.AsString  := '';
   dbedesc.SetFocus;
 end;
end;

end.
