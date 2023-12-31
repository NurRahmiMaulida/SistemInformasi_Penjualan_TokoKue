unit data_beli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frxClass, frxDBSet, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, StdCtrls,
  Buttons;

type
  TForm8 = class(TForm)
    lbl1: TLabel;
    lbl4l1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl5: TLabel;
    lbl8: TLabel;
    edt1: TEdit;
    btn7: TBitBtn;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    frxdbdtst1: TfrxDBDataset;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    btn1: TButton;
    dbgrd1: TDBGrid;
    frxreport1: TfrxReport;
    procedure posisiawal;
    procedure editbersih;
    procedure editenable;
    procedure editdisable;
    procedure btn7Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;
  id : string;

implementation

uses
  menu_utama;

{$R *.dfm}

procedure TForm8.editbersih;
begin
edt1.Text := '';
edt2.Text :='';
edt3.Text :='';
edt4.Text :='';

end;

procedure TForm8.editdisable;
begin
edt1.Enabled:= False;
edt2.Enabled:= False;
edt3.Enabled:= False;
edt4.Enabled:= False;
end;

procedure TForm8.editenable;
begin
edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
edt4.Enabled:= True;
end;

procedure TForm8.posisiawal;
begin
editbersih;

editdisable;

btn1.Enabled := True;
btn2.Enabled := False ;
btn3.Enabled := False ;
btn4.Enabled := False ;
btn5.Enabled := True;
end;

procedure TForm8.btn7Click(Sender: TObject);
begin
hide;
  form2.show;
end;

procedure TForm8.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm8.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm8.btn1Click(Sender: TObject);
begin
editbersih;

btn1.Enabled:= false;
btn2.Enabled:= True;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= True;
editenable;
end;

procedure TForm8.btn2Click(Sender: TObject);
begin
//SIMPAN

if(edt1.Text = '')or(edt2.Text = '')or (edt3.Text = '') or (edt4.Text = '') then
begin
  ShowMessage('DATA TIDAK BOLEH KOSONG !');
end else
if(zqry1.Locate('supplier_id',edt1.Text,[]))then
begin
  ShowMessage('Data beli sudah ada');
  posisiawal;
end else
begin
zqry1.sql.clear;
zqry1.sql.Add('insert into beli values(null,"'+edt1.Text+'","'+edt2.Text+'","'+edt3.text+'","'+edt4.text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from beli');
zqry1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!!');
posisiawal;
end;
end;

procedure TForm8.btn3Click(Sender: TObject);
begin
begin
id:=dbgrd1.DataSource.DataSet.FieldByName('id').AsString;

zqry1.SQL.Clear;
zqry1.SQL.Add('Update jual set supplier_id= "'+edt1.Text+'", tgl_beli= "'+edt2.Text+'",total = "'+edt3.Text+'", bayar= "'+edt4.Text+'" where id ="'+id+'"');
zqry1.ExecSQL;
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from beli');
zqry1.Open;
posisiawal;
end;
end;

procedure TForm8.btn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=dbgrd1.DataSource.DataSet.FieldByName('id').AsString;

zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from beli where id ="'+id+'"');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from beli');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawal;
end;
end;

procedure TForm8.btn6Click(Sender: TObject);
begin
frxreport1.ShowReport();
end;

procedure TForm8.dbgrd1CellClick(Column: TColumn);
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

end;

end.
