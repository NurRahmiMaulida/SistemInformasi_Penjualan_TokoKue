unit menu_utama;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    btn7: TButton;
    btn8: TButton;
    btn9: TButton;
    procedure btn3Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses data_customer, data_supplier, Unit5;

{$R *.dfm}

procedure TForm2.btn3Click(Sender: TObject);
begin
 hide;
Form3.Show;
end;

procedure TForm2.btn5Click(Sender: TObject);
begin
hide;
form4.show;
end;

procedure TForm2.btn4Click(Sender: TObject);
begin
hide;
form5.show;
end;

end.
