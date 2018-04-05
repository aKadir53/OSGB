object frmKasaBanka: TfrmKasaBanka
  Left = 0
  Top = 0
  Caption = 'frmKasaBanka'
  ClientHeight = 307
  ClientWidth = 790
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
  object GridKasa: TcxGridKadir
    Left = 0
    Top = 0
    Width = 790
    Height = 307
    Align = alClient
    TabOrder = 0
    ExcelFileName = 'Cekler'
    ExceleGonder = True
    object GridKasaHareket: TcxGridDBBandedTableView
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
          Caption = 'Kasa Defteri'
          Width = 575
        end>
      object GridKasaHareketTarih: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Tarih'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 86
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object GridKasaHareketBorc: TcxGridDBBandedColumn
        Caption = 'Giren'
        DataBinding.FieldName = 'Borc'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 74
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object GridKasaHareketAlacak: TcxGridDBBandedColumn
        Caption = #199#305'kan'
        DataBinding.FieldName = 'Alacak'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 72
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object GridKasaHareketbakiye: TcxGridDBBandedColumn
        Caption = 'Devreden'
        DataBinding.FieldName = 'bakiye'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 75
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object GridKasaHareketaciklama: TcxGridDBBandedColumn
        Caption = #304#351'lem A'#231#305'klamas'#305
        DataBinding.FieldName = 'aciklama'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 268
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
    end
    object GridKasaLevel1: TcxGridLevel
      GridView = GridKasaHareket
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
    object E1: TMenuItem
      Tag = 9997
      Caption = 'Excele G'#246'nder'
      OnClick = cxButtonCClick
    end
  end
  object DataSource1: TDataSource
    Left = 64
    Top = 208
  end
end
