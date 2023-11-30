unit daftar_pengguna;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, StdCtrls, Buttons;

type
  TForm10 = class(TForm)
    lbl1: TLabel;
    lbl4l: TLabel;
    lbl4l1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    cbb1: TComboBox;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    edt7: TEdit;
    con1: TZConnection;
    zqry1: TZQuery;
    btn1: TBitBtn;
    btn2: TBitBtn;
    procedure posisiawal;
    procedure editbersih;
    procedure editenable;
    procedure editdisable;
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;
  id : string;

implementation

uses login;

{$R *.dfm}

procedure TForm10.editbersih;
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

procedure TForm10.editdisable;
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

procedure TForm10.editenable;
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

procedure TForm10.posisiawal;
begin
editbersih;

editdisable;

btn1.Enabled := True;
btn2.Enabled := True;
end;


procedure TForm10.btn2Click(Sender: TObject);
begin
   hide;
   Form1.show;
end;
  procedure TForm10.btn1Click(Sender: TObject);
begin
begin
 if edt3.Text ='' then
 begin
 ShowMessage('USERNAME TIDAK BOLEH KOSONG!');
  end else

  if edt4.Text ='' then
  begin
  ShowMessage('PASSWORD TIDAK BOLEH KOSONG!');
  end else

  if edt1.Text ='' then
  begin
  ShowMessage('NIK TIDAK BOLEH KOSONG!');
  end else

  if edt2.Text ='' then
  begin
  ShowMessage('NAMA LENGAP TIDAK BOLEH KOSONG!');
  end else

  if cbb1.Text ='' then
  begin
  ShowMessage('Jenis Kelamin TIDAK BOLEH KOSONG!');
  end else

  if edt5.Text ='' then
  begin
  ShowMessage('Telpon TIDAK BOLEH KOSONG!');
  end else

  if edt6.Text ='' then
  begin
  ShowMessage('Email TIDAK BOLEH KOSONG!');
  end else

  if edt7.Text ='' then
  begin
  ShowMessage('Alamat TIDAK BOLEH KOSONG!');
  end else


  begin
 zqry1.SQL.Clear;
 zqry1.SQL.Add
 ('insert into user values (null,"'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+cbb1.Text+'","'+edt5.Text+'","'+edt6.Text+'","'+edt7.Text+'")');
 zqry1.ExecSQL;

 zqry1.SQL.Clear;
 zqry1.SQL.Add('select * from user');
 zqry1.Open;
 if (edt1.Text= '')or (edt2.Text ='')or(edt3.Text= '')or (cbb1.Text ='') then
  begin
  ShowMessage('INPUTAN WAJIB DIISI!');
  end else
  if edt1.Text = zqry1.Fields[1].AsString then
  begin
  ShowMessage('DATA TIDAK ADA PERUBAHAN');
  end
end;
hide;
Form1.show;

end;
end;

end.
end.
