object frmPersonelKart: TfrmPersonelKart
  Tag = 90
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'frmPersonelKart'
  ClientHeight = 614
  ClientWidth = 1275
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter_Muayene: TSplitter
    Left = 0
    Top = 458
    Width = 1275
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    ExplicitLeft = 8
    ExplicitTop = 435
    ExplicitWidth = 806
  end
  object CINSIYETI: TcxImageComboKadir
    Left = 144
    Top = 8
    Properties.ClearKey = 46
    Properties.Items = <
      item
        Description = 'Bay'
        ImageIndex = 3
        Value = '0'
      end
      item
        Description = 'Bayan'
        ImageIndex = 2
        Value = '1'
      end>
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 1
    BosOlamaz = False
    FilterSet = fsNone
    Width = 121
  end
  object MEDENI: TcxImageComboKadir
    Left = 144
    Top = 35
    Properties.ClearKey = 46
    Properties.Items = <
      item
        Description = 'Evli'
        ImageIndex = 4
        Value = '0'
      end
      item
        Description = 'Bekar'
        ImageIndex = 5
        Value = '1'
      end>
    TabOrder = 2
    BosOlamaz = False
    FilterSet = fsNone
    Width = 121
  end
  object DURUM: TcxImageComboKadir
    Left = 296
    Top = 8
    Properties.ClearKey = 46
    Properties.Items = <
      item
        Description = #199'al'#305#351'an'
        ImageIndex = 0
        Value = '1'
      end
      item
        Description = 'Emekli'
        Value = '2'
      end
      item
        Description = 'SSK Kurum Personeli'
        Value = '3'
      end
      item
        Description = 'Di'#287'er'
        Value = '4'
      end>
    TabOrder = 3
    Visible = False
    BosOlamaz = False
    FilterSet = fsNone
    Width = 121
  end
  object VatandasTip: TcxImageComboKadir
    Left = 296
    Top = 35
    Properties.ClearKey = 46
    Properties.Items = <
      item
        Description = 'Vatanda'#351
        ImageIndex = 0
        Value = '0'
      end
      item
        Description = 'Yeni Do'#287'an'
        Value = '1'
      end
      item
        Description = 'S'#305#287#305'nmac'#305
        Value = '2'
      end
      item
        Description = 'Yabanc'#305
        Value = '3'
      end
      item
        Description = 'Kimliksiz'
        Value = '6'
      end>
    TabOrder = 4
    BosOlamaz = False
    FilterSet = fsNone
    Width = 121
  end
  object seansGunleri: TcxCheckGroup
    Left = 440
    Top = 8
    Alignment = alCenterCenter
    EditValue = '0110000'
    Properties.Columns = 3
    Properties.EditValueFormat = cvfStatesString
    Properties.Items = <
      item
        Caption = 'Pazar'
      end
      item
        Caption = 'Pazartesi'
      end
      item
        Caption = 'Sal'#305
      end
      item
        Caption = #199'ar'#351'amba'
      end
      item
        Caption = 'Per'#351'embe'
      end
      item
        Caption = 'Cuma'
      end
      item
        Caption = 'Cumartesi'
      end>
    Properties.OnEditValueChanged = seansGunleriPropertiesEditValueChanged
    TabOrder = 5
    Visible = False
    Height = 64
    Width = 121
  end
  object DOGUMTARIHI: TcxDateEditKadir
    Left = 144
    Top = 80
    Properties.OnValidate = DOGUMTARIHIPropertiesValidate
    TabOrder = 6
    BosOlamaz = True
    ValueTip = tvString
    Width = 121
  end
  object cxFotoPanel: TcxGroupBox
    Left = 647
    Top = 19
    Caption = 'Foto'
    TabOrder = 7
    Height = 149
    Width = 110
    object Foto: TcxImage
      Tag = -1
      Left = 3
      Top = 15
      Align = alClient
      Properties.PopupMenuLayout.MenuItems = []
      Properties.Stretch = True
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitTop = -2
      ExplicitWidth = 106
      ExplicitHeight = 127
      Height = 102
      Width = 104
    end
    object Panel1: TPanel
      Left = 3
      Top = 117
      Width = 104
      Height = 22
      Align = alBottom
      TabOrder = 1
      ExplicitLeft = 2
      ExplicitTop = 125
      ExplicitWidth = 106
      object cxFotoEkleButton: TcxButton
        Tag = -50
        Left = 1
        Top = 1
        Width = 52
        Height = 20
        Hint = 'Ekle'
        Align = alLeft
        Caption = 'Ekle'
        TabOrder = 0
        OnClick = cxButtonCClick
      end
      object cxFotoSilButton: TcxButton
        Tag = -50
        Left = 53
        Top = 1
        Width = 50
        Height = 20
        Hint = 'Sil'
        Align = alRight
        Caption = 'Sil'
        TabOrder = 1
        OnClick = cxButtonCClick
        ExplicitLeft = 55
      end
    end
  end
  object dosyaNo: TcxButtonEditKadir
    Tag = 1
    Left = 17
    Top = 8
    Properties.Buttons = <
      item
        Default = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000B0B0B123638387F5560
          52C0323231630000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000111212185C7C56D280F166FF4F72
          49FF49494CFE2221212F00000000000000000000000000000000000000000000
          000000000000000000000000000002020203515A51C090EF71FF678E5CFF4E4F
          51FF3C3D41FF4F4E4D8F00000000000000000000000000000000000000000000
          00000F0F0F141B1A1A3300000000111010205F7959FF566E55FF636464FF5E5E
          5FFF444549FF505152E505050507000000000000000000000000000000002A2B
          2A3F62975AF14A5249FF4141416D030303046F6E6DE654565DFF5D5E61FF6060
          62FF515254FF44464AFF4C4C49C13939386C00000000000000001A1A1A1E72AC
          62ED659359FF454548FF464649F41717161E1B1A1A236A6A6CE14B4D53FF5758
          5CFF58595CFF424448FF525253FF494A4CFD30302F4200000000535450A86487
          5BFF616262FF5B5B5CFF3E3F43FF4D4D4CA00A0A091120201F2F737373E54C4E
          55FF4E5055FF4A4C52FF3D3E42FF3C3D41FF515151DD080807094F4D4B815D5F
          64FF5B5C60FF626263FF4F4F51FF3D3E3FFD504F4DFC515150C25757549D7676
          76FF494B52FF3E3F45FF4E4F51FF4A4B4EFF4D4E51FF43423F77030302044A49
          47875E5F64FF525459FF525355FF3A3A3EFF57585AFF3C3D40FF6A6968FE5E5E
          61FF4E4F54FF545457FF4A4C51FF484A4EFF48494EFF5A5954D7000000000000
          000031302E52666669EC43454AFF4A4B4EFF4E4F52FF3E3E40FF5A5A5BFF5556
          5BFF4F5156FF44464CFF44464DFF45474DFF58595DFF605E5CBA000000000000
          000000000000595855BA696A6CFF545659FF666666FF666667FF5D5E61FF484B
          51FF41444BFF41434BFF41434AFF42444BFF626265FF4D4C4C74000000000000
          00000000000039383656636160FD727170FF939392FF7F8084FF606268FF4E51
          58FF464950FF42454CFF41444BFF4B4C53FD43454BFF585758D5000000000000
          00000000000000000000383734585C5751F7898784FFA3A2A2FF86878AFF696B
          70FF56585FFF4A4B51DA3132346637363663626468FF57575AC9000000000000
          00000000000000000000000000002F2E2B4D524F4AC17C7A77DD9A999AFF7475
          79F62A2A2B440202020300000000000000001C1C1B330B0B0B0F000000000000
          00000000000000000000000000000000000000000000000000003D3C3A623D3D
          3D5B000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Kind = bkGlyph
      end>
    Properties.OnButtonClick = cxButtonEditPropertiesButtonClick
    Style.ButtonStyle = btsDefault
    TabOrder = 8
    OnKeyDown = cxTextEditBKeyDown
    indexField = False
    ListeAcTus = 0
    Width = 121
  end
  object cxpnlHastaGelisler: TcxGroupBox
    Left = 0
    Top = 461
    Align = alBottom
    Caption = 'Muayeneler'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 0
    Height = 153
    Width = 1275
    object cxGridGelis: TcxGrid
      Left = 3
      Top = 15
      Width = 1269
      Height = 128
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitTop = -2
      ExplicitWidth = 1271
      ExplicitHeight = 153
      object cxGridGelisler: TcxGridDBBandedTableView
        OnDblClick = cxGridGelislerDblClick
        OnFocusedRecordChanged = cxGridGelislerFocusedRecordChanged
        DataController.DataSource = DataSource1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        Bands = <
          item
            Caption = 'SGK Ba'#351'vuru Bilgileri'
            FixedKind = fkLeft
            Styles.Content = cxStyle1
            Styles.Header = cxStyle1
            Visible = False
          end
          item
            Caption = 'Muayene Bilgileri'
            Styles.Header = cxStyle2
            Width = 606
          end>
        object cxGridGelislerTakpNo: TcxGridDBBandedColumn
          Caption = 'Takip No'
          DataBinding.FieldName = 'TakIpNo'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 64
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGridGelislerBasvuruNo: TcxGridDBBandedColumn
          Caption = 'Ba'#351'vuru No'
          DataBinding.FieldName = 'BasvuruNo'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 70
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxGridGelislerdosyaNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'dosyaNo'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridGelislergelisNo: TcxGridDBBandedColumn
          Caption = 'Geli'#351
          DataBinding.FieldName = 'gelisNo'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 44
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridGelislerBHDAT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Tarih'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 74
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGridGelislerdoktor: TcxGridDBBandedColumn
          Caption = 'Doktor'
          DataBinding.FieldName = 'doktor'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 73
          Position.BandIndex = 1
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cxGridGelislerSERVIS: TcxGridDBBandedColumn
          Caption = 'Servis'
          DataBinding.FieldName = 'SERVIS'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 65
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxGridGelislerTEDAVITURU: TcxGridDBBandedColumn
          Caption = 'Muayene'
          DataBinding.FieldName = 'TEDAVITURU'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 134
          Position.BandIndex = 1
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cxGridGelislerKullanici: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Kullanici'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 67
          Position.BandIndex = 1
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object cxGridGelislerilkTakipNo: TcxGridDBBandedColumn
          Caption = #304'lk Takip No'
          DataBinding.FieldName = 'ilkTakipNo'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 67
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cxGridGelislerSIRANO: TcxGridDBBandedColumn
          Caption = 'SiraNo'
          DataBinding.FieldName = 'SIRANO'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 48
          Position.BandIndex = 1
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object cxGridGelislerPROTOKOLNO: TcxGridDBBandedColumn
          Caption = 'Protokol No'
          DataBinding.FieldName = 'PROTOKOLNO'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 101
          Position.BandIndex = 1
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
      end
      object cxGridGelisLevel1: TcxGridLevel
        GridView = cxGridGelisler
      end
    end
  end
  object KANGRUBU: TcxImageComboBox
    Left = 296
    Top = 80
    Properties.Items = <
      item
        Description = 'A RH (+)'
        ImageIndex = 0
        Value = '0'
      end
      item
        Description = 'A RH (-)'
        Value = '1'
      end
      item
        Description = 'AB RH (+)'
        Value = '2'
      end
      item
        Description = 'AB RH (-)'
        Value = '3'
      end
      item
        Description = 'B RH (+)'
        Value = '4'
      end
      item
        Description = 'B RH (-)'
        Value = '5'
      end
      item
        Description = '0 RH (+)'
        Value = '6'
      end
      item
        Description = '0 RH (-)'
        Value = '7'
      end
      item
        Description = 'Bilinmiyor'
        Value = '8'
      end>
    TabOrder = 9
    Width = 121
  end
  object txtAktif: TcxImageComboBox
    Left = 637
    Top = 196
    Properties.Alignment.Vert = taVCenter
    Properties.Items = <
      item
        Description = 'Pasif'
        ImageIndex = 77
        Value = 0
      end
      item
        Description = 'Aktif'
        Value = 1
      end
      item
        Description = 'Yeni'
        Value = 2
      end
      item
        Description = 'Kara Liste'
        Value = 3
      end>
    Properties.OnChange = txtAktifPropertiesChange
    Style.TextStyle = [fsBold]
    TabOrder = 10
    Width = 121
  end
  object txtSeansSikayet: TcxCheckGroup
    Left = 512
    Top = 78
    Alignment = alCenterCenter
    EditValue = '011000000'
    Properties.Columns = 3
    Properties.EditValueFormat = cvfStatesString
    Properties.Items = <
      item
        Caption = 'Alkol'
      end
      item
        Caption = 'Sigara'
      end
      item
        Caption = 'Hipertansiyon'
      end
      item
        Caption = 'Kalp Hastal'#305#287#305
      end
      item
        Caption = 'Romatizma'
      end
      item
        Caption = 'Diabet(IDDM)'
      end
      item
        Caption = 'Di'#287'er'
      end
      item
        Caption = 'Diabet(NIDDM)'
      end
      item
        Caption = 'KOAH'
      end>
    Properties.OnEditValueChanged = seansGunleriPropertiesEditValueChanged
    TabOrder = 11
    Height = 64
    Width = 89
  end
  object IseGirisMuayene: TcxGridKadir
    Left = 8
    Top = 301
    Width = 513
    Height = 109
    TabOrder = 12
    Visible = False
    ExceleGonder = False
    PopupForm = False
    object GridList: TcxGridDBBandedTableView
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnSorting = False
      OptionsView.GridLines = glHorizontal
      OptionsView.GroupByBox = False
      OptionsView.GroupByHeaderLayout = ghlHorizontal
      Styles.Inactive = cxStyle1
      Styles.Group = cxStyle3
      Bands = <
        item
          Caption = #304#351'e Giri'#351' Muayene Bilgileri'
          Width = 667
        end>
      object GridListMuayeneSoru: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MuayeneSoru'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Properties.ReadOnly = True
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Styles.Content = cxStyle1
        Width = 286
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object GridListGrupKod: TcxGridDBBandedColumn
        DataBinding.FieldName = 'GrupKod'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object GridListaltGrupKod: TcxGridDBBandedColumn
        DataBinding.FieldName = 'altGrupKod'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object GridListGrupTanimi: TcxGridDBBandedColumn
        DataBinding.FieldName = 'GrupTanimi'
        Visible = False
        GroupIndex = 0
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object GridListaltGrupTanimi: TcxGridDBBandedColumn
        DataBinding.FieldName = 'altGrupTanimi'
        Visible = False
        GroupIndex = 1
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object GridListvalue: TcxGridDBBandedColumn
        Caption = 'Cevap'
        DataBinding.FieldName = 'value'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 62
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object GridListtarih: TcxGridDBBandedColumn
        Caption = 'Tarih'
        DataBinding.FieldName = 'tarih'
        HeaderAlignmentHorz = taCenter
        Width = 55
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object GridListvalueObjevalues: TcxGridDBBandedColumn
        DataBinding.FieldName = 'valueObjevalues'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object GridListvalueTip: TcxGridDBBandedColumn
        DataBinding.FieldName = 'valueTip'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object GridListDesc: TcxGridDBBandedColumn
        Caption = 'A'#231#305'klama'
        DataBinding.FieldName = 'aciklama'
        HeaderAlignmentHorz = taCenter
        Width = 234
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
    end
    object IseGirisMuayeneLevel1: TcxGridLevel
      GridView = GridList
    end
  end
  object GridPersonelEgitim: TcxGridKadir
    Left = 8
    Top = 186
    Width = 709
    Height = 109
    TabOrder = 13
    ExceleGonder = False
    PopupForm = False
    object GridEgitim: TcxGridDBBandedTableView
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
      Styles.Inactive = cxStyle1
      Styles.Group = cxStyle3
      Bands = <
        item
          Caption = 'Personelin Kat'#305'ld'#305#287#305' E'#287'itim Bilgileri'
          Styles.Header = AnaForm.cxStyle1
          Width = 690
        end>
      object GridEgitimColumn1: TcxGridDBBandedColumn
        Caption = 'Personel Ad'#305
        DataBinding.FieldName = 'PersonelAdiSoyadi'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Visible = False
        HeaderAlignmentHorz = taCenter
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object GridEgitimColumn2: TcxGridDBBandedColumn
        Caption = 'E'#287'itim Ad'#305
        DataBinding.FieldName = 'EgitimAdi'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object GridEgitimColumn3: TcxGridDBBandedColumn
        Caption = 'Tarih'
        DataBinding.FieldName = 'BaslamaTarihi'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object GridEgitimColumn4: TcxGridDBBandedColumn
        Caption = 'S'#252're'
        DataBinding.FieldName = 'Sure'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object GridEgitimColumn5: TcxGridDBBandedColumn
        Caption = 'E'#287'itim '#304#231'eri'#287'i'
        DataBinding.FieldName = 'EgitimIcerigi'
        PropertiesClassName = 'TcxTextEditProperties'
        HeaderAlignmentHorz = taCenter
        Width = 350
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = GridEgitim
    end
  end
  object MESLEK: TcxButtonEditKadir
    Left = 520
    Top = 160
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.OnButtonClick = cxButtonEditPropertiesButtonClick
    TabOrder = 14
    ListeAc = Meslekler
    indexField = False
    ListeAcTus = 0
    Width = 121
  end
  object GridPersonelIseBaslamaEgitim: TcxGridKadir
    Left = 296
    Top = 301
    Width = 488
    Height = 207
    TabOrder = 15
    ExceleGonder = False
    PopupForm = False
    object GridIseBaslamaEgitim: TcxGridDBBandedTableView
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
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
      NewItemRow.Visible = True
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnSorting = False
      OptionsView.GridLines = glHorizontal
      OptionsView.GroupByBox = False
      OptionsView.GroupByHeaderLayout = ghlHorizontal
      Styles.Inactive = cxStyle1
      Styles.Group = cxStyle3
      Bands = <
        item
          Caption = 'Personelin '#304#351'e Ba'#351'lama E'#287'itim Bilgileri'
          Styles.Header = AnaForm.cxStyle1
          Width = 471
        end>
      object GridPersonelIseBaslamaEgitim_egitimKodu: TcxGridDBBandedColumn
        Caption = 'E'#287'itim'
        DataBinding.FieldName = 'egitimKodu'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Items = <>
        HeaderAlignmentHorz = taCenter
        Width = 163
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Tarih'
        PropertiesClassName = 'TcxDateEditProperties'
        HeaderAlignmentHorz = taCenter
        Width = 81
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn3: TcxGridDBBandedColumn
        Caption = 'Egitimi Veren TC'
        DataBinding.FieldName = 'egitimiVerenTC'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 86
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn4: TcxGridDBBandedColumn
        Caption = 'S'#252're'
        DataBinding.FieldName = 'Sure'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 26
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn5: TcxGridDBBandedColumn
        Caption = 'Egitimi Veren Ad'#305
        DataBinding.FieldName = 'egitimiVerenAdi'
        PropertiesClassName = 'TcxTextEditProperties'
        HeaderAlignmentHorz = taCenter
        Width = 101
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
    end
    object cxGridLevel2: TcxGridLevel
      GridView = GridIseBaslamaEgitim
    end
  end
  object GridPersonelBelgeler: TcxGridKadir
    Left = 803
    Top = 120
    Width = 412
    Height = 140
    TabOrder = 16
    Visible = False
    ExceleGonder = False
    PopupForm = False
    object GridPersonelBelgelerBelge: TcxGridDBBandedTableView
      Navigator.Buttons.OnButtonClick = GridPersonelBelgelerBelgeNavigatorButtonsButtonClick
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Edit.Hint = 'D'#252'zenle'
      Navigator.Buttons.Edit.Visible = True
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
      OptionsView.GridLines = glHorizontal
      OptionsView.GroupByBox = False
      OptionsView.GroupByHeaderLayout = ghlHorizontal
      Styles.Inactive = cxStyle1
      Styles.Group = cxStyle3
      Bands = <
        item
          Caption = 'Personel Belgeleri'
          HeaderAlignmentHorz = taLeftJustify
          Styles.Header = AnaForm.cxStyle1
          Width = 733
        end>
      object BelgeTip: TcxGridDBBandedColumn
        Caption = 'Belge Tipi'
        DataBinding.FieldName = 'BelgeTipi'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Items = <>
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Styles.Content = cxStyle1
        Width = 147
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn6: TcxGridDBBandedColumn
        Caption = 'Belge Tarihi'
        DataBinding.FieldName = 'BelgeTarihi'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn7: TcxGridDBBandedColumn
        Caption = 'Alinan Kurum'
        DataBinding.FieldName = 'AlinanKurum'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 138
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn9: TcxGridDBBandedColumn
        Caption = 'Belge'
        DataBinding.FieldName = 'BelgeYuklu'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = DATALAR.imag24png
        Properties.Items = <
          item
            ImageIndex = 110
            Value = 1
          end
          item
            Value = 0
          end>
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 37
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn8: TcxGridDBBandedColumn
        Caption = 'Gecerlilik Tarihi'
        DataBinding.FieldName = 'GecerlilikTarihi'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object GridPersonelBelgelerBelgeColumn1: TcxGridDBBandedColumn
        Caption = 'Aktif'
        DataBinding.FieldName = 'durum'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taLeftJustify
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 42
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object GridPersonelBelgelerBelgeColumn2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Aciklama'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 151
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object GridPersonelBelgelerBelgeColumn3: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Belge'
        Visible = False
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
    end
    object cxGridLevel3: TcxGridLevel
      GridView = GridPersonelBelgelerBelge
    end
  end
  object TCKIMLIKNO: TcxButtonEditKadir
    Left = 567
    Top = 8
    Properties.Buttons = <
      item
        Default = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000B0B0B123638387F5560
          52C0323231630000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000111212185C7C56D280F166FF4F72
          49FF49494CFE2221212F00000000000000000000000000000000000000000000
          000000000000000000000000000002020203515A51C090EF71FF678E5CFF4E4F
          51FF3C3D41FF4F4E4D8F00000000000000000000000000000000000000000000
          00000F0F0F141B1A1A3300000000111010205F7959FF566E55FF636464FF5E5E
          5FFF444549FF505152E505050507000000000000000000000000000000002A2B
          2A3F62975AF14A5249FF4141416D030303046F6E6DE654565DFF5D5E61FF6060
          62FF515254FF44464AFF4C4C49C13939386C00000000000000001A1A1A1E72AC
          62ED659359FF454548FF464649F41717161E1B1A1A236A6A6CE14B4D53FF5758
          5CFF58595CFF424448FF525253FF494A4CFD30302F4200000000535450A86487
          5BFF616262FF5B5B5CFF3E3F43FF4D4D4CA00A0A091120201F2F737373E54C4E
          55FF4E5055FF4A4C52FF3D3E42FF3C3D41FF515151DD080807094F4D4B815D5F
          64FF5B5C60FF626263FF4F4F51FF3D3E3FFD504F4DFC515150C25757549D7676
          76FF494B52FF3E3F45FF4E4F51FF4A4B4EFF4D4E51FF43423F77030302044A49
          47875E5F64FF525459FF525355FF3A3A3EFF57585AFF3C3D40FF6A6968FE5E5E
          61FF4E4F54FF545457FF4A4C51FF484A4EFF48494EFF5A5954D7000000000000
          000031302E52666669EC43454AFF4A4B4EFF4E4F52FF3E3E40FF5A5A5BFF5556
          5BFF4F5156FF44464CFF44464DFF45474DFF58595DFF605E5CBA000000000000
          000000000000595855BA696A6CFF545659FF666666FF666667FF5D5E61FF484B
          51FF41444BFF41434BFF41434AFF42444BFF626265FF4D4C4C74000000000000
          00000000000039383656636160FD727170FF939392FF7F8084FF606268FF4E51
          58FF464950FF42454CFF41444BFF4B4C53FD43454BFF585758D5000000000000
          00000000000000000000383734585C5751F7898784FFA3A2A2FF86878AFF696B
          70FF56585FFF4A4B51DA3132346637363663626468FF57575AC9000000000000
          00000000000000000000000000002F2E2B4D524F4AC17C7A77DD9A999AFF7475
          79F62A2A2B440202020300000000000000001C1C1B330B0B0B0F000000000000
          00000000000000000000000000000000000000000000000000003D3C3A623D3D
          3D5B000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Kind = bkGlyph
      end>
    Properties.OnButtonClick = cxButtonEditPropertiesButtonClick
    Style.ButtonStyle = btsDefault
    TabOrder = 17
    OnKeyDown = cxTextEditBKeyDown
    indexField = False
    ListeAcTus = 0
    Width = 121
  end
  object iskazasi: TcxImage
    Tag = -1
    Left = 779
    Top = 8
    Picture.Data = {
      0B54504E474772617068696336A90000424D36A9000000000000360000002800
      00006800000068000000010020000000000000A9000000000000000000000000
      000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFEFEFFFFE4E5FBFFCFCFF8FFB5B4F5FFABA9F4FFA9A7F4FFAEACF4FFC7C6
      F7FFDEDFFAFFF5F7FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E0FAFFA4A3F3FF504BEAFF2523
      E4FF0000E0FF0000DFFF0000E0FF0000E0FF0000E0FF0000E0FF0000E0FF0000
      E0FF0000DFFF0000DFFF130DE3FF3C3BE8FF7F79EFFFCECEF9FFFEFEFEFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFEDEDFCFF8786EFFF2A26E6FF0000E0FF0000E0FF0900E1FF0E00
      E2FF1205E2FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1002E2FF0C00E2FF0000E0FF0000E0FF110AE2FF5D58
      EBFFCACAF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBDA
      FAFF4845E9FF0400E2FF0000E0FF0D00E2FF1305E2FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1002E2FF0500
      E1FF0000E0FF1C13E3FFA8A6F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2FDFF4945E9FF0000
      E1FF0700E1FF1103E2FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1205E2FF0E00E2FF0000E0FF180FE3FFB5B5F5FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8585F0FF0000E0FF0700E1FF1205
      E2FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1305E2FF0E00E2FF0000E0FF3734E7FFF9F9FDFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF7F7FDFF211BE5FF0000E0FF1204E2FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1205E2FF0900E1FF0D00E2FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1305E2FF0900E1FF0000E0FFA9A8
      F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFCCCBF7FF0000E0FF0B00E2FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1205E2FF0600E2FF535AEAFF2526E5FF0D00E2FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1204E2FF0000
      DFFF6766ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF9B99F3FF0000DFFF1102E2FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF0700E1FF3739E8FFFFFFFFFFFFFFFFFF0000DFFF1406E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1406
      E3FF0000E0FF3D3AE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8A89
      F0FF0000E0FF1304E2FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF0D00
      E2FF2424E5FFA1A7F3FFD2D6F9FF9C9EF3FF0000E1FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF0000E1FF2C28E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9794F3FF0000
      E0FF1305E2FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF0000
      E1FFAFB6F5FFFFFFFFFF616AEDFF0000DFFF1406E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF0100E1FF312BE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBEBCF7FF0000DFFF1204
      E2FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF0E00
      E2FF1819E4FFFFFFFFFFFFFFFFFF0000DFFF1203E2FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF0000E1FF4C49E9FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEFBFF0000E0FF1002E2FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E2FF0000E0FF959AF2FFFFFFFFFF9297F1FF0000DFFF1305E2FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E2FF0000E0FF7F7EEFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF110EE3FF0C00E2FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1103E2FF0500E1FFFFFFFFFFFFFFFFFF5E67ECFF0000E0FF1305E2FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E2FF0000DEFFD1D1F8FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF7574EEFF0000E0FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1204E2FF0600E1FF0000
      E0FF0300E1FF0F01E2FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF0600E1FF2D32E6FFFFFFFFFFFFFFFFFF4E56EAFF0000E0FF1306
      E3FF1306E3FF1204E2FF0300E1FF1203E2FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1103E2FF0000E1FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFE9E9FBFF0000DFFF1305E2FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF0F01E2FF0000E1FF605CECFFA7AD
      F4FF7C7BEEFF170FE4FF0100E1FF0800E1FF0A00E1FF1205E2FF1306E3FF1306
      E3FF1306E3FF1306E3FF0000E1FF3C3FE7FFFFFFFFFFFFFFFFFF4D49EAFF0000
      E1FF1000E2FF0000E1FF7E81EFFF0000E1FF1203E2FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF0000E1FF6968
      ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF2D2CE6FF0C00E2FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1102E2FF0000E1FFE4E8FBFFF2F3FDFF9397
      F2FFC7CFF9FFFFFFFFFF3D41E7FF5854EBFF4B51EAFF0000E0FF0D00E2FF1306
      E3FF1306E3FF1306E3FF1306E3FF0000E0FF4A4EE9FFFFFFFFFFABB2F3FF3835
      E7FF0406E2FFAFB6F5FFFFFFFFFFC7CDF8FF0000E1FF1305E2FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1205E2FF0000
      E0FFE5E4FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC7C6F8FF0000E0FF1305E2FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1305E2FF0000E0FFC9CEF8FFC8D1F8FF0000DFFF0000
      E0FF0000E0FF2025E4FFE0E5FBFFFFFFFFFFFFFFFFFFDADFFAFF1E1FE5FF0000
      E0FF1305E3FF1306E3FF1306E3FF0B00E2FF0A09E2FF5A63EBFFF7F8FDFFFFFF
      FFFFA9B1F5FF868FF0FFFFFFFFFFA7ACF4FF0000E1FF1305E2FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF0800
      E1FF4340E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF3230E7FF0B00E2FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF0A00E2FF3D3FE8FFFFFFFFFF0000E0FF1002E2FF1306
      E3FF0B00E2FF3531E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6A6E
      EDFF0000DFFF1203E2FF0A00E1FF0808E2FFFFFFFFFFFFFFFFFF616CECFF989D
      F2FF989CF2FFFFFFFFFF212BE4FF0000E1FF1305E2FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1204
      E2FF0000E0FFE1DFFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFD8D7FAFF0000E0FF1204E2FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1305E2FF0000E0FFDEE3FBFF7D82EFFF0100E1FF1306E3FF1306
      E3FF1002E2FF1312E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFB1B8F5FF0000DFFF1715E4FFFFFFFFFFFFFFFFFFFFFFFFFFA6A9F5FF6769
      EDFF9EA8F3FF646DEDFF1A18E4FF0900E1FF1306E3FF1306E3FF1305E2FF1103
      E2FF1305E2FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF0400E1FF5B57EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF615FEBFF0300E1FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1205E2FF0D00
      E2FF0200E1FF0000DFFF373DE7FFFFFFFFFF0400E1FF1103E2FF1306E3FF1306
      E3FF1306E3FF0800E1FF1C21E4FFF0F4FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFB9BEF6FFACB3F4FFFFFFFFFFFFFFFFFFA8ADF4FF0000E0FF0000
      E0FF7475EFFFFFFFFFFFFFFFFEFF1717E4FF0000E0FF1204E2FF0600E1FF0C0A
      E2FF0500E1FF1306E2FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1002E2FF0A05E2FFFAFAFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF110DE3FF1002E2FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1305E2FF0700E1FF0000E0FF2826
      E5FF7F85EFFFB5B6F6FFBFC8F8FF5259EAFF0000E1FF1305E2FF1306E3FF1306
      E3FF1306E3FF1306E3FF0A00E2FF0000E1FFB8BDF6FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB2B8F5FFB7BCF5FFA9AFF4FF0000DFFF1203E2FF1306
      E3FF0000DFFF817EF0FFFFFFFFFFFFFFFFFF5F64EBFF0000DFFF5D64ECFFFFFF
      FFFF7574EEFF0400E1FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF0000E0FFABABF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5C5
      F8FF0000E0FF1305E2FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF0E00E2FF0000E0FF4648EAFFD4D7F9FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2323E5FF0E00E2FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1102E2FF0000E0FF8588F1FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB7BDF5FF0000DFFF1203E2FF1306E3FF1306
      E3FF1406E3FF0000DFFF868AF1FFFFFFFFFFFFFFFFFFC3C5F8FFA0A6F3FFFFFF
      FFFFA6A9F3FF0000E1FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF0800E1FF4B45E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF726F
      EDFF0100E1FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF0800E1FF0D0CE2FFC2C7F7FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5051EAFF0900E2FF1306E3FF1306
      E3FF1306E3FF1306E3FF1203E2FF0100E1FF0000DFFF0000DFFF7475EDFFE2E5
      FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7377EFFF0000E0FF1306E3FF1306
      E3FF1306E3FF1306E3FF0000E0FF1F24E5FFCED3F9FFFFFFFFFFD0D4F9FF282B
      E6FF0801E2FF1204E2FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1002E2FF140EE3FFFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF302C
      E6FF0D00E2FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF0600E1FF2321E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF8085F0FF0000E1FF1205E2FF1306E3FF1306
      E3FF1306E2FF0500E1FF0000E0FF8183F0FFF1F5FDFFFFFFFFFFFFFDFEFFB0B7
      F5FFB0B4F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2931E6FF0900E2FF1306
      E3FF1306E3FF1306E3FF1306E3FF0C00E2FF0000E0FF5F63ECFF2828E6FF0600
      E1FF1204E2FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E2FF0000E0FFDADBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7FDFF0A04
      E1FF1103E2FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF0C00E2FF1B1AE4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFC1C8F7FF6B6DEEFF0902E2FF0000E1FF1205E2FF1306E3FF1306E3FF1204
      E2FF0000E0FF4E51EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFA3A8F2FFCCD0F8FFFFFFFFFFFFFFFFFFFFFFFFFFECEFFCFF0000E0FF1204
      E2FF1306E3FF1306E3FF1306E3FF1306E3FF1205E2FF0800E1FF0D00E2FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF0000E1FFA2A0F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCDEFBFF0000
      E0FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1204
      E2FF0000E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7378EFFF0000
      E0FF0000DFFF0700E1FF1002E2FF1306E2FF1306E3FF1306E3FF1204E2FF0000
      E0FF9198F2FFFFFFFFFFFFFFFFFFFFFFFFFFF3F5FDFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF828BF0FFE0E4FBFFFFFFFFFFFFFFFFFFFFFFFFFF7475EFFF0000
      E1FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF0500E1FF5E5BECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBCBDF6FF0000
      E0FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF0D00
      E2FF3338E6FFFFFFFFFFFFFFFFFFFFFFFFFFABAEF5FF0604E1FF0000E1FF1203
      E2FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1305E2FF0000E0FF9BA3
      F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F5FDFF939AF2FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF6970EDFFF4F6FEFFFFFFFFFFFFFFFFFFF3F5FDFF0802
      E2FF1103E2FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF0B00E2FF3F3DE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9795F1FF0000
      E1FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1205
      E2FF0000E0FFE6E9FBFFFCFFFEFF4A4CEAFF0000E0FF1001E2FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF0000E0FF636AECFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6BBF6FFBCC0F6FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF717DEEFFFFFEFEFFFFFFFFFFFFFFFFFF2120
      E5FF0F01E2FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF0D00E2FF2927E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8381EFFF0000
      E1FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1102E2FF0B02E2FF0C0BE2FF0500E1FF1305E2FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF0E00E2FF1618E4FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF777EEDFFD1D5
      F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7981EDFFFFFFFFFFC2C5F8FF0000
      E1FF1305E2FF1306E3FF1102E2FF0C00E2FF0A00E1FF0100E1FF0000E0FF0000
      DFFF0000E1FF1204E2FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF0F01E2FF1815E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7D7AEFFF0000
      E1FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1104E2FF1103E2FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1305E2FF0000E0FFD5D9F9FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFACB3F4FF0000E1FF3032E6FFA7AF
      F4FFE0E2FBFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9FEFF5460EBFF0000E0FF0000
      DFFF0000DFFF0000DFFF0706E1FF3636E6FF4E50EBFF787BEFFFA8AFF3FFDADD
      FAFFA8AEF4FF0000E1FF1204E2FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1103E2FF0700E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6A64ECFF0400
      E1FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF0B00E2FF3535E7FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF9399F1FF0000DFFF1001E2FF0100E1FF7C7A
      EFFF8B92F2FFF6F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E9FCFF6467EDFFAFB5
      F4FFDCE1FAFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF908FF1FF0000E1FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1204E2FF0000E0FFFFFFFEFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7CEFFF0000
      E1FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E2FF0000E0FFC1C7F7FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB9C0F6FF0000DFFF1204E2FF1306E3FF1205E2FF0000
      E0FFCBD0F8FF7E89F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFB2BAF5FF0000E1FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1103E2FF0802E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8684EFFF0000
      E1FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1002E2FF1111E2FFFFFFFEFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF1112E3FF0E00E2FF1306E3FF1306E3FF1306E3FF1001
      E2FF0400E2FFF9FCFDFF7F88EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF5FAFEFF110AE3FF1002E2FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF0E00E2FF201DE4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA2A1F3FF0000
      E1FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF0C00E2FF3734E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFA8ADF4FF0000E0FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF0700E1FF3C3DE8FFFFFFFFFF7C86F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF0F0FCFFD6D6F9FFC8CDF9FFC0C4F6FFA4A8F3FF6065ECFF2E30E6FF1B1C
      E3FF0000E1FF0E00E2FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF0D00E2FF2D2BE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4C5F7FF0000
      E0FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF0600E1FF5D60ECFFFFFFFFFFFFFFFFFFFEFFFFFFFCFC
      FEFFFFFFFFFF4C4DE9FF0000E0FF0D00E2FF0F00E2FF1002E2FF1305E3FF1306
      E3FF1406E3FF0000E0FF8387F0FFFFFFFFFF898FF0FFA0A6F2FF818EF1FF9497
      F1FFB6BAF5FFBFC1F6FFC6CBF8FFE5E5FBFFFEFEFEFFFFFFFEFFD0D5F9FF0C06
      E2FF0F00E2FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF0B00E2FF4342E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2E3FBFF0000
      DFFF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF0600E1FF6269ECFFFFFFFFFFFFFFFFFFC6CCF8FFA1A3
      F2FF7F8DF1FF4F4EEBFF4142E9FF3333E7FF1B1EE3FF0D07E2FF0000DFFF0000
      DFFF0000E1FF0900E1FF0000E0FF9395F2FFFFFFFEFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848A
      F1FF0400E1FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF0200E1FF736FEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFEFF140F
      E2FF1002E2FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF0C00E2FF3737E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F9FEFFCBD1
      F8FF8D8FF1FF5354EBFF282CE5FF0000DDFF0000DEFF0000E0FF4249E8FF888F
      F1FFCDD3F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6E75
      EDFF0600E1FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF0000E0FFADADF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3B35
      E8FF0B00E2FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1204E2FF0000E1FFE7EBFBFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECEEFBFFB1B4F5FF565DEBFF0000
      DFFF0000E0FF0000DFFF0F0CE2FF575DEBFF9A9BF2FFE8EBFBFF939BF2FF0000
      E0FF1204E2FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E2FF0000DFFFE2E1FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8785
      F0FF0000E1FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF0D00E2FF1516E4FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9398
      F2FF0000E1FF1305E2FF1001E2FF0900E1FF0000E1FF0000DFFF0000E1FF1205
      E2FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF0E00E2FF1F1DE4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8D8
      FAFF0000E1FF1205E2FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF0A00E2FF0000E1FF3939E7FF3536
      E7FF4243E9FF7078EEFF9395F1FF9FA5F3FFDDE1FAFFE0E4FBFFE2E3FBFFFAFA
      FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCAD3
      F9FF0000E0FF1305E3FF1306E3FF1306E3FF1306E3FF1406E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF0400E1FF5E5AECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF1913E4FF0F01E2FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1204E2FF0000E0FF3F41
      E7FFCACEF8FFF2F1FCFFDCDBFAFF8C90F1FF272FE5FF7C83EFFFB1BAF5FFC0C6
      F6FF8996F3FFA8ACF2FFBCBFF6FFC4CBF8FFEEEFFCFFFFFFFFFFFFFFFFFF5F62
      EBFF0500E1FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1305E2FF0000E0FFC4C4F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF7A78EEFF0000E1FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF0600E1FF4E53EAFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9DDF9FF0000DEFF130DE3FF4E50
      EAFFBABFF7FFFCFFFEFFF2F1FDFFD3D9FAFFC1C3F6FF9A9FF2FF1B1CE4FF0300
      E1FF1305E2FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1001E2FF110EE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFEEEDFCFF0000E1FF1204E2FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1305E2FF0000DFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5859EBFF0700E1FF0800
      E1FF0000E0FF0702E2FF4D54EBFFB8BDF7FFE4E6FBFF585CECFF0300E1FF1305
      E2FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF0000E1FF7D7DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF4C4AE9FF0700E1FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF0E00E2FF2A2CE5FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFC3F6FF0000E0FF1406
      E3FF1305E2FF1103E2FF0900E1FF0000E1FF0000E0FF0800E1FF1306E2FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1103
      E2FF0000E1FFFAF9FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFE8E7FBFF0000E0FF1205E2FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF0E00E2FF2327E4FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBC0F6FF0000E0FF1306
      E3FF1306E3FF1306E3FF1306E3FF1305E2FF1305E2FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1305E3FF0300
      E1FF6E6EEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF5757EAFF0500E1FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1406E3FF0000DFFFFCFFFEFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5052EBFF0A00E1FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1204E2FF0000
      E0FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF0000E0FF1204E2FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF0A00E2FF383EE7FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7CCF8FF0000DFFF1305E2FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF0000E0FF9A99
      F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFABAAF4FF0000DFFF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF0200E1FF2924
      E6FFBDBFF7FFEAECFBFFDCDCFAFF7777EFFF0000E0FF1000E2FF0C00E2FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF0900E2FF2723E5FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4B49E9FF0300E1FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF0C00
      E2FF0000E0FF0501E1FF0000E1FF0000E0FF1E13E4FF1813E4FF494FE8FF0000
      E1FF1305E2FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1103E2FF0000E0FFF2F1FDFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0A06E2FF0C00E2FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E2FF1103E2FF0E03E2FF2A2DE6FF424AE8FF0601E1FF454CE8FF9294
      F2FF0000E0FF1305E2FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1305E2FF0000DFFFB5B3F5FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9EBFCFF0000E1FF0E00
      E2FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF0E00E2FF3737E7FF3F42E8FF0100E1FF7071EDFF0000E0FF595C
      EBFF9AA3F2FF0200E1FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1305E2FF0000E0FF7777EEFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4D4F9FF0000
      E1FF0E00E2FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF0900E1FF6761EDFF2F2AE7FF0000E0FFA9B6F4FF0000E0FF0A00
      E2FF0000E0FF1406E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1305E2FF0000E0FF6A69EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCF
      F8FF0000E1FF0D00E2FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF0100E1FF9CA2F2FF221DE6FF0800E1FF646AEDFF5D61ECFF0900
      E1FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1305E2FF0000E0FF6261ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFDDDEFAFF0300E1FF0700E1FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1204E2FF0F04E2FF0F04E2FF1103E2FF0A07E2FFDFE8FBFF0000
      E0FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1103
      E2FF0000DFFF7373EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF5F4FDFF2522E5FF0000E0FF1305E2FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1204E2FF1205E2FF1305E2FF0E02E2FF1C1AE4FF0F02
      E2FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF0A00E2FF0000
      E0FFA8A5F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF6967EDFF0000DFFF0E00E2FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1305E2FF1002E2FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1305E2FF0000E0FF1B16E4FFE4E4
      FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2D2F9FF0E0BE1FF0000E0FF1002
      E2FF1306E2FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1204E2FF0700E1FF0000DFFF817CEFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9594F2FF0600
      E1FF0000E0FF0E00E2FF1205E2FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1305
      E3FF1103E2FF0600E1FF0000E0FF504DE9FFF7F6FDFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF9393F1FF1714E4FF0000E1FF0400E1FF0F01E2FF1205E2FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306
      E3FF1306E3FF1306E3FF1306E3FF1306E3FF1306E3FF1103E2FF0A00E2FF0000
      E0FF0200E1FF5958EAFFEEEDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFCAC9F8FF5D59EBFF1611E3FF0000E0FF0000E0FF0600
      E1FF0D00E2FF0F01E2FF1104E2FF1306E3FF1306E3FF1306E3FF1306E3FF1205
      E2FF1002E2FF0E00E2FF0A00E2FF0000E1FF0000E0FF0A05E2FF362FE7FFA1A1
      F3FFFEFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D7FAFF9C9CF2FF5751
      EAFF2C29E6FF1A16E3FF0600E1FF0000DFFF0000DFFF0000DFFF0000DFFF0000
      E0FF120FE2FF2422E5FF443FE9FF807FEEFFC0C0F7FFF5F5FDFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFEFFF2F1FDFFE5E4FCFFE3E3FCFFE0E1FCFFE4E5FBFFEAE9
      FCFFFDFCFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF9A9A9BFF858586FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5A5A5BFFECECEBFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2D2
      D2FFE3E3E3FFFFFFFFFFE9E9EAFFC1C1C1FFC4C4C4FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF5F5F6FFC6C6C6FFFCFCFCFFFFFFFFFFFFFFFFFFDDDD
      DDFFCBCBCBFFFFFFFFFFF1F1F1FFC6C6C6FFEFEFEFFFF5F5F5FFDDDDDDFFE2E2
      E2FFCACACAFFCCCCCCFFC8C8C8FFC6C6C7FFD4D4D4FFFFFFFFFFF5F5F5FFC8C8
      C8FFE4E4E4FFFFFFFFFFD0D0D0FFFFFFFFFFE5E5E5FFC4C4C4FFDFDFE0FFFFFF
      FFFFFFFFFFFFE3E3E3FFD2D2D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5656
      57FF969696FFFFFFFFFF5E5E5FFF676768FF535354FF7F7F80FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFE0E0E0FF272729FFEFEFEFFFFFFFFFFFFCFCFCFF2C2C
      2DFFABABACFFE3E3E3FF3C3C3DFF5F5F60FF5C5C5CFF474749FF939395FFE6E6
      E5FF343435FF585858FF6F6F70FF656566FF8F8F90FFFBFBFBFF444445FF5858
      59FF5E5E5EFF4F4F50FF6D6D6EFFFFFFFFFF616162FF69696AFF484849FF9494
      95FFFFFFFFFF979798FF5A5A5AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6565
      66FFA0A0A0FFFFFFFFFFFFFFFFFFFFFFFFFFD0D0D0FF3B3B3CFFFDFDFDFFFFFF
      FFFFFFFFFFFFFFFFFFFFE4E4E4FF39393AFFF9F9F8FFFFFFFFFF6C6C6EFF6D6D
      6EFFFFFFFFFFA2A2A2FF606061FFFFFFFFFFFFFFFFFF3C3C3DFFC2C2C2FFFFFF
      FFFFB2B2B2FF555556FFFFFFFFFFFFFFFFFFFFFFFFFFC4C4C4FF464648FFFFFF
      FFFFFFFFFFFF5B5B5CFF9F9FA0FFFFFFFFFFFFFFFFFFFFFFFFFFB7B7B6FF4949
      4AFFFFFFFFFFA0A0A1FF696969FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6565
      66FFA0A0A0FFFFFFFFFFFCFCFCFF858585FF3F3F40FFB1B1B1FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFE4E4E4FF3A3A3BFFB5B5B5FFCACACAFF313132FFFEFE
      FEFFFFFFFFFFE7E7E7FF3A3A3BFF79797AFFA1A1A1FF474748FFBEBEBEFFFFFF
      FFFFFFFFFFFF7C7C7DFF7B7B7DFFFFFFFFFFFFFFFFFFFAFAF9FF49494BFF6969
      6AFF9F9F9FFF575758FF9D9D9EFFFFFFFFFFF3F3F3FF7A7A7BFF3B3B3CFFCBCB
      CBFFFFFFFFFF9F9FA1FF686868FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6565
      66FFA0A0A0FFFFFFFFFF474747FFA0A0A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFE4E4E4FF464647FF414142FF3E3E3FFFBFBFBFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B0B0FFABABABFF444445FFC3C3C3FFFFFF
      FFFFFFFFFFFFFFFFFFFF474747FFC4C4C4FFFFFFFFFFFFFFFFFFFFFFFFFFBBBB
      BAFFA8A8A9FF58585AFFA0A0A0FFFFFFFFFF3E3E3FFFB1B1B2FFFFFFFFFFFFFF
      FFFFFFFFFFFFA3A3A5FF686868FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6565
      66FFA1A1A1FFFFFFFFFF2C2C2EFF9E9E9EFFA7A7A7FFCDCDCDFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFE4E4E3FF414142FFC9C9C9FF2B2B2DFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFAAAAAAFFBCBCBCFFABABACFF353536FFFCFCFCFFDEDE
      DEFFAEAEAEFFBABABAFF9F9F9FFF2D2D2FFFF2F2F2FFFFFFFFFFBCBCBCFFB4B4
      B4FFB6B6B6FF333334FFE8E8E8FFF4F4F5FF353536FFA5A5A5FFA0A0A0FFDFDF
      DFFFF7F7F7FF747475FF666666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6565
      66FFA0A0A0FFFFFFFFFFE1E1E1FF7E7E7FFF818181FFD7D7D8FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFE4E4E4FF38383AFFFFFFFFFF9A9A9BFF565658FFFFFF
      FFFFFFFFFFFFFFFFFFFFAEAEAFFF767677FF828282FFE1E1E1FFFFFFFFFFC2C2
      C2FF717171FF797979FF7E7E7EFF828283FFA7A7A7FFFFFFFFFFC1C1C1FF7878
      78FF808080FFCFCFCFFFFFFFFFFFFFFFFFFFD4D4D4FF7D7D7DFF868686FFE1E1
      E1FFE7E7E7FF717172FF9D9D9EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6161
      62FF9D9D9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFE2E2E2FF333335FFF2F2F1FFFFFFFFFF515152FF9696
      97FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8585
      86FFB3B3B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFE8E8E8FF5F5F60FFF3F3F3FFFFFFFFFFEDEDEDFF5555
      56FFE7E7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E5
      E5FFF4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4B4B
      4DFF7E7E80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5
      F5FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF}
    Properties.GraphicClassName = 'TdxPNGImage'
    Properties.PopupMenuLayout.MenuItems = []
    Properties.ReadOnly = True
    Properties.ShowFocusRect = False
    Style.BorderColor = clNone
    Style.BorderStyle = ebsNone
    TabOrder = 18
    Transparent = True
    Visible = False
    Height = 140
    Width = 118
  end
  object GridPersonelLevel: TcxGridKadir
    Left = 911
    Top = 266
    Width = 260
    Height = 159
    TabOrder = 19
    Visible = False
    ExceleGonder = False
    PopupForm = False
    object GridDegerlendirme: TcxGridDBBandedTableView
      Navigator.Buttons.OnButtonClick = GridDegerlendirmeNavigatorButtonsButtonClick
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Edit.Hint = 'D'#252'zenle'
      Navigator.Buttons.Edit.Visible = True
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
      OptionsView.GridLines = glHorizontal
      OptionsView.GroupByBox = False
      OptionsView.GroupByHeaderLayout = ghlHorizontal
      Styles.Inactive = cxStyle1
      Styles.Group = cxStyle3
      Bands = <
        item
          Caption = 'Personel De'#287'erlendirme'
          HeaderAlignmentHorz = taLeftJustify
          Styles.Header = AnaForm.cxStyle1
          Width = 238
        end>
      object cxGridDBBandedColumn10: TcxGridDBBandedColumn
        Caption = 'Tarihi'
        DataBinding.FieldName = 'Tarih'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 87
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn11: TcxGridDBBandedColumn
        Caption = 'Seviye'
        DataBinding.FieldName = 'personelLevel'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 83
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object Tip: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Tip'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Items = <>
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Styles.Content = cxStyle1
        Width = 68
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
    end
    object cxGridLevel4: TcxGridLevel
      GridView = GridDegerlendirme
    end
  end
  object CalismaAlani: TcxCheckGroup
    Tag = -100
    Left = 976
    Top = 19
    Alignment = alCenterCenter
    EditValue = '0110'
    Properties.Columns = 4
    Properties.EditValueFormat = cvfStatesString
    Properties.Items = <
      item
        Caption = 'Tam'
      end
      item
        Caption = 'Mekanik'
      end
      item
        Caption = 'Elektrik'
      end
      item
        Caption = 'Comm'
      end>
    Properties.OnEditValueChanged = seansGunleriPropertiesEditValueChanged
    TabOrder = 20
    Visible = False
    Height = 33
    Width = 270
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 40
    Top = 184
    object Kapat1: TMenuItem
      Tag = 9999
      Caption = 'Kapat'
      ImageIndex = 18
      Visible = False
      OnClick = cxKaydetClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object SmsGnder1: TMenuItem
      Tag = -28
      Caption = 'Sms G'#246'nder'
      ImageIndex = 94
      OnClick = cxButtonCClick
    end
    object AKart1: TMenuItem
      Tag = -25
      Caption = 'A'#351#305' Kart'#305
      ImageIndex = 60
      OnClick = cxButtonCClick
    end
    object T2: TMenuItem
      Tag = -35
      Caption = 'Tan'#305' Kart'#305
      ImageIndex = 74
      OnClick = cxButtonCClick
    end
    object Epikriz1: TMenuItem
      Tag = -26
      Caption = #304#351'e Giri'#351' Muayene Formu'
      ImageIndex = 28
      OnClick = cxButtonCClick
    end
    object R1: TMenuItem
      Tag = 130
      Caption = 'Re'#231'ete'
      ImageIndex = 97
      OnClick = cxButtonCClick
    end
    object N3: TMenuItem
      Tag = 140
      Caption = 'Personel E'#287'itimleri'
      ImageIndex = 63
      Visible = False
      OnClick = cxButtonCClick
    end
    object HastaRaporlar1: TMenuItem
      Tag = -29
      Caption = 'Hasta Raporlar'#305
      ImageIndex = 98
      Visible = False
      OnClick = cxButtonCClick
    end
    object A1: TMenuItem
      Tag = -51
      Caption = 'Anamnez / Muayene Detay'#305
      ImageIndex = 56
      OnClick = cxButtonCClick
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object T1: TMenuItem
      Tag = -32
      Caption = 'Tetkik Sonu'#231
      ImageIndex = 47
      OnClick = cxButtonCClick
    end
    object lemler1: TMenuItem
      Tag = -20
      Caption = #304#351'lemler'
      ImageIndex = 79
      object MenucxYeni: TMenuItem
        Tag = 2
        Caption = 'Yeni Personel'
        ImageIndex = 82
        OnClick = cxKaydetClick
      end
      object MenucxKaydet: TMenuItem
        Action = PersonelKaydet
        Caption = 'Personel Kaydet'
      end
      object MenucxIptal: TMenuItem
        Tag = 1
        Caption = 'Personel Kart Sil'
        ImageIndex = 33
        OnClick = cxKaydetClick
      end
      object GeliA1: TMenuItem
        Tag = -27
        Action = YeniMuayene
        Caption = 'Yeni Muayene'
      end
      object G1: TMenuItem
        Tag = -31
        Caption = 'Muayeneyi D'#252'zenle'
        ImageIndex = 49
        Visible = False
        OnClick = cxButtonCClick
      end
      object G2: TMenuItem
        Tag = -33
        Caption = 'Se'#231'ili Muayeneyi Sil'
        ImageIndex = 50
        OnClick = cxButtonCClick
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = ADO_Gelisler
    Left = 120
    Top = 232
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 224
    Top = 112
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = 8404992
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clMaroon
    end
  end
  object ADO_Gelisler: TADOQuery
    Connection = DATALAR.ADOConnection2
    Parameters = <>
    Left = 64
    Top = 232
  end
  object ListeAc3: TListeAc
    ListeBaslik = 'Primer Tanilar (Hastal'#305'klar)'
    TColcount = 3
    TColsW = '40,300,300'
    Table = 'PrimerTanilar'
    Conn = DATALAR.ADOConnection2
    Filtercol = 1
    BaslikRenk = clBackground
    DipRenk = clBackground
    ButtonImajIndex = 132
    Kolonlar.Strings = (
      'kod'
      'tani'
      'aciklama')
    KolonBasliklari.Strings = (
      'Tan'#305' Kod'
      'Tani Tan'#305'm'#305
      'Aciklama Bilgisi')
    Calistir = fgEvet
    BiriktirmeliSecim = False
    SiralamaKolonu = 'tani'
    Grup = False
    GrupCol = 0
    Left = 384
    Top = 117
  end
  object PopupMenu2: TPopupMenu
    Left = 344
    Top = 136
  end
  object cxStyleRepository2: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle3: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = 4194432
    end
  end
  object Meslekler: TListeAc
    TColcount = 2
    TColsW = '80,250'
    Table = 'MeslekKodlari'
    Conn = DATALAR.ADOConnection2
    Filtercol = 1
    BaslikRenk = clBlack
    DipRenk = clBlack
    Kolonlar.Strings = (
      'kod'
      'tanimi')
    KolonBasliklari.Strings = (
      'Meslek Kodu'
      'Meslek Tan'#305'm'#305)
    Calistir = fgEvet
    BiriktirmeliSecim = False
    SiralamaKolonu = 'tanimi'
    SkinName = 'lilian'
    Grup = False
    GrupCol = 0
    Left = 448
    Top = 120
  end
  object ActionList1: TActionList
    Images = DATALAR.imag24png
    Left = 752
    Top = 264
    object PersonelKaydet: TAction
      Caption = 'PersonelKaydet'
      ImageIndex = 83
      ShortCut = 16459
      OnExecute = cxKaydetClick
    end
    object YeniMuayene: TAction
      Caption = 'YeniMuayene'
      ImageIndex = 48
      ShortCut = 16461
      OnExecute = cxButtonCClick
    end
  end
end
