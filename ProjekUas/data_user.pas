unit data_user;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, Grids, DBGrids, Buttons,
  StdCtrls;

type
  TForm6 = class(TForm)
    lbl1: TLabel;
    lbl4l: TLabel;
    lbl4l1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    cbb1: TComboBox;
    edt1: TEdit;
    btn1: TButton;
    btn7: TBitBtn;
    dbgrd1: TDBGrid;
    edt2: TEdit;
    edt3: TEdit;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    frxreport1: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    edt7: TEdit;
    procedure posisiawal;
    procedure editbersih;
    procedure editenable;
    procedure editdisable;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
  id : string;

implementation


uses
  menu_utama;
{$R *.dfm}


procedure TForm6.editbersih;
begin
edt1.Text := '';
edt2.Text :='';
edt3.Text :='';
edt4.Text :='';
cbb1.Text := '';
edt5.Text :='';
edt6.Text :='';
edt7.Text :='';
end;

procedure TForm6.editdisable;
begin
edt1.Enabled:= False;
edt2.Enabled:= False;
edt3.Enabled:= False;
edt4.Enabled:= False;
cbb1.Enabled:= False;
edt5.Enabled:= False;
edt6.Enabled:= False;
edt7.Enabled:= False;
end;

procedure TForm6.editenable;
begin
edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
edt4.Enabled:= True;
cbb1.Enabled:= True;
edt5.Enabled:= True;
edt6.Enabled:= True;
edt7.Enabled:= True;
end;

procedure TForm6.posisiawal;
begin
editbersih;

editdisable;

btn1.Enabled := True;
btn2.Enabled := False ;
btn3.Enabled := False ;
btn4.Enabled := False ;
btn5.Enabled := True;
end;

procedure TForm6.btn1Click(Sender: TObject);
begin
editbersih;

btn1.Enabled:= false;
btn2.Enabled:= True;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= True;
editenable;
end;

procedure TForm6.btn2Click(Sender: TObject);
begin
//SIMPAN

if(edt1.Text = '')or(edt2.Text = '')or (edt3.Text = '') or (edt4.Text = '') or (cbb1.Text = '') or (edt5.Text = '')or (edt6.Text = '')t or (edt7.Text = '')hen
begin
  ShowMessage('DATA TIDAK BOLEH KOSONG !');
end else
if(zqry1.Locate('nik',edt1.Text,[]))then
begin
  ShowMessage('Data user sudah ada');
  posisiawal;
end else
begin
zqry1.sql.clear;
zqry1.sql.Add('insert into user values(null,"'+edt1.Text+'","'+edt2.Text+'","'+edt3.text+'","'+edt4.text+'","'+cbb1.text+'","'+edt5.text+'","'+edt6.text+'","'+edt7.text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from user');
zqry1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!!');
posisiawal;
end;
end;

procedure TForm6.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm6.btn3Click(Sender: TObject);
begin
begin
id:=dbgrd1.DataSource.DataSet.FieldByName('id').AsString;


zqry1.SQL.Clear;
zqry1.SQL.Add('Update user set nik= "'+edt1.Text+'", nama_lengkap = "'+edt2.Text+'",username = "'+edt3.Text+'", password= "'+edt4.Text+'", jk= "'+cbb1.Text+'", telp= "'+edt5.Text+'", email= "'+edt6.Text+'", alamat= "'+edt7.Text+'"  where id ="'+id+'"');
zqry1.ExecSQL;
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from user');
zqry1.Open;
posisiawal;
end;
end;

procedure TForm6.btn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=dbgrd1.DataSource.DataSet.FieldByName('id').AsString;

zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from user where id ="'+id+'"');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from user');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawal;
end;
end;

procedure TForm6.dbgrd1CellClick(Column: TColumn);
begin
editenable;

btn1.Enabled:= true;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;

id:=zqry1.Fields[0].AsString;

edt1.Text:= zqry1.FieldList[1].AsString;
edt2.Text:= zqry1.FieldList[2].AsString;
edt3.Text:= zqry1.FieldList[3].AsString;
edt4.Text:= zqry1.FieldList[4].AsString;
cbb1.Text:= zqry1.FieldList[5].AsString;
edt5.Text:= zqry1.FieldList[6].AsString;
edt6.Text:= zqry1.FieldList[7].AsString;
edt7.Text:= zqry1.FieldList[8].AsString;
end;

procedure TForm6.FormShow(Sender: TObject);
begin
posisiawal;
end;

end.
