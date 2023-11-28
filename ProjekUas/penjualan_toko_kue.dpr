program penjualan_toko_kue;

uses
  Forms,
  login in 'login.pas' {Form1},
  menu_utama in 'menu_utama.pas' {Form2},
  data_customer in 'data_customer.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
