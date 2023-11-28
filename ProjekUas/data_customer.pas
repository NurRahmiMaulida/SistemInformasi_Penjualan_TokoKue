unit data_customer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, Grids, DBGrids, Buttons,
  StdCtrls;

type
  TForm3 = class(TForm)
    lbl1: TLabel;
    lbl4l: TLabel;
    lbl4l1: TLabel;
    lbl2: TLabel;
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
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    frxreport1: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    lbl3: TLabel;
    lbl4: TLabel;
    edt2: TEdit;
    edt3: TEdit;
    procedure posisiawal;
    procedure editbersih;
    procedure editenable;
    procedure editdisable;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn7Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  id : String;

implementation

uses
  menu_utama;

{$R *.dfm}

procedure TForm3.editbersih;
begin
edt1.Text := '';
cbb1.Text :='';
edt2.Text :='';
edt3.Text :='';
end;

procedure TForm3.editdisable;
begin
edt1.Enabled:= False;
cbb1.Enabled:= False;
edt2.Enabled:= False;
edt3.Enabled:= False;
end;

procedure TForm3.editenable;
begin
edt1.Enabled:= True;
cbb1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
end;

procedure TForm3.posisiawal;
begin
editbersih;

editdisable;

btn1.Enabled := True;
btn2.Enabled := False ;
btn3.Enabled := False ;
btn4.Enabled := False ;
btn5.Enabled := True;
end;


procedure TForm3.btn1Click(Sender: TObject);
begin
editbersih;

btn1.Enabled:= false;
btn2.Enabled:= True;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= True;
editenable;
end;

procedure TForm3.btn2Click(Sender: TObject);
begin
//SIMPAN

if(edt1.Text = '')or(cbb1.Text = '')or (edt2.Text = '') or (edt3.Text = '')then
begin
  ShowMessage('DATA TIDAK BOLEH KOSONG !');
end else
if(zqry1.Locate('nama_cust',edt1.Text,[]))then
begin
  ShowMessage('Data cust sudah ada');
  posisiawal;
end else
begin
zqry1.sql.clear;
zqry1.sql.Add('insert into customer values(null,"'+edt1.Text+'","'+cbb1.Text+'","'+edt2.text+'","'+edt3.text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from customer');
zqry1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!!');
posisiawal;
end;
end;

procedure TForm3.btn3Click(Sender: TObject);
begin
begin
id:=dbgrd1.DataSource.DataSet.FieldByName('id').AsString;


zqry1.SQL.Clear;
zqry1.SQL.Add('Update customer set nama_cust= "'+edt1.Text+'", jk = "'+cbb1.Text+'",alamat = "'+edt2.Text+'", telp = "'+edt3.Text+'" where id ="'+id+'"');
zqry1.ExecSQL;
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from customer');
zqry1.Open;
posisiawal;
end;
end;

procedure TForm3.btn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=dbgrd1.DataSource.DataSet.FieldByName('id').AsString;

zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from customer where id ="'+id+'"');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from customer');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawal;
end;
end;

procedure TForm3.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm3.btn6Click(Sender: TObject);
begin
frxreport1.ShowReport();
end;

procedure TForm3.dbgrd1CellClick(Column: TColumn);
begin
editenable;

btn1.Enabled:= true;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;

id:=zqry1.Fields[0].AsString;

edt1.Text:= zqry1.FieldList[1].AsString;
cbb1.Text:= zqry1.FieldList[2].AsString;
edt2.Text:= zqry1.FieldList[3].AsString;
edt3.Text:= zqry1.FieldList[4].AsString;
end;

procedure TForm3.btn7Click(Sender: TObject);
begin
Hide;
  Form2.Show;
end;


procedure TForm3.FormShow(Sender: TObject);
begin
 posisiawal;
end;

end.

