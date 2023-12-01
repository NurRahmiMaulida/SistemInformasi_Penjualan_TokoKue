object Form10: TForm10
  Left = 231
  Top = 143
  Width = 1104
  Height = 540
  Caption = 'DAFTAR DATA PENGGUNA'
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 208
    Top = 24
    Width = 321
    Height = 27
    Caption = 'DATA PENGGUNA BARU'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Snap ITC'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object lbl4l: TLabel
    Left = 40
    Top = 77
    Width = 25
    Height = 22
    Caption = 'NIK'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Bernard MT Condensed'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object lbl4l1: TLabel
    Left = 40
    Top = 117
    Width = 107
    Height = 22
    Caption = 'NAMA LENGKAP'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Bernard MT Condensed'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 32
    Top = 77
    Width = 5
    Height = 22
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Bernard MT Condensed'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 40
    Top = 157
    Width = 70
    Height = 22
    Caption = 'USERNAME'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Bernard MT Condensed'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 40
    Top = 312
    Width = 42
    Height = 22
    Caption = 'EMAIL'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Bernard MT Condensed'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 40
    Top = 229
    Width = 16
    Height = 22
    Caption = 'JK'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Bernard MT Condensed'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 40
    Top = 269
    Width = 35
    Height = 22
    Caption = 'TELP'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Bernard MT Condensed'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object lbl7: TLabel
    Left = 40
    Top = 349
    Width = 55
    Height = 22
    Caption = 'ALAMAT'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Bernard MT Condensed'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object lbl8: TLabel
    Left = 40
    Top = 197
    Width = 76
    Height = 22
    Caption = 'PASSWORD'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Bernard MT Condensed'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object cbb1: TComboBox
    Left = 184
    Top = 232
    Width = 385
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    Items.Strings = (
      'LAKI-LAKI'
      'PEREMPUAN')
  end
  object edt1: TEdit
    Left = 184
    Top = 72
    Width = 377
    Height = 21
    TabOrder = 1
  end
  object edt2: TEdit
    Left = 184
    Top = 112
    Width = 377
    Height = 21
    TabOrder = 2
  end
  object edt3: TEdit
    Left = 184
    Top = 152
    Width = 377
    Height = 21
    TabOrder = 3
  end
  object edt4: TEdit
    Left = 184
    Top = 192
    Width = 377
    Height = 21
    TabOrder = 4
  end
  object edt5: TEdit
    Left = 184
    Top = 272
    Width = 377
    Height = 21
    TabOrder = 5
  end
  object edt6: TEdit
    Left = 184
    Top = 312
    Width = 377
    Height = 21
    TabOrder = 6
  end
  object edt7: TEdit
    Left = 184
    Top = 344
    Width = 377
    Height = 21
    TabOrder = 7
  end
  object btn1: TBitBtn
    Left = 344
    Top = 392
    Width = 217
    Height = 49
    Caption = 'DAFTAR PENGGUNA BARU'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Stencil'
    Font.Style = [fsItalic]
    ParentFont = False
    TabOrder = 8
    OnClick = btn1Click
  end
  object btn2: TBitBtn
    Left = 88
    Top = 392
    Width = 233
    Height = 49
    Caption = 'KEMBALI KEHALAMAN LOGIN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Stencil'
    Font.Style = [fsItalic]
    ParentFont = False
    TabOrder = 9
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'RAHMIBAKERY'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'D:\DOKUMEN\SEMESTER 5\VISUAL 3\UAS VISUAL\ProjekUas\libmysql.dll'
    Left = 608
    Top = 144
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from user')
    Params = <>
    Left = 608
    Top = 200
  end
end
