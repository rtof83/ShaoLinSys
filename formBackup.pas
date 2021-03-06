unit formBackup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, ComCtrls;

type
  TfrmBackup = class(TForm)
    TabControl1: TTabControl;
    Panel1: TPanel;
    btnFechar: TButton;
    lstBackup: TListBox;
    lblBackup: TLabel;
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure lblBackupDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBackup: TfrmBackup;

implementation

{$R *.dfm}

procedure TfrmBackup.btnFecharClick(Sender: TObject);
begin
 close;
end;

procedure TfrmBackup.FormShow(Sender: TObject);
begin
 left := 0;
 top  := 0;

 lblBackup.Caption := formatfloat('00', lstbackup.Count) + ' arquivos encontrados:';
end;

procedure TfrmBackup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 //Deleta arquivos com data superior a 6 dias
 if tag = 1 then
 begin
   while lstbackup.Count > 6 do
   begin
     deletefile(ExtractFilePath(Application.ExeName) + 'DB\' + lstbackup.Items.Strings[0]);
     lstbackup.Items.Delete(0);
   end;
 end;

 action := cafree;
end;

procedure TfrmBackup.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
 case key of
  38: SelectNext(ActiveControl,False,True);
  40: SelectNext(ActiveControl,True,True);
  27: close;
 end;
end;

procedure TfrmBackup.FormCreate(Sender: TObject);
var Rec: TSearchRec;
begin
 if FindFirst(ExtractFilePath(Application.ExeName) + 'DB\' + '*.bck', faAnyFile, Rec) = 0 then
 begin
   repeat
    lstBackup.Items.Add(rec.Name);
   until FindNext(Rec) <> 0;

   FindClose(Rec);
 end;
end;

procedure TfrmBackup.lblBackupDblClick(Sender: TObject);
begin
 showmessage(ExtractFilePath(Application.ExeName) + 'DB\' + lstbackup.Items.Strings[0]);
end;

end.
