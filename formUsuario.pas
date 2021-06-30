unit formUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, DBCtrls, DB, ComCtrls, Grids, DBGrids;

type
  TfrmUsuario = class(TForm)
    btnFechar: TButton;
    TabControl1: TTabControl;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    dbeUsuario: TDBEdit;
    dbeSenha: TDBEdit;
    Panel2: TPanel;
    dbgModalidade: TDBGrid;
    lblContMod: TLabel;
    procedure btnFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUsuario: TfrmUsuario;

implementation

uses formDados, formPrincipal;

{$R *.dfm}

procedure TfrmUsuario.btnFecharClick(Sender: TObject);
begin
 close;
end;

procedure TfrmUsuario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if (dtmdados.qrylogin.state = dsinsert) or (dtmdados.qrylogin.state = dsedit) then
 begin
   application.messagebox('Inclusão ou edição em andamento.', 'Atenção', mb_ok + mb_iconwarning);
   exit;
 end;

 frmprincipal.tag := frmprincipal.tag - 1;
 if frmprincipal.tag = 0 then frmprincipal.coolbarcadastro.visible := false;
 frmprincipal.mnulogin.enabled := true;
 action     := cafree;
 frmusuario := nil;
end;

procedure TfrmUsuario.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
 case key of
  38: SelectNext(ActiveControl,False,True);
  40: SelectNext(ActiveControl,True,True);
  13: SelectNext(ActiveControl,True,True);
  27: close;
 end;

 //Localizar
 if (dtmdados.qryLoginUsuario.AsString = 'ADMIN') and (key = 114) and ((dtmdados.qrylogin.State = dsbrowse) or (dtmdados.qrylogin.State = dsinactive)) then frmprincipal.toolbtnlocalizar.click;
end;

procedure TfrmUsuario.FormShow(Sender: TObject);
begin
 top  := 0;
 left := 0;

 with frmprincipal do
 begin
   dsform    := frmusuario;
   dstable   := dtmdados.qrylogin;
   Campo1    := 'usuario';
   Campo2    := '';
   Tabela    := 'Login';
   instrucao := 'select * from login';
 end;

 if dtmdados.qrylogin.recordcount = 0 then
 begin
   frmprincipal.toolbtnexcluir.enabled   := false;
   frmprincipal.toolbtnalterar.enabled   := false;
   frmprincipal.toolbtnlocalizar.enabled := false;
 end;

 if dtmdados.qryLoginUsuario.AsString <> 'ADMIN' then
 begin
   frmprincipal.toolbtnexcluir.enabled   := false;
   frmprincipal.toolbtnlocalizar.enabled := false;
   frmprincipal.toolbtnInserir.Enabled   := false;
   frmprincipal.toolbtnConfirmar.Enabled := false;
   frmprincipal.toolbtnCancelar.Enabled  := false;
   frmprincipal.toolbtnFirst.Enabled     := false;
   frmprincipal.toolbtnPrior.Enabled     := false;
   frmprincipal.toolbtnNext.Enabled      := false;
   frmprincipal.toolbtnLast.Enabled      := false;
 end;

 panel1.enabled := false;
 dtmdados.qrylogin.Refresh;
end;

end.
