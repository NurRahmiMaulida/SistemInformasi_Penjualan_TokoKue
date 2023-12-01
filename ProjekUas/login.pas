unit login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection;

type
  TForm1 = class(TForm)
    lbl4l: TLabel;
    lbl4l1: TLabel;
    lbl1: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btnb1: TButton;
    btn1: TButton;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    procedure btn1Click(Sender: TObject);
    procedure btnb1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses menu_utama, daftar_pengguna, beranda;

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
begin
with zqry1 do begin
SQL.Clear;
SQL.Add('select * from user where username='+QuotedStr(edt1.Text));
open;
end;
//jika tidak ditemukan data yang dicari
//maka tampilkan pesan

if zqry1.RecordCount=0
then
Application.MessageBox('Maaf user name tidak ditemukan','informasi',MB_OK or MB_ICONINFORMATION)
else
begin
if zqry1.FieldByName('password').AsString<>Edt2.Text
then
Application.MessageBox('Pastikan password yang anda masukkan benar','error',MB_OK or MB_ICONERROR)
else
begin
hide;
Form13.Show;
end;
end;

end;


end;

procedure TForm1.btnb1Click(Sender: TObject);
begin
Hide;
  form10.show;
end;

end.
