object frmCariHesapBorcAlacakToplam: TfrmCariHesapBorcAlacakToplam
  Left = 0
  Top = 0
  Caption = 'frmCariHesapBorcAlacakToplam'
  ClientHeight = 307
  ClientWidth = 715
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GridEkstre: TcxGridKadir
    Left = 0
    Top = 0
    Width = 715
    Height = 307
    Align = alClient
    TabOrder = 0
    ExceleGonder = False
    object GridList: TcxGridDBBandedTableView
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = ',0.00'
          Kind = skSum
          Column = GridListB
        end
        item
          Format = ',0.00'
          Kind = skSum
          Column = GridListA
        end
        item
          Format = ',0.00'
          Kind = skSum
          Column = GridListBK
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnSorting = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      OptionsView.GridLines = glHorizontal
      OptionsView.GroupByBox = False
      OptionsView.GroupByHeaderLayout = ghlHorizontal
      Bands = <
        item
          Caption = 'Cari Hesap Bor'#231' / Alacak Toplamlar'#305
          Width = 667
        end>
      object GridListcarikod: TcxGridDBBandedColumn
        Caption = 'Cari Kod'
        DataBinding.FieldName = 'carikod'
        HeaderAlignmentHorz = taCenter
        Width = 117
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object GridListtanimi: TcxGridDBBandedColumn
        Caption = 'Cari Hesap'
        DataBinding.FieldName = 'tanimi'
        HeaderAlignmentHorz = taCenter
        Width = 263
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object GridListB: TcxGridDBBandedColumn
        Caption = 'Bor'#231
        DataBinding.FieldName = 'B'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00'
        HeaderAlignmentHorz = taCenter
        Width = 95
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object GridListA: TcxGridDBBandedColumn
        Caption = 'Alacak'
        DataBinding.FieldName = 'A'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00'
        HeaderAlignmentHorz = taCenter
        Width = 97
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object GridListBK: TcxGridDBBandedColumn
        Caption = 'Bakiye'
        DataBinding.FieldName = 'BK'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00'
        HeaderAlignmentHorz = taCenter
        Width = 95
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
    end
    object GridEkstreLevel1: TcxGridLevel
      GridView = GridList
    end
  end
  object PersonelList: TListeAc
    ListeBaslik = 'Personel Listesi'
    TColcount = 3
    TColsW = '50,150,80'
    Table = 'PersonelKartView'
    Conn = DATALAR.ADOConnection2
    Filtercol = 0
    BaslikRenk = clBlack
    DipRenk = clBlack
    Kolonlar.Strings = (
      'dosyaNo'
      'Adi'
      'TCKIMLIKNO')
    KolonBasliklari.Strings = (
      'Dosya No'
      'Hasta Ad'#305
      'Tc Kimlik No')
    Calistir = fgEvet
    BiriktirmeliSecim = False
    SkinName = 'Lilian'
    Grup = False
    GrupCol = 0
    Left = 448
    Top = 160
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 352
    Top = 152
    object Y1: TMenuItem
      Caption = 'Yazd'#305'r'
      ImageIndex = 28
    end
  end
  object DataSource1: TDataSource
    Left = 216
    Top = 88
  end
end
