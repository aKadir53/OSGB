object frmFirmaListe: TfrmFirmaListe
  Left = 680
  Top = 81
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'frmFirmaListe'
  ClientHeight = 601
  ClientWidth = 1167
  Color = 13750737
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxListPanel: TcxGroupBox
    Left = 0
    Top = 38
    Align = alClient
    PanelStyle.Active = True
    TabOrder = 0
    Height = 563
    Width = 1167
    object cxGrid2: TcxGridKadir
      Left = 2
      Top = 2
      Width = 1163
      Height = 486
      Align = alClient
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 0
      LevelTabs.ImageBorder = 2
      LevelTabs.Style = 1
      ExcelFileName = 'FirmaListesi'
      ExceleGonder = True
      object Liste: TcxGridDBTableView
        PopupMenu = PopupMenu1
        OnDblClick = ListeDblClick
        Navigator.Buttons.First.Visible = True
        Navigator.Buttons.PriorPage.Visible = True
        Navigator.Buttons.Prior.Visible = True
        Navigator.Buttons.Next.Visible = True
        Navigator.Buttons.NextPage.Visible = True
        Navigator.Buttons.Last.Visible = True
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = True
        Navigator.Buttons.SaveBookmark.Visible = True
        Navigator.Buttons.GotoBookmark.Visible = True
        Navigator.Buttons.Filter.Visible = True
        FilterBox.CustomizeDialog = False
        OnFocusedRecordChanged = ListeFocusedRecordChanged
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Filter.Active = True
        DataController.Filter.TranslateBetween = True
        DataController.Filter.TranslateLike = True
        DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = 'Listelen Kay'#305't :#0'
            Kind = skCount
            FieldName = 'HASTAADI'
          end>
        DataController.Summary.SummaryGroups = <>
        Filtering.MRUItemsList = False
        Filtering.ColumnMRUItemsList = False
        FilterRow.InfoText = 'Arama Sat'#305'r'#305
        FilterRow.SeparatorWidth = 2
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        NewItemRow.InfoText = 'Kay'#305't Ekle'
        OptionsBehavior.CellHints = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnHidingOnGrouping = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsView.NavigatorOffset = 20
        OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
        OptionsView.CellAutoHeight = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 35
        OptionsView.RowSeparatorColor = clBlack
        Styles.OnGetContentStyle = ListeStylesGetContentStyle
        Styles.Group = cxStyle2
        Styles.Indicator = cxStyle1
        object ListeSirketKod: TcxGridDBColumn
          Caption = #350'irket Kodu'
          DataBinding.FieldName = 'SirketKod'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object Listetanimi: TcxGridDBColumn
          Caption = #350'irket Ad'#305
          DataBinding.FieldName = 'tanimi'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 222
        end
        object ListesubeTanim: TcxGridDBColumn
          Caption = #350'ube'
          DataBinding.FieldName = 'subeTanim'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 87
        end
        object ListeIGU: TcxGridDBColumn
          Caption = #304#351' G'#252'venlik Uzman'#305
          DataBinding.FieldName = 'IGU'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object ListeIGUAdi: TcxGridDBColumn
          Caption = #304#351' G'#252'venlik Uzman'#305
          DataBinding.FieldName = 'IGUAdi'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 79
        end
        object ListesubeDoktor: TcxGridDBColumn
          DataBinding.FieldName = 'subeDoktor'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object ListeDrAdi: TcxGridDBColumn
          Caption = #304#351' Yeri Hekimi'
          DataBinding.FieldName = 'DrAdi'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 84
        end
        object ListesubeKod: TcxGridDBColumn
          DataBinding.FieldName = 'subeKod'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object Listedoktor: TcxGridDBColumn
          DataBinding.FieldName = 'doktor'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object ListeNaceKod: TcxGridDBColumn
          Caption = 'Nace Kod'
          DataBinding.FieldName = 'NaceKod'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object ListeanaFaliyet: TcxGridDBColumn
          Caption = 'Ana Faliyet'
          DataBinding.FieldName = 'anaFaliyet'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 319
        end
        object ListetehlikeSinifi: TcxGridDBColumn
          Caption = 'Tehlike Sinifi'
          DataBinding.FieldName = 'tehlikeSinifi'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 58
        end
        object ListeSGKKod: TcxGridDBColumn
          DataBinding.FieldName = 'SGKKod'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 159
        end
        object ListecalisanSayisi: TcxGridDBColumn
          Caption = #199'alisan Sayisi'
          DataBinding.FieldName = 'calisanSayi'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 42
        end
        object ListeTel1: TcxGridDBColumn
          DataBinding.FieldName = 'Tel1'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 66
        end
        object ListeTel2: TcxGridDBColumn
          DataBinding.FieldName = 'Tel2'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 66
        end
        object ListeFax: TcxGridDBColumn
          DataBinding.FieldName = 'Fax'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 66
        end
        object ListeYetkili: TcxGridDBColumn
          DataBinding.FieldName = 'Yetkili'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 96
        end
        object ListeyetkiliTel: TcxGridDBColumn
          DataBinding.FieldName = 'yetkiliTel'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object Listeyetkilimail: TcxGridDBColumn
          DataBinding.FieldName = 'yetkilimail'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 120
        end
        object ListeSEHIR: TcxGridDBColumn
          DataBinding.FieldName = 'SEHIR'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object ListeILCE: TcxGridDBColumn
          DataBinding.FieldName = 'ILCE'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object ListeMAHALLE: TcxGridDBColumn
          DataBinding.FieldName = 'MAHALLE'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object ListeCADDE: TcxGridDBColumn
          DataBinding.FieldName = 'CADDE'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object ListeBUCAK: TcxGridDBColumn
          DataBinding.FieldName = 'BUCAK'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object ListeKOY: TcxGridDBColumn
          DataBinding.FieldName = 'KOY'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object ListeSOKAK: TcxGridDBColumn
          DataBinding.FieldName = 'SOKAK'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object ListeAdres: TcxGridDBColumn
          DataBinding.FieldName = 'Adres'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 118
        end
        object ListeVD: TcxGridDBColumn
          DataBinding.FieldName = 'VD'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 47
        end
        object ListeVN: TcxGridDBColumn
          DataBinding.FieldName = 'VN'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 66
        end
        object ListeIstigal: TcxGridDBColumn
          DataBinding.FieldName = 'Istigal'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object ListeIsguvenlikUzman: TcxGridDBColumn
          DataBinding.FieldName = 'IsguvenlikUzman'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object ListeSorunluRevirPersonel: TcxGridDBColumn
          DataBinding.FieldName = 'SorunluRevirPersonel'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object ListeAktif: TcxGridDBColumn
          DataBinding.FieldName = 'Aktif'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 44
        end
        object ListeUser_ID: TcxGridDBColumn
          DataBinding.FieldName = 'User_ID'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object ListeDate_Create: TcxGridDBColumn
          DataBinding.FieldName = 'Date_Create'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object ListeIsyeriSicilNo: TcxGridDBColumn
          DataBinding.FieldName = 'subeSicilNo'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 84
        end
        object ListeBolgeMudurlukSicilNo: TcxGridDBColumn
          DataBinding.FieldName = 'BolgeMudurlukSicilNo'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 121
        end
        object ListeIGU_1: TcxGridDBColumn
          DataBinding.FieldName = 'IGU_1'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object ListeDigerSaglikPers: TcxGridDBColumn
          DataBinding.FieldName = 'DigerSaglikPers'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
      end
      object cxGridLevel1: TcxGridLevel
        Caption = 'Hastalar'
        GridView = Liste
        Options.DetailFrameColor = clBlack
        Options.DetailFrameWidth = 0
      end
    end
    object uyari: TcxPageControl
      Left = 2
      Top = 488
      Width = 1163
      Height = 73
      Align = alBottom
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Visible = False
      Properties.ActivePage = cxTabSheet1
      Properties.Images = DATALAR.ImageList1
      ClientRectBottom = 66
      ClientRectLeft = 3
      ClientRectRight = 1156
      ClientRectTop = 35
      object cxTabSheet1: TcxTabSheet
        Caption = 'Uyar'#305' Bilgisi'
        ImageIndex = 133
        object txtUyariMesaj: TcxMemo
          Left = 0
          Top = 0
          Align = alClient
          Properties.ScrollBars = ssVertical
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'McSkin'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'McSkin'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'McSkin'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'McSkin'
          TabOrder = 0
          Height = 31
          Width = 1153
        end
      end
    end
  end
  object cxHastaListePanelBaslik: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    PanelStyle.Active = True
    TabOrder = 1
    Visible = False
    Height = 38
    Width = 1167
    object DiyalizTip: TcxRadioGroup
      Left = 4
      Top = 4
      Alignment = alCenterCenter
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = 'Hemodiyaliz'
          Value = 'H'
        end
        item
          Caption = 'Periton Ayaktan'
          Value = 'P'
        end
        item
          Caption = 'Periton Aletli'
          Value = 'A'
        end>
      ItemIndex = 0
      TabOrder = 0
      Height = 32
      Width = 201
    end
    object Tip: TcxRadioGroup
      Left = 207
      Top = 4
      Alignment = alCenterCenter
      Properties.Items = <
        item
          Caption = 'Aktif'
          Value = '1'
        end
        item
          Caption = 'Pasif'
          Value = '0'
        end>
      ItemIndex = 0
      TabOrder = 1
      Height = 32
      Width = 74
    end
    object ktip: TcxComboBox
      Left = 283
      Top = 4
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownRows = 12
      Properties.Items.Strings = (
        '1 - SGK'
        '99 - Yurt D'#305#351#305' Sigortal'#305'lar'
        '8 - '#220'cretli'
        '98 - '#214'zel Kurum - Sigorta')
      Style.Font.Charset = TURKISH_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      TabOrder = 2
      Text = '1 - SGK'
      Width = 104
    end
    object txtay: TcxComboBox
      Left = 400
      Top = 3
      ParentFont = False
      PopupMenu = popupYil
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownRows = 12
      Properties.Items.Strings = (
        'OCAK'
        'SUBAT'
        'MART'
        'NISAN'
        'MAYIS'
        'HAZIRAN'
        'TEMMUZ'
        'AGUSTOS'
        'EYLUL'
        'EKIM'
        'KASIM'
        'ARALIK')
      Style.Font.Charset = TURKISH_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      TabOrder = 3
      Width = 37
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 496
    Top = 136
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBackground
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 16777088
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object ikazRed: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object ikazYellow: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 320
    Top = 222
    object U1: TMenuItem
      Tag = -1
      Caption = 'Uzman De'#287'i'#351'tir'
      ImageIndex = 115
      OnClick = cxButtonCClick
    end
    object D1: TMenuItem
      Tag = -2
      Caption = 'Doktor De'#287'i'#351'tir'
      ImageIndex = 49
      OnClick = cxButtonCClick
    end
    object E1: TMenuItem
      Tag = 9997
      Caption = 'Excele G'#246'nder'
      ImageIndex = 75
      OnClick = cxButtonCClick
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object N2: TMenuItem
      Tag = -3
      Caption = #304'SG Ekipleri'
      ImageIndex = 17
      OnClick = cxButtonCClick
    end
    object F1: TMenuItem
      Tag = -4
      Caption = 'Firma Yetkilileri'
      ImageIndex = 44
      OnClick = cxButtonCClick
    end
    object F2: TMenuItem
      Tag = -5
      Caption = 'Firma Ekipman Listesi'
      ImageIndex = 81
      OnClick = cxButtonCClick
    end
    object F4: TMenuItem
      Tag = -7
      Caption = 'Firma Ekipman Kontrol Listesi'
      ImageIndex = 7
      OnClick = cxButtonCClick
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object F3: TMenuItem
      Tag = -6
      Caption = 'Firma  Sorgula'
      ImageIndex = 76
      OnClick = cxButtonCClick
    end
  end
  object popupYil: TPopupMenu
    OnPopup = popupYilPopup
    Left = 384
    Top = 216
    object N1: TMenuItem
      Caption = 'T'#252'm Gruplar'#305' A'#231
      OnClick = N1Click
    end
    object K1: TMenuItem
      Tag = 1
      Caption = 'Gruplar'#305' Kapat'
      OnClick = N1Click
    end
  end
  object ADOTable1: TADOTable
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    TableName = 'ILACLAR'
    Left = 176
    Top = 128
  end
  object DataSource2: TDataSource
    DataSet = ADOTable1
    Left = 176
    Top = 176
  end
end
