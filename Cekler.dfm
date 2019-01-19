object frmCekler: TfrmCekler
  Left = 0
  Top = 0
  Caption = 'frmCekler'
  ClientHeight = 307
  ClientWidth = 912
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
  object GridCek: TcxGridKadir
    Left = 0
    Top = 0
    Width = 912
    Height = 307
    Align = alClient
    TabOrder = 0
    ExcelFileName = 'Cekler'
    ExceleGonder = True
    object GridCekler: TcxGridDBBandedTableView
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnHiding = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GridLines = glHorizontal
      OptionsView.GroupByBox = False
      OptionsView.GroupByHeaderLayout = ghlHorizontal
      Bands = <
        item
          Caption = 'Cekler'
          Width = 872
        end>
      object GridCeklerid: TcxGridDBBandedColumn
        DataBinding.FieldName = 'id'
        Visible = False
        Width = 20
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object GridCeklerTarih: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Tarih'
        HeaderAlignmentHorz = taCenter
        Width = 73
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object GridCeklerVadeTarihi: TcxGridDBBandedColumn
        Caption = 'Vade Tarihi'
        DataBinding.FieldName = 'VadeTarihi'
        HeaderAlignmentHorz = taCenter
        Width = 78
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object GridCeklertutar: TcxGridDBBandedColumn
        Caption = 'Mebla'#287
        DataBinding.FieldName = 'tutar'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00'
        HeaderAlignmentHorz = taCenter
        Width = 84
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object GridCekleraciklama: TcxGridDBBandedColumn
        Caption = 'A'#231'iklama'
        DataBinding.FieldName = 'aciklama'
        HeaderAlignmentHorz = taCenter
        Width = 198
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object GridCeklerTip: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Tip'
        HeaderAlignmentHorz = taCenter
        Width = 24
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object GridCeklerDurum: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Durum'
        Visible = False
        Width = 51
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object GridCeklersirketKod: TcxGridDBBandedColumn
        DataBinding.FieldName = 'sirketKod'
        Visible = False
        Width = 22
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object GridCeklerTedarikciKod: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TedarikciKod'
        Visible = False
        Width = 22
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object GridCeklerkod: TcxGridDBBandedColumn
        DataBinding.FieldName = 'kod'
        Visible = False
        Width = 23
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object GridCeklertanimi: TcxGridDBBandedColumn
        Caption = 'Durum'
        DataBinding.FieldName = 'tanimi'
        HeaderAlignmentHorz = taCenter
        Width = 65
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object GridCeklerkimden: TcxGridDBBandedColumn
        Caption = 'Kimden'
        DataBinding.FieldName = 'kimden'
        HeaderAlignmentHorz = taCenter
        Width = 189
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object GridCeklerkime: TcxGridDBBandedColumn
        Caption = 'Kime'
        DataBinding.FieldName = 'kime'
        HeaderAlignmentHorz = taCenter
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object GridCeklerevrakNo: TcxGridDBBandedColumn
        Caption = 'Evrak No'
        DataBinding.FieldName = 'evrakNo'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
    end
    object GridCekLevel1: TcxGridLevel
      GridView = GridCekler
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
    Left = 200
    Top = 184
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 136
    Top = 184
    object Y1: TMenuItem
      Tag = -20
      Caption = 'Tahsil Et'
      ImageIndex = 14
      OnClick = cxButtonCClick
    end
    object T1: TMenuItem
      Tag = -21
      Caption = 'Tahsilat '#304'ptal'
      ImageIndex = 16
      OnClick = cxButtonCClick
    end
    object E1: TMenuItem
      Tag = 9997
      Caption = 'Excele G'#246'nder'
      ImageIndex = 75
      OnClick = cxButtonCClick
    end
    object E2: TMenuItem
      Tag = -22
      Caption = 'Yeni '#199'ek Tan'#305'mla'
      ImageIndex = 30
      OnClick = cxButtonCClick
    end
  end
  object DataSource1: TDataSource
    Left = 80
    Top = 104
  end
end
