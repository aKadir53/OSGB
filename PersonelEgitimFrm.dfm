object frmPersonelEgitim: TfrmPersonelEgitim
  Left = 0
  Top = 0
  Caption = 'frmPersonelEgitim'
  ClientHeight = 446
  ClientWidth = 683
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
  object EgitimPersonel: TcxGridKadir
    Left = 178
    Top = 204
    Width = 500
    Height = 145
    TabOrder = 0
    ExceleGonder = False
    object GridList: TcxGridDBBandedTableView
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnSorting = False
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsView.GridLines = glHorizontal
      OptionsView.GroupByBox = False
      OptionsView.GroupByHeaderLayout = ghlHorizontal
      Bands = <
        item
          Caption = 'E'#287'itime Kat'#305'lan Personeller'
          Width = 482
        end>
      object GridListMuayeneSoru: TcxGridDBBandedColumn
        Caption = 'Dosya No.'
        DataBinding.FieldName = 'PersonelDosyaNo'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Properties.ReadOnly = True
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 55
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object GridListGrupKod: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PersonelAdiSoyadi'
        Options.Editing = False
        Width = 233
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object GridListColumn1: TcxGridDBBandedColumn
        Caption = #214'n Test'
        DataBinding.FieldName = 'onTest'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.AssignedValues.DisplayFormat = True
        HeaderAlignmentHorz = taCenter
        Width = 47
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object GridListColumn2: TcxGridDBBandedColumn
        Caption = 'Son Test'
        DataBinding.FieldName = 'sonTest'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.AssignedValues.DisplayFormat = True
        HeaderAlignmentHorz = taCenter
        Width = 43
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object GridListColumn3: TcxGridDBBandedColumn
        Caption = 'Sonu'#231
        DataBinding.FieldName = 'durum'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = DATALAR.global_img_list4
        Properties.Items = <
          item
            Description = 'Ba'#351'ar'#305'l'#305
            ImageIndex = 154
            Value = 1
          end
          item
            Description = 'Ba'#351'ar'#305's'#305'z'
            ImageIndex = 133
            Value = 0
          end>
        Properties.ReadOnly = False
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 104
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
    end
    object EgitimPersonelLevel1: TcxGridLevel
      GridView = GridList
    end
  end
  object Egitimci: TcxGridKadir
    Left = 16
    Top = 153
    Width = 425
    Height = 65
    TabOrder = 1
    ExceleGonder = False
    object EgitimciList: TcxGridDBBandedTableView
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnSorting = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GridLines = glHorizontal
      OptionsView.GroupByBox = False
      OptionsView.GroupByHeaderLayout = ghlHorizontal
      Bands = <
        item
          Caption = 'E'#287'itime Veren E'#287'itimciler'
          Width = 411
        end>
      object EgitimciListid: TcxGridDBBandedColumn
        DataBinding.FieldName = 'id'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object EgitimciListegitimciTuru: TcxGridDBBandedColumn
        Caption = 'Turu'
        DataBinding.FieldName = 'egitimciTuru'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'OSGB '#304#231'inden'
            ImageIndex = 0
            Value = 1
          end
          item
            Description = 'D'#305#351'ardan'
            Value = 2
          end>
        HeaderAlignmentHorz = taCenter
        Width = 51
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object EgitimciListegitimciUnvan: TcxGridDBBandedColumn
        Caption = 'Unvan'
        DataBinding.FieldName = 'egitimciUnvan'
        HeaderAlignmentHorz = taCenter
        Width = 52
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object EgitimciListegitimciTC: TcxGridDBBandedColumn
        Caption = 'TC'
        DataBinding.FieldName = 'egitimciTC'
        HeaderAlignmentHorz = taCenter
        Width = 111
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object EgitimciListegitimciAdiSoyadi: TcxGridDBBandedColumn
        Caption = 'AdiSoyadi'
        DataBinding.FieldName = 'egitimciAdiSoyadi'
        HeaderAlignmentHorz = taCenter
        Width = 197
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = EgitimciList
    end
  end
  object EgitimGrid: TcxGridKadir
    Left = -136
    Top = -16
    Width = 841
    Height = 139
    TabOrder = 2
    ExceleGonder = False
    object EgitimGridSatirlar: TcxGridDBBandedTableView
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnSorting = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GridLines = glHorizontal
      OptionsView.GroupByBox = False
      OptionsView.GroupByHeaderLayout = ghlHorizontal
      Bands = <
        item
          Caption = 'E'#287'itimler'
          Width = 818
        end>
      object EgitimGridSatirlarid: TcxGridDBBandedColumn
        DataBinding.FieldName = 'id'
        Width = 31
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object EgitimGridSatirlarBaslamaTarihi: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BaslamaTarihi'
        Width = 130
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object EgitimGridSatirlarBitisTarihi: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BitisTarihi'
        Width = 128
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object EgitimGridSatirlartanimi: TcxGridDBBandedColumn
        Caption = 'T'#252'r'#252
        DataBinding.FieldName = 'tanimi'
        Width = 42
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object EgitimGridSatirlarSirketTanimi: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SirketTanimi'
        Width = 164
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object EgitimGridSatirlarEgitimBilgi: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EgitimBilgi'
        Width = 249
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object EgitimGridSatirlarEgitimCSGBGonderimSonuc: TcxGridDBBandedColumn
        Caption = 'Gonderim Sonuc'
        DataBinding.FieldName = 'EgitimCSGBGonderimSonuc'
        Width = 85
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
    end
    object cxGridLevel2: TcxGridLevel
      GridView = EgitimGridSatirlar
    end
  end
  object EgitimAltDetayGrid: TcxGridKadir
    Left = 16
    Top = 305
    Width = 370
    Height = 130
    TabOrder = 3
    ExceleGonder = False
    object EgitimAltDetayGridSatir: TcxGridDBBandedTableView
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Edit.Visible = False
      Navigator.Buttons.Refresh.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      Navigator.Visible = True
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnSorting = False
      OptionsData.Inserting = False
      OptionsView.GridLines = glHorizontal
      OptionsView.GroupByBox = False
      OptionsView.GroupByHeaderLayout = ghlHorizontal
      Bands = <
        item
          Caption = 'E'#287'itim Alt Detaylar'#305
          Width = 362
        end>
      object EgitimAltDetayGridSatiregitimID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'egitimID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object EgitimAltDetayGridSatirkod: TcxGridDBBandedColumn
        Caption = 'Kod'
        DataBinding.FieldName = 'kod'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 43
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object EgitimAltDetayGridSatirid: TcxGridDBBandedColumn
        DataBinding.FieldName = 'id'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object EgitimAltDetayGridSatirtanimi: TcxGridDBBandedColumn
        Caption = 'Tan'#305'm'#305
        DataBinding.FieldName = 'tanimi'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 254
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object EgitimAltDetayGridSatirsure: TcxGridDBBandedColumn
        Caption = 'S'#252're(Dakika)'
        DataBinding.FieldName = 'sure'
        HeaderAlignmentHorz = taCenter
        Width = 65
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
    end
    object cxGridLevel3: TcxGridLevel
      GridView = EgitimAltDetayGridSatir
    end
  end
  object foto2: TcxImage
    Tag = -100
    Left = 447
    Top = 377
    Properties.GraphicClassName = 'TJPEGImage'
    Properties.PopupMenuLayout.MenuItems = [pmiCustom]
    Properties.PopupMenuLayout.CustomMenuItemCaption = 'Browserda G'#246'ster'
    Properties.ReadOnly = True
    Properties.OnCustomClick = Foto1PropertiesCustomClick
    TabOrder = 4
    Height = 44
    Width = 50
  end
  object Foto1: TcxImage
    Tag = -100
    Left = 392
    Top = 377
    Properties.GraphicClassName = 'TJPEGImage'
    Properties.PopupMenuLayout.MenuItems = [pmiCustom]
    Properties.PopupMenuLayout.CustomMenuItemCaption = 'Browserda G'#246'ster'
    Properties.ReadOnly = True
    Properties.OnCustomClick = Foto1PropertiesCustomClick
    TabOrder = 5
    Height = 44
    Width = 49
  end
  object btnEgitimGonderTek: TcxButtonKadir
    Left = 503
    Top = 355
    Width = 75
    Height = 25
    Caption = 'E'#287'itim G'#246'nder'
    TabOrder = 6
    NewButtonVisible = False
  end
  object btnEgitimGonderTekImzager: TcxButtonKadir
    Left = 584
    Top = 355
    Width = 75
    Height = 25
    Caption = 'G'#246'nder'
    TabOrder = 7
    Visible = False
    NewButtonVisible = False
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
    Left = 560
    Top = 40
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 400
    Top = 40
    object Y1: TMenuItem
      Caption = 'Yazd'#305'r'
      ImageIndex = 28
      object T1: TMenuItem
        Tag = -10
        Caption = 'E'#287'itime Kat'#305'lan T'#252'm Personel Sertifika Bas'#305'm'#305
        OnClick = cxButtonCClick
      end
      object S1: TMenuItem
        Tag = -20
        Caption = 'Se'#231'ili Personel Sertifika Bas'#305'm'#305
        OnClick = cxButtonCClick
      end
      object L1: TMenuItem
        Tag = -30
        Caption = 'E'#287'itime Kat'#305'lan Personel Listesi'
        OnClick = cxButtonCClick
      end
      object miEgitimBilgisiniIBYSyeGonder: TMenuItem
        Tag = -40
        Caption = 'E'#287'itim Bilgisini '#304'BYS'#39'ye G'#246'nder'
        OnClick = cxButtonCClick
      end
    end
  end
  object Egitimciler: TListeAc
    ListeBaslik = 'E'#287'itimci Listesi'
    TColcount = 3
    TColsW = '50,100,150'
    Table = 'Egitimci_View2'
    Conn = DATALAR.ADOConnection2
    Filtercol = 0
    BaslikRenk = clBlack
    DipRenk = clBlack
    Kolonlar.Strings = (
      'unvan'
      'tckimlikNo'
      'tanimi')
    KolonBasliklari.Strings = (
      'Unvan'#305
      'Tc Kimlik No'
      'Ad'#305' Soyad'#305)
    Calistir = fgEvet
    BiriktirmeliSecim = False
    SkinName = 'Lilian'
    Grup = False
    GrupCol = 0
    Left = 496
    Top = 128
  end
  object Egitimler: TListeAc
    TColcount = 2
    TColsW = '50,200'
    Table = 'Egitim_Tnm'
    Conn = DATALAR.ADOConnection2
    Filtercol = 0
    BaslikRenk = clBlack
    DipRenk = clBlack
    Kolonlar.Strings = (
      'kod'
      'tanimi')
    KolonBasliklari.Strings = (
      'Kod'
      'Tan'#305'm'#305)
    Calistir = fgEvet
    BiriktirmeliSecim = False
    Grup = False
    GrupCol = 0
    Left = 560
    Top = 136
  end
end
