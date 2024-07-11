object kustomer: Tkustomer
  Left = 230
  Top = 185
  Width = 869
  Height = 502
  Align = alClient
  Caption = 'KUSTOMER'
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 16
    Top = 16
    Width = 25
    Height = 18
    Caption = 'NIK'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 16
    Top = 56
    Width = 42
    Height = 18
    Caption = 'Nama'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 16
    Top = 96
    Width = 56
    Height = 18
    Caption = 'No. Telp'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 16
    Top = 136
    Width = 40
    Height = 18
    Caption = 'Email'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 16
    Top = 216
    Width = 58
    Height = 18
    Caption = 'Member'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 592
    Top = 216
    Width = 57
    Height = 18
    Caption = 'Diskon :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lbl7: TLabel
    Left = 672
    Top = 216
    Width = 104
    Height = 18
    Caption = 'Terisi Otomatis'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lbl8: TLabel
    Left = 16
    Top = 176
    Width = 49
    Height = 18
    Caption = 'Alamat'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lbl9: TLabel
    Left = 16
    Top = 472
    Width = 117
    Height = 18
    Caption = 'Masukkan Name'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object edt1: TEdit
    Left = 96
    Top = 16
    Width = 417
    Height = 26
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 96
    Top = 56
    Width = 417
    Height = 26
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 96
    Top = 96
    Width = 417
    Height = 26
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 96
    Top = 136
    Width = 417
    Height = 26
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object cbb1: TComboBox
    Left = 96
    Top = 216
    Width = 417
    Height = 26
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ItemHeight = 18
    ParentFont = False
    TabOrder = 4
    Text = '-- Pilih --'
    Items.Strings = (
      'Yes'
      'No')
  end
  object btn1: TButton
    Left = 16
    Top = 256
    Width = 81
    Height = 33
    Caption = 'Baru'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 120
    Top = 256
    Width = 81
    Height = 33
    Caption = 'Simpan'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 224
    Top = 256
    Width = 81
    Height = 33
    Caption = 'Edit'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 328
    Top = 256
    Width = 81
    Height = 33
    Caption = 'Hapus'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 432
    Top = 256
    Width = 81
    Height = 33
    Caption = 'Batal'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = btn5Click
  end
  object edt5: TEdit
    Left = 96
    Top = 176
    Width = 417
    Height = 26
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
  end
  object dbgrdkustomer: TDBGrid
    Left = 16
    Top = 304
    Width = 849
    Height = 153
    DataSource = dmkustomer.dskustomer
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrdkustomerCellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nik'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telp'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'email'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'alamat'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'member'
        Visible = True
      end>
  end
  object edt6: TEdit
    Left = 152
    Top = 472
    Width = 417
    Height = 26
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    OnChange = edt6Change
  end
  object btn6: TButton
    Left = 696
    Top = 256
    Width = 81
    Height = 33
    Caption = 'Cetak'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
    OnClick = btn6Click
  end
end
