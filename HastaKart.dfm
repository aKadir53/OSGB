object frmHastaKart: TfrmHastaKart
  Tag = 90
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'frmHastaKart'
  ClientHeight = 614
  ClientWidth = 806
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
      ExplicitHeight = 121
      Height = 96
      Width = 104
    end
    object cxFotoEkleButton: TcxButton
      Tag = -50
      Left = 3
      Top = 111
      Width = 104
      Height = 28
      Align = alBottom
      Caption = 'Ekle'
      TabOrder = 1
      OnClick = cxButtonCClick
      ExplicitLeft = 2
      ExplicitTop = 119
      ExplicitWidth = 106
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
    Left = 8
    Top = 416
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
    Width = 800
    object cxGridGelis: TcxGrid
      Left = 3
      Top = 15
      Width = 794
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
      ExplicitWidth = 796
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
    EditValue = '0'
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
      end>
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
          Width = 690
        end>
      object GridEgitimColumn1: TcxGridDBBandedColumn
        Caption = 'Personel Ad'#305
        DataBinding.FieldName = 'PersonelAdiSoyadi'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
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
        Caption = 'Ba'#351'lama Tarihi'
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
        PropertiesClassName = 'TcxMemoProperties'
        Properties.ScrollBars = ssVertical
        Properties.VisibleLineCount = 3
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
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 72
    Top = 64
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
    Left = 48
    Top = 120
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
    Left = 16
    Top = 120
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
    Left = 632
    Top = 320
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
