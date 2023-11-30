program penjualan_toko_kue;

uses
  Forms,
  login in 'login.pas' {Form1},
  menu_utama in 'menu_utama.pas' {Form2},
  data_customer in 'data_customer.pas' {Form3},
  data_supplier in 'data_supplier.pas' {Form4},
  data_kategorii in 'data_kategorii.pas' {Form5},
  data_user in 'data_user.pas' {Form6},
  data_jual in 'data_jual.pas' {Form7},
  data_beli in 'data_beli.pas' {Form8},
  data_detail_beli in 'data_detail_beli.pas' {Form9},
  daftar_pengguna in 'daftar_pengguna.pas' {Form10},
  data_detail_jual in 'data_detail_jual.pas' {Form11},
  data_barang in 'data_barang.pas' {Form12},
  beranda in 'beranda.pas' {Form13};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TForm10, Form10);
  Application.CreateForm(TForm11, Form11);
  Application.CreateForm(TForm12, Form12);
  Application.CreateForm(TForm13, Form13);
  Application.Run;
end.
