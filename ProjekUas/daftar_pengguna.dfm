object Form10: TForm10
  Left = 109
  Top = 151
  Width = 1044
  Height = 540
  Caption = 'DAFTAR DATA PENGGUNA'
  Color = clBtnFace
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
    Top = 24
    Width = 261
    Height = 28
    Caption = 'DATA PENGGUNA BARU'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object lbl4l: TLabel
    Left = 40
    Top = 77
    Width = 21
    Height = 16
    Caption = 'NIK'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
  end
  object lbl4l1: TLabel
    Left = 40
    Top = 117
    Width = 103
    Height = 16
    Caption = 'NAMA LENGKAP'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 32
    Top = 77
    Width = 4
    Height = 16
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 40
    Top = 157
    Width = 74
    Height = 16
    Caption = 'USERNAME'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 40
    Top = 312
    Width = 39
    Height = 16
    Caption = 'EMAIL'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 40
    Top = 229
    Width = 15
    Height = 16
    Caption = 'JK'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 40
    Top = 269
    Width = 32
    Height = 16
    Caption = 'TELP'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
  end
  object lbl7: TLabel
    Left = 40
    Top = 349
    Width = 51
    Height = 16
    Caption = 'ALAMAT'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
  end
  object lbl8: TLabel
    Left = 40
    Top = 197
    Width = 76
    Height = 16
    Caption = 'PASSWORD'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Roboto'
    Font.Style = []
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
    Font.Height = -13
    Font.Name = 'Stencil'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object btn2: TBitBtn
    Left = 96
    Top = 392
    Width = 217
    Height = 49
    Caption = 'KEMBALI KEHALAMAN LOGIN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Stencil'
    Font.Style = []
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
