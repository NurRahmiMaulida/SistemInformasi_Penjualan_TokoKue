object Form2: TForm2
  Left = 406
  Top = 223
  Width = 1044
  Height = 540
  Caption = 'MENU UTAMA'
  Color = clOlive
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 240
    Top = 56
    Width = 618
    Height = 36
    Caption = 'SISTEM INFORMASI PENJUALAN TOKO KUE'
    Color = clCream
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Showcard Gothic'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 456
    Top = 104
    Width = 159
    Height = 27
    Caption = 'RAHMI BAKERY'
    Color = clMoneyGreen
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Britannic Bold'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object btn1: TButton
    Left = 464
    Top = 152
    Width = 163
    Height = 33
    Caption = 'DATA USER'
    TabOrder = 0
  end
  object btn2: TButton
    Left = 464
    Top = 272
    Width = 161
    Height = 33
    Caption = 'DATA BARANG'
    TabOrder = 1
  end
  object btn3: TButton
    Left = 256
    Top = 152
    Width = 161
    Height = 33
    Caption = 'DATA CUSTOMER'
    TabOrder = 2
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 664
    Top = 208
    Width = 169
    Height = 33
    Caption = 'DATA KATEGORI'
    TabOrder = 3
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 664
    Top = 152
    Width = 169
    Height = 33
    Caption = 'DATA SUPPLIER'
    TabOrder = 4
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 464
    Top = 208
    Width = 161
    Height = 33
    Caption = 'DATA JUAL'
    TabOrder = 5
  end
  object btn7: TButton
    Left = 256
    Top = 216
    Width = 161
    Height = 33
    Caption = 'DATA BELI'
    TabOrder = 6
  end
  object btn8: TButton
    Left = 664
    Top = 272
    Width = 171
    Height = 33
    Caption = 'DATA DETAIL BELI'
    TabOrder = 7
  end
  object btn9: TButton
    Left = 256
    Top = 272
    Width = 161
    Height = 33
    Caption = 'DATA DETAIL JUAL'
    TabOrder = 8
  end
end
