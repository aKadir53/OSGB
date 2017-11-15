object frmDosyadanPaket: TfrmDosyadanPaket
  Left = 184
  Top = 158
  BorderStyle = bsDialog
  Caption = 'frmDosyadanPaket'
  ClientHeight = 446
  ClientWidth = 688
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 25
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 25
    Width = 688
    Height = 421
    Align = alClient
    TabOrder = 1
    object txtinfo: TLabel
      Left = 5
      Top = 385
      Width = 3
      Height = 13
      Caption = '.'
      FocusControl = Button1
    end
    object Label1: TLabel
      Left = 233
      Top = 14
      Width = 52
      Height = 13
      Caption = 'SQL '#304#231'eri'#287'i'
    end
    object dosyalar: TFileListBox
      Left = 4
      Top = 132
      Width = 225
      Height = 249
      ItemHeight = 13
      Mask = '*.sql'
      TabOrder = 0
      OnChange = dosyalarChange
      OnClick = dosyalarClick
    end
    object dizin: TDirectoryListBox
      Left = 4
      Top = 28
      Width = 225
      Height = 97
      FileList = dosyalar
      ItemHeight = 16
      TabOrder = 1
    end
    object surucu: TDriveComboBox
      Left = 4
      Top = 4
      Width = 225
      Height = 19
      DirList = dizin
      TabOrder = 2
    end
    object Button1: TButton
      Left = 152
      Top = 384
      Width = 75
      Height = 25
      Caption = 'Paketle'
      TabOrder = 3
      OnClick = Button1Click
    end
    object ComboBox1: TComboBox
      Left = 75
      Top = 387
      Width = 73
      Height = 21
      ItemHeight = 13
      TabOrder = 4
      OnChange = ComboBox1Change
      Items.Strings = (
        ''
        'Diyaliz'
        'Klinik'
        'FTR'
        'RO')
    end
    object txtSQL: TMemo
      Left = 232
      Top = 29
      Width = 449
      Height = 354
      Lines.Strings = (
        '')
      TabOrder = 5
    end
  end
end
