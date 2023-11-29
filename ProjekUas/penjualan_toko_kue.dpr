program penjualan_toko_kue;

uses
  Forms,
  login in 'login.pas' {Form1},
  menu_utama in 'menu_utama.pas' {Form2},
  data_customer in 'data_customer.pas' {Form3},
  data_supplier in 'data_supplier.pas' {Form4},
  data_kategorii in 'data_kategorii.pas' {Form5},
  data_user in 'data_user.pas' {Form6};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.Run;
end.
