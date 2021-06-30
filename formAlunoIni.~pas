unit formAlunoIni;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, ComCtrls, StdCtrls;

type
  TfrmAlunoIni = class(TForm)
    TabControl1: TTabControl;
    Panel1: TPanel;
    dbgAlunoIni: TDBGrid;
    lblContMod: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure dbgAlunoIniDblClick(Sender: TObject);
    procedure dbgAlunoIniDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAlunoIni: TfrmAlunoIni;

implementation

uses formdados, formAluno, formPrincipal;

{$R *.dfm}

procedure TfrmAlunoIni.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 action      := cafree;
 frmalunoini := nil;
end;

procedure TfrmAlunoIni.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
 case key of
  38: SelectNext(ActiveControl, False, True);
  40: SelectNext(ActiveControl, True, True);
  13: SelectNext(ActiveControl, True, True);
 end;
end;

procedure TfrmAlunoIni.FormShow(Sender: TObject);
begin
 top  := 0;
 left := 0;

 dtmdados.qryAluno.First;
end;

procedure TfrmAlunoIni.dbgAlunoIniDblClick(Sender: TObject);
begin
 if frmaluno = nil then
 begin
   dtmdados.qryAluno.Locate('codaluno', dtmdados.qryalunoiniCodAluno.AsInteger, []);
   frmprincipal.btnaluno.click;
 end;
end;

procedure TfrmAlunoIni.dbgAlunoIniDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
 if dtmdados.qryAlunoiniStatus.asstring = 'PENDENTE' then
 begin
   dbgAlunoIni.Canvas.Brush.Color := $00E6E6FF; //vermelho
   dbgAlunoIni.Canvas.Font.Style  := [fsbold];
   dbgAlunoIni.Canvas.Font.Color  := clred;
 end
 else if dtmdados.qryAlunoiniStatus.asstring = 'REGULAR' then
 begin
   dbgAlunoIni.Canvas.Brush.Color := $00FFE8E8; //azul
   dbgAlunoIni.Canvas.Font.Style  := [];
   dbgAlunoIni.Canvas.Font.Color  := clblack;
 end;

  dbgAlunoIni.DefaultDrawDataCell(rect, dbgAlunoIni.columns[datacol].field, state);
end;

end.
