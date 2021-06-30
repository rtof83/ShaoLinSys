unit formModalidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ComCtrls, ExtCtrls, ToolWin, DB, Grids,
  DBGrids;

type
  TfrmModalidade = class(TForm)
    TabControl1: TTabControl;
    Panel1: TPanel;
    Panel7: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    dbeModalidade: TDBEdit;
    dbeValor: TDBEdit;
    Panel2: TPanel;
    dbgModalidade: TDBGrid;
    lblContMod: TLabel;
    btnFechar: TButton;
    procedure btnFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbeModalidadeEnter(Sender: TObject);
    procedure dbeModalidadeExit(Sender: TObject);
    procedure dbeValorExit(Sender: TObject);
    procedure dbeValorEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmModalidade: TfrmModalidade;

implementation

uses formDados, formprincipal;

{$R *.dfm}

procedure TfrmModalidade.btnFecharClick(Sender: TObject);
begin
 close;
end;

procedure TfrmModalidade.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if (dtmdados.qrymodalidade.state = dsinsert) or (dtmdados.qrymodalidade.state = dsedit) then
 begin
   application.messagebox('Inclusão ou edição em andamento.', 'Atenção', mb_ok + mb_iconwarning);
   exit;
 end;

 frmprincipal.tag := frmprincipal.tag - 1;
 if frmprincipal.tag = 0 then frmprincipal.coolbarcadastro.visible := false;
 frmprincipal.mnumodalidade.enabled := true;
 frmprincipal.btnmodalidade.enabled := true;

 action        := cafree;
 frmmodalidade := nil;
end;

procedure TfrmModalidade.btnIncluirClick(Sender: TObject);
begin
 dtmdados.qryModalidade.Append;
end;

procedure TfrmModalidade.btnExcluirClick(Sender: TObject);
begin
 dtmdados.qryModalidade.Delete;
end;

procedure TfrmModalidade.btnAlterarClick(Sender: TObject);
begin
 dtmdados.qryModalidade.Edit;
end;

procedure TfrmModalidade.btnConfirmarClick(Sender: TObject);
begin
 dtmdados.qryModalidade.Post;
end;

procedure TfrmModalidade.btnCancelarClick(Sender: TObject);
begin
 dtmdados.qryModalidade.Cancel;
end;

procedure TfrmModalidade.FormShow(Sender: TObject);
begin
 top  := 0;
 left := 0;

 with frmprincipal do
 begin
   dsform    := frmmodalidade;
   dstable   := dtmdados.qrymodalidade;
   Campo1    := 'codmodalidade';
   Campo2    := 'modalidade';
   Tabela    := 'Modalidade';
   instrucao := 'select * from modalidade';
 end;

 if dtmdados.qrymodalidade.recordcount = 0 then
 begin
   frmprincipal.toolbtnexcluir.enabled   := false;
   frmprincipal.toolbtnalterar.enabled   := false;
   frmprincipal.toolbtnlocalizar.enabled := false;
 end;

 panel1.enabled := false;

 //Contador de Modalidades
 dtmdados.qryTemp.Close;
 dtmdados.qryTemp.SQL.Text := 'SELECT count(*) as ContMod FROM modalidade';
 dtmdados.qryTemp.Open;
 {***}
 frmmodalidade.lblcontmod.caption := dtmdados.qrytemp.fieldbyname('contmod').asstring + ' registro(s) encontrado(s)';
end;

procedure TfrmModalidade.dbeModalidadeEnter(Sender: TObject);
begin
 dbemodalidade.Color := clcream;
end;

procedure TfrmModalidade.dbeModalidadeExit(Sender: TObject);
begin
 dbemodalidade.Color := clwindow;
end;

procedure TfrmModalidade.dbeValorExit(Sender: TObject);
begin
 dbevalor.Color := clwindow;
end;

procedure TfrmModalidade.dbeValorEnter(Sender: TObject);
begin
 dbevalor.Color := clcream;
end;

procedure TfrmModalidade.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
 case key of
  38: SelectNext(ActiveControl,False,True);
  40: SelectNext(ActiveControl,True,True);
  13: SelectNext(ActiveControl,True,True);
  27: close;
 end;

 //Localizar
 if (key = 114) and ((dtmdados.qrymodalidade.State = dsbrowse) or (dtmdados.qrymodalidade.State = dsinactive)) then frmprincipal.toolbtnlocalizar.click;
end;

end.
