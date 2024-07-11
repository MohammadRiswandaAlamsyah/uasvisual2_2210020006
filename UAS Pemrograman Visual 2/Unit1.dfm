object dmkustomer: Tdmkustomer
  OldCreateOrder = False
  Left = 1048
  Top = 125
  Height = 150
  VerticalOffset = 36
  Width = 215
  object conkustomer: TZConnection
    ControlsCodePage = cGET_ACP
    Properties.Strings = (
      'RawStringEncoding=DB_CP')
    Connected = True
    DisableSavepoints = False
    HostName = 'localhost'
    Port = 3306
    Database = 'penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'D:\Documents\Documents\College\Lainnya\Pemrograman Visual\UAS Pe' +
      'mrograman Visual 2\libmysql.dll'
    Left = 16
    Top = 24
  end
  object zqrykustomer: TZQuery
    Connection = conkustomer
    Active = True
    SQL.Strings = (
      'SELECT * FROM kustomer')
    Params = <>
    Left = 88
    Top = 24
  end
  object dskustomer: TDataSource
    DataSet = zqrykustomer
    Left = 152
    Top = 24
  end
  object frxdbdtstkustomer: TfrxDBDataset
    UserName = 'frxdbdtstkustomer'
    CloseDataSource = False
    DataSet = zqrykustomer
    Left = 16
    Top = 80
  end
  object frxrprtkustomer: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45484.693660544000000000
    ReportOptions.LastChange = 45484.739367546300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 88
    Top = 82
    Datasets = <
      item
        DataSet = frxdbdtstkustomer
        DataSetName = 'frxdbdtstkustomer'
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
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      object ReportTitle1: TfrxReportTitle
        Height = 79.370130000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo1: TfrxMemoView
          Left = 283.464750000000000000
          Top = 30.236240000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'LAPORAN DATA KUSTOMER')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 68.031540000000000000
        Top = 120.944960000000000000
        Width = 793.701300000000000000
        object Memo3: TfrxMemoView
          Left = 71.811070000000000000
          Top = 49.133890000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NIK')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 185.196970000000000000
          Top = 49.133890000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Nama')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 325.039580000000000000
          Top = 49.133890000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'No. Telepon')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 438.425480000000000000
          Top = 49.133890000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Email')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 578.268090000000000000
          Top = 49.133890000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Alamat')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 718.110700000000000000
          Top = 49.133890000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Member')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 34.015770000000000000
          Top = 49.133890000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'No.')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 249.448980000000000000
        Width = 793.701300000000000000
        DataSet = frxdbdtstkustomer
        DataSetName = 'frxdbdtstkustomer'
        RowCount = 0
        object Memo2: TfrxMemoView
          Left = 34.015770000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Line#]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 71.811070000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtstkustomer."nik"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 185.196970000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtstkustomer."nama"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 325.039580000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtstkustomer."telp"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 438.425480000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtstkustomer."email"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 578.268090000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtstkustomer."alamat"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 718.110700000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtstkustomer."member"]')
          ParentFont = False
        end
      end
    end
  end
end
