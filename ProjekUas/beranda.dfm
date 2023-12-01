object Form13: TForm13
  Left = 192
  Top = 152
  Width = 1044
  Height = 540
  Caption = 'BERANDA'
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 112
    Top = 176
    Width = 835
    Height = 32
    Caption = 'SELAMAT DATANG DI SISTEM INFORMASI PENJUALAN TOKO KUE :)'
    Color = clSkyBlue
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Stencil'
    Font.Style = [fsItalic]
    ParentColor = False
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 400
    Top = 248
    Width = 225
    Height = 32
    Caption = 'RAHMI BAKERY'
    Color = clSkyBlue
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Stencil'
    Font.Style = [fsItalic]
    ParentColor = False
    ParentFont = False
  end
  object btn1: TButton
    Left = 856
    Top = 440
    Width = 139
    Height = 41
    Caption = 'MENUKU >>'
    Font.Charset = OEM_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Terminal'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 32
    Top = 440
    Width = 193
    Height = 41
    Caption = '<< HALAMAN LOGIN'
    Font.Charset = OEM_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Terminal'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btn2Click
  end
end
