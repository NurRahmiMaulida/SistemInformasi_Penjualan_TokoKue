object Form6: TForm6
  Left = 192
  Top = 152
  Width = 1044
  Height = 540
  Caption = 'DATA USER'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 288
    Top = 24
    Width = 122
    Height = 28
    Caption = 'DATA USER'
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
    Height = 13
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
  object btn2: TButton
    Left = 169
    Top = 408
    Width = 75
    Height = 32
    Caption = 'SIMPAN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Stencil'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 257
    Top = 408
    Width = 75
    Height = 32
    Caption = 'EDIT'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Stencil'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 345
    Top = 408
    Width = 75
    Height = 32
    Caption = 'HAPUS'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Stencil'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 441
    Top = 408
    Width = 75
    Height = 32
    Caption = 'BATAL'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Stencil'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 529
    Top = 408
    Width = 80
    Height = 32
    Caption = 'LAPORAN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Stencil'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object cbb1: TComboBox
    Left = 184
    Top = 232
    Width = 385
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    Items.Strings = (
      'LAKI-LAKI'
      'PEREMPUAN')
  end
  object edt1: TEdit
    Left = 184
    Top = 72
    Width = 377
    Height = 21
    TabOrder = 6
  end
  object btn1: TButton
    Left = 80
    Top = 408
    Width = 75
    Height = 33
    Caption = 'BARU'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Stencil'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = btn1Click
  end
  object btn7: TBitBtn
    Left = 32
    Top = 16
    Width = 121
    Height = 33
    Caption = 'KEMBALI KE MENU'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Stencil'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object dbgrd1: TDBGrid
    Left = 56
    Top = 456
    Width = 569
    Height = 177
    DataSource = ds1
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object edt2: TEdit
    Left = 184
    Top = 112
    Width = 377
    Height = 21
    TabOrder = 10
  end
  object edt3: TEdit
    Left = 184
    Top = 152
    Width = 377
    Height = 21
    TabOrder = 11
  end
  object edt4: TEdit
    Left = 184
    Top = 192
    Width = 377
    Height = 21
    TabOrder = 12
  end
  object edt5: TEdit
    Left = 184
    Top = 272
    Width = 377
    Height = 21
    TabOrder = 13
  end
  object edt6: TEdit
    Left = 184
    Top = 312
    Width = 377
    Height = 21
    TabOrder = 14
  end
  object edt7: TEdit
    Left = 184
    Top = 344
    Width = 377
    Height = 21
    TabOrder = 15
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
    Left = 616
    Top = 16
  end
  object zqry1: TZQuery
    Connection = con1
    SQL.Strings = (
      'select * from user')
    Params = <>
    Left = 616
    Top = 72
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 616
    Top = 120
  end
  object frxreport1: TfrxReport
    Version = '4.0.11'
    DataSet = frxdbdtst1
    DataSetName = 'frxdbdtst1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45100.692737199100000000
    ReportOptions.LastChange = 45105.709129131900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 664
    Top = 32
    Datasets = <
      item
        DataSet = frxdbdtst1
        DataSetName = 'frxdbdtst1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      Frame.Style = fsDouble
      object ReportTitle1: TfrxReportTitle
        Height = 86.929190000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo1: TfrxMemoView
          Left = 325.039580000000000000
          Top = 30.236240000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'LAPORAN DATA KELAS')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 18.897650000000000000
        Top = 128.504020000000000000
        Width = 793.701300000000000000
        object Memo2: TfrxMemoView
          Left = 113.385900000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'ID')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 151.181200000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'NAMA KELAS')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 449.764070000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'JURUSAN')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 207.874150000000000000
        Width = 793.701300000000000000
        DataSet = frxdbdtst1
        DataSetName = 'frxdbdtst1'
        RowCount = 0
        object Memo5: TfrxMemoView
          Left = 113.385900000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[line]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 151.181200000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          DataField = 'nama'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."nama"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 449.764070000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          DataField = 'jurusan'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."jurusan"]')
          ParentFont = False
        end
      end
    end
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxdbdtst1'
    CloseDataSource = False
    DataSet = zqry1
    Left = 664
    Top = 88
  end
end
