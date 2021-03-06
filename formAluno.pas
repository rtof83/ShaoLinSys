unit formAluno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, ExtCtrls, ComCtrls, StdCtrls, Mask, ToolWin, DB, Grids,
  DBGrids, AppEvnts, Menus, ExtDlgs, Buttons;

type
  TfrmAluno = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    dbrTipoSangue: TDBRadioGroup;
    GroupBox2: TGroupBox;
    DBRadioGroup1: TDBRadioGroup;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    dbeAluno: TDBEdit;
    dbeNascimento: TDBEdit;
    Panel5: TPanel;
    Label5: TLabel;
    dbcModalidade: TDBLookupComboBox;
    lblGraduacao: TLabel;
    dbcGraduacao: TDBComboBox;
    Panel6: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label9: TLabel;
    Label22: TLabel;
    dbeEndereco: TDBEdit;
    dbcTipoEnd: TDBComboBox;
    dbeComplemento: TDBEdit;
    dbeBairro: TDBEdit;
    dbeCidade: TDBEdit;
    dbeCEP: TDBEdit;
    dbcUF: TDBComboBox;
    dbeNumero: TDBEdit;
    Label24: TLabel;
    Label25: TLabel;
    dbePratica: TDBEdit;
    Label6: TLabel;
    dbeRG: TDBEdit;
    Label4: TLabel;
    dbcSexo: TDBComboBox;
    Label3: TLabel;
    dbeEntrada: TDBEdit;
    dbcVencimento: TDBComboBox;
    Label16: TLabel;
    Panel7: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    dbeTelefone: TDBEdit;
    dbeCelular: TDBEdit;
    dbeEmail: TDBEdit;
    Panel8: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    dbePai: TDBEdit;
    dbeMae: TDBEdit;
    Panel9: TPanel;
    Label21: TLabel;
    dbmObservacao: TDBMemo;
    Panel10: TPanel;
    Label20: TLabel;
    dbeProfissao: TDBEdit;
    TabSheet3: TTabSheet;
    Panel3: TPanel;
    Panel11: TPanel;
    Label17: TLabel;
    dbePagamento: TDBEdit;
    Label23: TLabel;
    dbeValor: TDBEdit;
    Label26: TLabel;
    dbeMulta: TDBEdit;
    Label27: TLabel;
    dbeDesconto: TDBEdit;
    Panel12: TPanel;
    imgFoto: TImage;
    opcFoto: TOpenPictureDialog;
    popFoto: TPopupMenu;
    mnuInserir: TMenuItem;
    mnuExcluir: TMenuItem;
    ApplicationEvents1: TApplicationEvents;
    Label29: TLabel;
    dbeAcrescimo: TDBEdit;
    Label30: TLabel;
    dbtTotal: TDBText;
    Panel13: TPanel;
    btnFechar: TButton;
    chkJaneiro: TCheckBox;
    chkFevereiro: TCheckBox;
    chkMarco: TCheckBox;
    chkAbril: TCheckBox;
    chkMaio: TCheckBox;
    chkJunho: TCheckBox;
    chkJulho: TCheckBox;
    chkAgosto: TCheckBox;
    chkSetembro: TCheckBox;
    chkOutubro: TCheckBox;
    chkNovembro: TCheckBox;
    chkDezembro: TCheckBox;
    btnInserir: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnCancelar: TSpeedButton;
    Label31: TLabel;
    dbeVencimento: TDBEdit;
    btnEditar: TSpeedButton;
    Panel14: TPanel;
    dbtCodAluno: TDBText;
    dbtNome: TDBText;
    dbtEntrada: TDBText;
    dbgCaixaAluno: TDBGrid;
    Label28: TLabel;
    dbcRefAno: TDBComboBox;
    Label32: TLabel;
    dbcTurma: TDBLookupComboBox;
    dbrSituacao: TDBRadioGroup;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Panel4Exit(Sender: TObject);
    procedure Panel4Enter(Sender: TObject);
    procedure Panel5Enter(Sender: TObject);
    procedure Panel5Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Panel6Exit(Sender: TObject);
    procedure Panel6Enter(Sender: TObject);
    procedure Panel7Enter(Sender: TObject);
    procedure Panel7Exit(Sender: TObject);
    procedure dbeAlunoEnter(Sender: TObject);
    procedure dbeAlunoExit(Sender: TObject);
    procedure dbcModalidadeCloseUp(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Panel11Enter(Sender: TObject);
    procedure Panel11Exit(Sender: TObject);
    procedure imgFotoClick(Sender: TObject);
    procedure ApplicationEvents1Hint(Sender: TObject);
    procedure mnuInserirClick(Sender: TObject);
    procedure mnuExcluirClick(Sender: TObject);
    procedure imgFotoDblClick(Sender: TObject);
    procedure dbeMultaExit(Sender: TObject);
    procedure dbeDescontoExit(Sender: TObject);
    procedure dbeAcrescimoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAluno: TfrmAluno;

implementation

uses formDados, formprincipal, formUsuario;

{$R *.dfm}

procedure TfrmAluno.btnIncluirClick(Sender: TObject);
begin
 dtmdados.qryAluno.Append;
end;

procedure TfrmAluno.btnExcluirClick(Sender: TObject);
begin
 dtmdados.qryAluno.Delete;
end;

procedure TfrmAluno.btnAlterarClick(Sender: TObject);
begin
 dtmdados.qryAluno.Edit;
end;

procedure TfrmAluno.btnConfirmarClick(Sender: TObject);
begin
 dtmdados.qryAluno.Post;
end;

procedure TfrmAluno.btnCancelarClick(Sender: TObject);
begin
 dtmdados.qryAluno.Cancel;
end;

procedure TfrmAluno.btnFecharClick(Sender: TObject);
begin
 close;
end;

procedure TfrmAluno.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if (dtmdados.qryaluno.state = dsinsert) or (dtmdados.qryaluno.state = dsedit) then
 begin
   application.messagebox('Inclus?o ou edi??o em andamento.', 'Aten??o', mb_ok + mb_iconwarning);
   exit;
 end;

 frmprincipal.tag := frmprincipal.tag - 1;
 if frmprincipal.tag = 0 then frmprincipal.coolbarcadastro.visible := false;
 frmprincipal.mnualuno.enabled := true;
 frmprincipal.btnaluno.enabled := true;
 frmprincipal.btncaixa.enabled := true;
 frmprincipal.mnucaixa.enabled := true;
 frmprincipal.btnlanc.enabled  := true;
 frmprincipal.mnulanc.enabled  := true;

 action   := cafree;
 frmaluno := nil;

 dtmdados.qrycaixa.filtered := false;
end;

procedure TfrmAluno.Panel4Exit(Sender: TObject);
begin
 panel4.Color := clbtnface;
end;

procedure TfrmAluno.Panel4Enter(Sender: TObject);
begin
 panel4.Color := clcream;
end;

procedure TfrmAluno.Panel5Enter(Sender: TObject);
begin
 panel5.Color := clcream;
end;

procedure TfrmAluno.Panel5Exit(Sender: TObject);
begin
 panel5.Color := clbtnface;
end;

procedure TfrmAluno.FormShow(Sender: TObject);
begin
 top  := 0;
 left := 0;

 with frmprincipal do
 begin
   dsform    := frmaluno;
   dstable   := dtmdados.qryaluno;
   Campo1    := 'codaluno';
   Campo2    := 'nome';
   Tabela    := 'Aluno';
   instrucao := 'select * from aluno';
 end;

 if dtmdados.qryaluno.recordcount = 0 then
 begin
   frmprincipal.toolbtnexcluir.enabled   := false;
   frmprincipal.toolbtnalterar.enabled   := false;
   frmprincipal.toolbtnlocalizar.enabled := false;
 end;

 panel1.enabled := false;
 panel2.enabled := false;

 dtmdados.qryAluno.Refresh;
end;

procedure TfrmAluno.Panel6Exit(Sender: TObject);
begin
 panel6.Color := clbtnface;
end;

procedure TfrmAluno.Panel6Enter(Sender: TObject);
begin
 panel6.Color := clcream;
end;

procedure TfrmAluno.Panel7Enter(Sender: TObject);
begin
 panel7.Color := clcream;
end;

procedure TfrmAluno.Panel7Exit(Sender: TObject);
begin
 panel7.Color := clbtnface;
end;

procedure TfrmAluno.dbeAlunoEnter(Sender: TObject);
begin
 dbealuno.Color := clcream;
end;

procedure TfrmAluno.dbeAlunoExit(Sender: TObject);
begin
 dbealuno.Color := clwindow;
end;

procedure TfrmAluno.dbcModalidadeCloseUp(Sender: TObject);
begin
 if dbcmodalidade.Text = 'KUNG FU' then
 begin
   lblgraduacao.visible := true;
   dbcgraduacao.visible := true;
 end
 else
 begin
   lblgraduacao.visible := false;
   dbcgraduacao.visible := false;
 end;
end;

procedure TfrmAluno.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
 case key of
  38: SelectNext(ActiveControl,False,True);
  40: SelectNext(ActiveControl,True,True);
  13: SelectNext(ActiveControl,True,True);
  27: close;
 end;

 //Localizar
 if (key = 114) and ((dtmdados.qryaluno.State = dsbrowse) or (dtmdados.qryaluno.State = dsinactive)) then frmprincipal.toolbtnlocalizar.click;
end;

procedure TfrmAluno.Panel11Enter(Sender: TObject);
begin
 panel11.Color := clcream;
end;

procedure TfrmAluno.Panel11Exit(Sender: TObject);
begin
 panel11.Color := clbtnface;
end;

procedure TfrmAluno.imgFotoClick(Sender: TObject);
begin
 popfoto.Popup(mouse.CursorPos.X, mouse.CursorPos.Y);
end;

procedure TfrmAluno.ApplicationEvents1Hint(Sender: TObject);
begin
 if dtmdados.qryAluno.state <> dsinactive then
  imgfoto.Hint := dtmdados.qryAlunoFoto.AsString;
end;

procedure TfrmAluno.mnuInserirClick(Sender: TObject);
begin
 opcFoto.Execute;
 imgFoto.Picture.LoadFromFile(opcFoto.FileName);
 dtmdados.qryAlunoFoto.AsString := opcFoto.FileName;
end;

procedure TfrmAluno.mnuExcluirClick(Sender: TObject);
begin
 imgFoto.Picture := nil;
 dtmdados.qryAlunoFoto.AsString := '';
end;

procedure TfrmAluno.imgFotoDblClick(Sender: TObject);
begin
 if dtmdados.qryAluno.state <> dsbrowse then
 begin
   opcFoto.Execute;
   imgFoto.Picture.LoadFromFile(opcFoto.FileName);
   dtmdados.qryAlunoFoto.AsString := opcFoto.FileName;
 end;
end;

procedure TfrmAluno.dbeMultaExit(Sender: TObject);
begin
 if (dtmdados.qryCaixa.State = dsinsert) or (dtmdados.qryCaixa.State = dsedit) then
   dtmdados.qryCaixaValor.AsCurrency := dtmdados.qryCaixaValor.AsCurrency + dtmdados.qryCaixaMulta.AsCurrency;
end;

procedure TfrmAluno.dbeDescontoExit(Sender: TObject);
begin
 if (dtmdados.qryCaixa.State = dsinsert) or (dtmdados.qryCaixa.State = dsedit) then
   dtmdados.qryCaixaValor.AsCurrency := dtmdados.qryCaixaValor.AsCurrency - dtmdados.qryCaixaDesconto.AsCurrency;
end;

procedure TfrmAluno.dbeAcrescimoExit(Sender: TObject);
begin
 if (dtmdados.qryCaixa.State = dsinsert) or (dtmdados.qryCaixa.State = dsedit) then
   dtmdados.qryCaixaValor.AsCurrency := dtmdados.qryCaixaValor.AsCurrency + dtmdados.qryCaixaAcrescimo.AsCurrency;
end;

end.
