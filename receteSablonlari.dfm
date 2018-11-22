object frmReceteSablon: TfrmReceteSablon
  Left = 350
  Top = 81
  BorderStyle = bsDialog
  Caption = 'frmReceteSablon'
  ClientHeight = 487
  ClientWidth = 988
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 265
    Height = 487
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 489
    object DBGridEh3: TDBGridEh
      Left = 2
      Top = 425
      Width = 263
      Height = 487
      DataSource = DataSource1
      DynProps = <>
      EvenRowColor = clInactiveBorder
      Flat = True
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      FooterParams.Color = clWindow
      IndicatorOptions = [gioShowRowIndicatorEh]
      ParentFont = False
      RowHeight = 18
      TabOrder = 0
      TreeViewParams.GlyphStyle = tvgsClassicEh
      TreeViewParams.ShowTreeLines = False
      Columns = <
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'id'
          Footers = <>
          Title.Caption = 'S'#305'ra'
          Width = 24
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'sablonAdi'
          Footers = <>
          Title.Caption = #350'ablon Ad'#305
          Width = 181
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 263
      Height = 485
      Align = alClient
      TabOrder = 1
      ExplicitLeft = -1
      ExplicitHeight = 544
      object cxGridHastaGelis: TcxGridDBTableView
        DataController.DataModeController.GridMode = True
        DataController.DataSource = DataSource1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object cxGridHastaGelissablonAdi: TcxGridDBColumn
          Caption = #350'ablonAd'#305
          DataBinding.FieldName = 'sablonAdi'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Width = 65
        end
        object cxGridHastaGelisreceteTur: TcxGridDBColumn
          Caption = 'Re'#231'ete T'#252'r'#252
          DataBinding.FieldName = 'receteTur'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Width = 66
        end
        object cxGridHastaGelisdoktor: TcxGridDBColumn
          Caption = 'Doktor'
          DataBinding.FieldName = 'doktor'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Items = <>
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Width = 116
        end
        object cxGridHastaGelisreceteAltTur: TcxGridDBColumn
          Caption = 'Re'#231'ete Alt T'#252'r'#252
          DataBinding.FieldName = 'receteAltTur'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Width = 91
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGridHastaGelis
      end
    end
  end
  object Panel2: TPanel
    Left = 265
    Top = 0
    Width = 723
    Height = 487
    Align = alClient
    TabOrder = 1
    ExplicitHeight = 546
    object cxGroupBox1: TcxGroupBox
      Left = 1
      Top = 1
      Align = alTop
      Caption = '  '#304'la'#231'lar  '
      TabOrder = 0
      DesignSize = (
        721
        138)
      Height = 145
      Width = 721
      object cxGrid2: TcxGrid
        Left = 2
        Top = 13
        Width = 668
        Height = 126
        Align = alCustom
        TabOrder = 0
        object cxGridDBTableView1: TcxGridDBTableView
          DataController.DataModeController.GridMode = True
          DataController.DataSource = DataSource2
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          object cxGridDBTableView1ilacKodu: TcxGridDBColumn
            Caption = 'ila'#231'Kodu'
            DataBinding.FieldName = 'ilacKodu'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Width = 51
          end
          object cxGridDBTableView1ilacAdi: TcxGridDBColumn
            Caption = #304'la'#231' Ad'#305
            DataBinding.FieldName = 'ilacAdi'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Width = 109
          end
          object cxGridDBTableView1adet: TcxGridDBColumn
            Caption = 'Adet'
            DataBinding.FieldName = 'adet'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Width = 37
          end
          object cxGridDBTableView1kullanZamanUnit: TcxGridDBColumn
            Caption = 'Peryot Birim'
            DataBinding.FieldName = 'kullanZamanUnit'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Width = 62
          end
          object cxGridDBTableView1kullanimZaman: TcxGridDBColumn
            Caption = 'Peryot Adet'
            DataBinding.FieldName = 'kullanimZaman'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Width = 66
          end
          object cxGridDBTableView1kullanimAdet2: TcxGridDBColumn
            Caption = 'Kullan'#305'm Doz(1)'
            DataBinding.FieldName = 'kullanimAdet2'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Width = 78
          end
          object cxGridDBTableView1kullanimAdet: TcxGridDBColumn
            Caption = 'Kullan'#305'm Doz(2)'
            DataBinding.FieldName = 'kullanimAdet'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Width = 80
          end
          object cxGridDBTableView1kullanimSekli: TcxGridDBColumn
            Caption = 'Kullan'#305'm '#350'ekli'
            DataBinding.FieldName = 'kullanimSekli'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Width = 79
          end
          object cxGridDBTableView1kullanimYolu: TcxGridDBColumn
            Caption = 'Kullan'#305'm Yolu'
            DataBinding.FieldName = 'kullanimYolu'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Width = 82
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
      object BtnIlacEkle: TcxButtonKadir
        Left = 676
        Top = 15
        Width = 42
        Height = 35
        Anchors = [akTop, akRight]
        Caption = 'Ekle'
        TabOrder = 1
        OnClick = BtnIlacEkleClick
        NewButtonVisible = False
        ExplicitLeft = 434
      end
      object cxButtonKadirTaniSil: TcxButtonKadir
        Tag = 1
        Left = 676
        Top = 51
        Width = 42
        Height = 35
        Anchors = [akTop, akRight]
        Caption = 'Sil'
        TabOrder = 2
        OnClick = cxButtonKadirTaniSilClick
        NewButtonVisible = False
      end
    end
    object cxGroupBox2: TcxGroupBox
      Left = 1
      Top = 385
      Align = alTop
      Caption = #304'la'#231' A'#231#305'klama'
      TabOrder = 1
      DesignSize = (
        721
        89)
      Height = 96
      Width = 721
      object cxGrid3: TcxGrid
        Left = 0
        Top = 13
        Width = 668
        Height = 68
        Align = alCustom
        TabOrder = 0
        object cxGridDBTableView2: TcxGridDBTableView
          DataController.DataModeController.GridMode = True
          DataController.DataSource = DataSource3
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          object cxGridDBTableView2aciklamaTip: TcxGridDBColumn
            DataBinding.FieldName = 'aciklamaTip'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Width = 155
          end
          object cxGridDBTableView2aciklama: TcxGridDBColumn
            DataBinding.FieldName = 'aciklama'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Width = 299
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
      object cxButtonKadirilacackekle1: TcxButtonKadir
        Left = 676
        Top = 12
        Width = 42
        Height = 35
        Anchors = [akTop, akRight]
        Caption = 'Ekle'
        TabOrder = 1
        OnClick = cxButtonKadirTaniEkleClick
        NewButtonVisible = False
      end
      object cxButtonKadirilacacksil1: TcxButtonKadir
        Tag = 1
        Left = 676
        Top = 48
        Width = 42
        Height = 35
        Anchors = [akTop, akRight]
        Caption = 'Sil'
        TabOrder = 2
        OnClick = cxButtonKadirTaniEkleClick
        NewButtonVisible = False
      end
    end
    object cxGroupBox3: TcxGroupBox
      Left = 1
      Top = 146
      Align = alTop
      Caption = 'A'#231#305'klama'
      TabOrder = 2
      DesignSize = (
        721
        89)
      Height = 96
      Width = 721
      object cxGrid4: TcxGrid
        Left = 2
        Top = 13
        Width = 668
        Height = 77
        Align = alCustom
        TabOrder = 0
        object cxGridDBTableView3: TcxGridDBTableView
          DataController.DataModeController.GridMode = True
          DataController.DataSource = DataSource4
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          object cxGridDBTableView3aciklamaTip: TcxGridDBColumn
            Caption = 'A'#231#305'klama Tipi'
            DataBinding.FieldName = 'aciklamaTip'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Width = 125
          end
          object cxGridDBTableView3aciklama: TcxGridDBColumn
            Caption = 'A'#231#305'klama'
            DataBinding.FieldName = 'aciklama'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Width = 518
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = cxGridDBTableView3
        end
      end
      object cxButtonKadirAckSil: TcxButtonKadir
        Tag = 1
        Left = 676
        Top = 50
        Width = 42
        Height = 35
        Anchors = [akTop, akRight]
        Caption = 'Sil'
        TabOrder = 1
        OnClick = cxButtonKadirAckEkleClick
        NewButtonVisible = False
      end
      object cxButtonKadirAckEkle: TcxButtonKadir
        Left = 676
        Top = 13
        Width = 42
        Height = 35
        Anchors = [akTop, akRight]
        Caption = 'Ekle'
        TabOrder = 2
        OnClick = cxButtonKadirAckEkleClick
        NewButtonVisible = False
      end
    end
    object cxGroupBox4: TcxGroupBox
      Left = 1
      Top = 242
      Align = alTop
      Caption = 'Tan'#305
      TabOrder = 3
      ExplicitTop = 226
      DesignSize = (
        721
        136)
      Height = 143
      Width = 721
      object cxGrid5: TcxGrid
        Left = 2
        Top = 17
        Width = 668
        Height = 119
        Align = alCustom
        TabOrder = 0
        object cxGridDBTableView4: TcxGridDBTableView
          DataController.DataModeController.GridMode = True
          DataController.DataSource = DataSource5
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          object cxGridDBTableView4taniKodu: TcxGridDBColumn
            Caption = 'Tan'#305' Kodu'
            DataBinding.FieldName = 'taniKodu'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Width = 124
          end
          object cxGridDBTableView4tani: TcxGridDBColumn
            Caption = 'Tan'#305
            DataBinding.FieldName = 'tani'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Width = 516
          end
        end
        object cxGridLevel4: TcxGridLevel
          GridView = cxGridDBTableView4
        end
      end
      object cxButtonKadirTaniEkle: TcxButtonKadir
        Left = 676
        Top = 23
        Width = 42
        Height = 35
        Anchors = [akTop, akRight]
        Caption = 'Ekle'
        TabOrder = 1
        OnClick = cxButtonKadirTaniEkleClick
        NewButtonVisible = False
      end
      object cxButtonKadirTanisil1: TcxButtonKadir
        Tag = 1
        Left = 676
        Top = 59
        Width = 42
        Height = 35
        Anchors = [akTop, akRight]
        Caption = 'Sil'
        TabOrder = 2
        OnClick = cxButtonKadirTaniEkleClick
        NewButtonVisible = False
      end
    end
  end
  object Sablonlar: TADOTable
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    TableName = 'ReceteSablon'
    Left = 88
    Top = 161
  end
  object SablonDetay: TADOTable
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    IndexFieldNames = 'ReceteSablonID'
    MasterFields = 'id'
    MasterSource = DataSource1
    TableName = 'ReceteDetaySablon'
    Left = 88
    Top = 201
    object SablonDetayid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object SablonDetayilacKodu: TStringField
      FieldName = 'ilacKodu'
    end
    object SablonDetayilacAdi: TStringField
      FieldName = 'ilacAdi'
      Size = 50
    end
    object SablonDetayEtkenMadde: TStringField
      FieldName = 'EtkenMadde'
      Size = 50
    end
    object SablonDetaykullanimZaman: TStringField
      FieldName = 'kullanimZaman'
      Size = 10
    end
    object SablonDetaykullanimAdet: TFloatField
      FieldName = 'kullanimAdet'
    end
    object SablonDetaykullanZamanUnit: TStringField
      FieldName = 'kullanZamanUnit'
      Size = 1
    end
    object SablonDetaykullanimSekli: TStringField
      FieldName = 'kullanimSekli'
      Size = 50
    end
    object SablonDetaykullanimYolu: TStringField
      FieldName = 'kullanimYolu'
      Size = 50
    end
    object SablonDetaykullanimAdet2: TIntegerField
      FieldName = 'kullanimAdet2'
    end
    object SablonDetayadet: TIntegerField
      FieldName = 'adet'
    end
    object SablonDetayReceteSablonID: TIntegerField
      FieldName = 'ReceteSablonID'
    end
  end
  object DataSource1: TDataSource
    DataSet = Sablonlar
    Left = 128
    Top = 161
  end
  object DataSource2: TDataSource
    DataSet = SablonDetay
    Left = 128
    Top = 201
  end
  object IlacAciklama: TADOTable
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    IndexFieldNames = 'receteDetaySablonId'
    MasterFields = 'id'
    MasterSource = DataSource1
    TableName = 'ReceteIlacAciklamaSablon'
    Left = 88
    Top = 241
  end
  object DataSource3: TDataSource
    DataSet = IlacAciklama
    Left = 128
    Top = 241
  end
  object Aciklama: TADOTable
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    IndexFieldNames = 'receteSablonId'
    MasterFields = 'id'
    MasterSource = DataSource1
    TableName = 'ReceteAciklamaSablon'
    Left = 88
    Top = 273
  end
  object DataSource4: TDataSource
    DataSet = Aciklama
    Left = 128
    Top = 273
  end
  object Tani: TADOTable
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    IndexFieldNames = 'receteSablonId'
    MasterFields = 'id'
    MasterSource = DataSource1
    TableName = 'ReceteTaniSablon'
    Left = 88
    Top = 305
  end
  object DataSource5: TDataSource
    DataSet = Tani
    Left = 128
    Top = 305
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 200
    Top = 112
    object K1: TMenuItem
      Tag = 9999
      Caption = 'Kapat'
      ImageIndex = 18
      OnClick = cxKaydetClick
    end
    object S1: TMenuItem
      Tag = -1
      Caption = 'Sil'
      ImageIndex = 42
      OnClick = S1Click
    end
    object E1: TMenuItem
      Caption = 'Ekle'
      ImageIndex = 34
    end
  end
end
