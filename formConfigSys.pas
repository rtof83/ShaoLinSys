unit formConfigSys;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, ComCtrls, DB, ExtDlgs,
  AppEvnts, Menus;

type
  TfrmConfigSys = class(TForm)
    TabControl1: TTabControl;
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    dbeSenha: TDBEdit;
    dbeHost: TDBEdit;
    dbeUsuario: TDBEdit;
    btnFechar: TButton;
    GroupBox1: TGroupBox;
    Panel4: TPanel;
    imgFundo: TImage;
    popFundo: TPopupMenu;
    mnuInserir: TMenuItem;
    mnuExcluir: TMenuItem;
    ApplicationEvents1: TApplicationEvents;
    opcFundo: TOpenPictureDialog;
    procedure btnFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure ApplicationEvents1Hint(Sender: TObject);
    procedure imgFundoClick(Sender: TObject);
    procedure mnuInserirClick(Sender: TObject);
    procedure mnuExcluirClick(Sender: TObject);
    procedure imgFundoDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfigSys: TfrmConfigSys;

implementation

uses formDados, formPrincipal;

{$R *.dfm}

procedure TfrmConfigSys.btnFecharClick(Sender: TObject);
begin
 close;
end;

procedure TfrmConfigSys.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if (dtmdados.qryconfigsys.state = dsinsert) or (dtmdados.qryconfigsys.state = dsedit) then
 begin
   application.messagebox('Inclusão ou edição em andamento.', 'Atenção', mb_ok + mb_iconwarning);
   exit;
 end;

 frmprincipal.tag := frmprincipal.tag - 1;
 if frmprincipal.tag = 0 then frmprincipal.coolbarcadastro.visible := false;
 frmprincipal.mnuconfigsys.enabled := true;
 frmconfigsys := nil;
 action       := cafree;

 dtmdados.qryConfigSys.Close;
end;

procedure TfrmConfigSys.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
 case key of
  38: SelectNext(ActiveControl,False,True);
  40: SelectNext(ActiveControl,True,True);
  13: SelectNext(ActiveControl,True,True);
  27: close;
 end;
end;

procedure TfrmConfigSys.FormShow(Sender: TObject);
begin
 top  := 0;
 left := 0;

 dtmdados.qryConfigSys.Open;
 with frmprincipal do
 begin
   dsform    := frmconfigsys;
   dstable   := dtmdados.qryconfigsys;
   Campo1    := 'usuario';
   Campo2    := 'host';
   Tabela    := 'ConfigSys';
   instrucao := 'select * from configsys';
 end;

 if dtmdados.qryconfigsys.recordcount = 0 then
 begin
   frmprincipal.toolbtnexcluir.enabled   := false;
   frmprincipal.toolbtnalterar.enabled   := false;
   frmprincipal.toolbtnlocalizar.enabled := false;
 end
 else
  frmprincipal.toolbtnInserir.enabled    := false;

 frmprincipal.toolbtnLocalizar.Visible := false;
 frmprincipal.toolbtnImprimir.Visible  := false;
 panel1.enabled := false;
end;

procedure TfrmConfigSys.ApplicationEvents1Hint(Sender: TObject);
begin
 if dtmdados.qryConfigSys.state <> dsinactive then
  imgfundo.Hint := dtmdados.qryConfigSysImagem.AsString;
end;

procedure TfrmConfigSys.imgFundoClick(Sender: TObject);
begin
 popfundo.Popup(mouse.CursorPos.X, mouse.CursorPos.Y);
end;

procedure TfrmConfigSys.mnuInserirClick(Sender: TObject);
begin
 opcFundo.Execute;
 imgFundo.Picture.LoadFromFile(opcFundo.FileName);
 dtmdados.qryConfigSysImagem.AsString := opcFundo.FileName;
end;

procedure TfrmConfigSys.mnuExcluirClick(Sender: TObject);
begin
 imgFundo.Picture := nil;
 dtmdados.qryConfigSysImagem.AsString := '';
end;

procedure TfrmConfigSys.imgFundoDblClick(Sender: TObject);
begin
 if dtmdados.qryConfigSys.state <> dsbrowse then
 begin
   opcFundo.Execute;
   imgFundo.Picture.LoadFromFile(opcFundo.FileName);
   dtmdados.qryConfigSysImagem.AsString := opcFundo.FileName;
 end;
end;

end.
