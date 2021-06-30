unit formTurma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ComCtrls, ExtCtrls, ToolWin, DB, Grids,
  DBGrids;

type
  TfrmTurma = class(TForm)
    TabControl1: TTabControl;
    Panel1: TPanel;
    Panel7: TPanel;
    Label1: TLabel;
    dbeTurma: TDBEdit;
    Panel2: TPanel;
    dbgModalidade: TDBGrid;
    lblContTurma: TLabel;
    btnFechar: TButton;
    procedure btnFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbeTurmaEnter(Sender: TObject);
    procedure dbeTurmaExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTurma: TfrmTurma;

implementation

uses formDados, formPrincipal;

{$R *.dfm}

procedure TfrmTurma.btnFecharClick(Sender: TObject);
begin
 close;
end;

procedure TfrmTurma.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if (dtmdados.qryturma.state = dsinsert) or (dtmdados.qryturma.state = dsedit) then
 begin
   application.messagebox('Inclusão ou edição em andamento.', 'Atenção', mb_ok + mb_iconwarning);
   exit;
 end;

 frmprincipal.tag := frmprincipal.tag - 1;
 if frmprincipal.tag = 0 then frmprincipal.coolbarcadastro.visible := false;
 frmprincipal.mnuturma.enabled := true;
 frmprincipal.btnturma.enabled := true;

 action   := cafree;
 frmturma := nil;
end;

procedure TfrmTurma.btnIncluirClick(Sender: TObject);
begin
 dtmdados.qryTurma.Append;
end;

procedure TfrmTurma.btnExcluirClick(Sender: TObject);
begin
 dtmdados.qryTurma.Delete;
end;

procedure TfrmTurma.btnAlterarClick(Sender: TObject);
begin
 dtmdados.qryTurma.Edit;
end;

procedure TfrmTurma.btnConfirmarClick(Sender: TObject);
begin
 dtmdados.qryTurma.Post;
end;

procedure TfrmTurma.btnCancelarClick(Sender: TObject);
begin
 dtmdados.qryTurma.Cancel;
end;

procedure TfrmTurma.FormShow(Sender: TObject);
begin
 top  := 0;
 left := 0;

 with frmprincipal do
 begin
   dsform    := frmturma;
   dstable   := dtmdados.qryturma;
   Campo1    := 'codturma';
   Campo2    := 'turma';
   Tabela    := 'Turma';
   instrucao := 'select * from turma';
 end;

 if dtmdados.qryturma.recordcount = 0 then
 begin
   frmprincipal.toolbtnexcluir.enabled   := false;
   frmprincipal.toolbtnalterar.enabled   := false;
   frmprincipal.toolbtnlocalizar.enabled := false;
 end;

 panel1.enabled := false;

 //Contador de Turmas
 dtmdados.qryTemp.Close;
 dtmdados.qryTemp.SQL.Text := 'SELECT count(*) as ContTurma FROM turma';
 dtmdados.qryTemp.Open;
 {***}
 lblcontturma.caption := dtmdados.qrytemp.fieldbyname('contturma').asstring + ' registro(s) encontrado(s)';
end;

procedure TfrmTurma.dbeTurmaEnter(Sender: TObject);
begin
 dbeturma.Color := clcream;
end;

procedure TfrmTurma.dbeTurmaExit(Sender: TObject);
begin
 dbeturma.Color := clwindow;
end;

procedure TfrmTurma.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
 case key of
  38: SelectNext(ActiveControl,False,True);
  40: SelectNext(ActiveControl,True,True);
  13: SelectNext(ActiveControl,True,True);
  27: close;
 end;

 //Localizar
 if (key = 114) and ((dtmdados.qryturma.State = dsbrowse) or (dtmdados.qryturma.State = dsinactive)) then frmprincipal.toolbtnlocalizar.click;
end;

end.
