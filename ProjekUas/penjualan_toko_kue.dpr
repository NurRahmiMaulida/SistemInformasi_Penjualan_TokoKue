program penjualan_toko_kue;

uses
  Forms,
  login in 'login.pas' {Form1},
  menu_utama in 'menu_utama.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
