object frmHastaListe: TfrmHastaListe
  Left = 680
  Top = 81
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'frmHastaListe'
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
  OnShow = FormShow
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
      ExceleGonder = False
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
            Column = HastaAdi
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
        object TC: TcxGridDBColumn
          Caption = 'Tc Kimlik No'
          DataBinding.FieldName = 'TCKIMLIKNO'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 84
        end
        object ListeColumndosyaNo: TcxGridDBColumn
          Caption = 'Dosya'
          DataBinding.FieldName = 'dosyaNo'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Options.Editing = False
          Width = 50
        end
        object HastaAdi: TcxGridDBColumn
          Caption = 'Ad'#305
          DataBinding.FieldName = 'HASTAADI'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 95
        end
        object HastaSoyadi: TcxGridDBColumn
          Caption = 'Soyad'#305
          DataBinding.FieldName = 'HASTASOYADI'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 105
        end
        object ListeColumn4: TcxGridDBColumn
          Caption = 'Tip'
          DataBinding.FieldName = 'Aktif'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = DATALAR.imag24png
          Properties.Items = <
            item
              Description = 'Aktif'
              ImageIndex = 17
              Value = '1'
            end
            item
              Description = 'Pasif'
              Value = '0'
            end>
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 68
        end
        object ListeColumn6: TcxGridDBColumn
          Caption = #214'zel'
          DataBinding.FieldName = 'ozeldurum'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = DATALAR.imag24png
          Properties.Items = <
            item
              ImageIndex = 4
              Value = '1'
            end
            item
              Value = '0'
            end>
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 31
        end
        object Kilo: TcxGridDBColumn
          Caption = 'Kilo'
          DataBinding.FieldName = 'kilo'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 38
        end
        object ListeColumn7: TcxGridDBColumn
          Caption = 'Kronik Hastal'#305'k'
          DataBinding.FieldName = 'KronikHastalik'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = DATALAR.imag24png
          Properties.Items = <
            item
              ImageIndex = 0
              Value = '1'
            end>
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 37
        end
        object ListeColumn8: TcxGridDBColumn
          Caption = 'AntiHbs'
          DataBinding.FieldName = 'antiHbs'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = DATALAR.imag24png
          Properties.Items = <
            item
              ImageIndex = 0
              Value = '+'
            end>
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 43
        end
        object ListeColumn2: TcxGridDBColumn
          Caption = 'Ya'#351#305
          DataBinding.FieldName = 'yas'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Options.Editing = False
          Width = 40
        end
        object ListeColumn13: TcxGridDBColumn
          Caption = 'Cinsiyet'
          DataBinding.FieldName = 'CINSIYETI'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = DATALAR.imag24png
          Properties.Items = <
            item
              Description = 'Erkek'
              ImageIndex = 44
              Value = 0
            end
            item
              Description = 'Bayan'
              ImageIndex = 38
              Value = 1
            end>
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 56
        end
        object ListeColumn3: TcxGridDBColumn
          Caption = #304'li'
          DataBinding.FieldName = 'il'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Options.Editing = False
          Width = 80
        end
        object ListeColumn5: TcxGridDBColumn
          Caption = #304'l'#231'esi'
          DataBinding.FieldName = 'ilce'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Options.Editing = False
          Width = 80
        end
        object ListeColumn9: TcxGridDBColumn
          Caption = 'Mahallesi'
          DataBinding.FieldName = 'mahalle'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Options.Editing = False
          Width = 80
        end
        object ListeColumn10: TcxGridDBColumn
          Caption = 'Son Muayene'
          DataBinding.FieldName = 'EnsonkiPeryodikMuayeneTarihi'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 80
        end
        object ListeColumn11: TcxGridDBColumn
          Caption = 'Bir Sonraki Muayene'
          DataBinding.FieldName = 'SonrakiPeryodikMuayeneTarihi'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 80
        end
        object MuayeneKalanGun: TcxGridDBColumn
          Caption = 'Muayeneye Kalan Gun'
          DataBinding.FieldName = 'MuayeneKalanGun'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.AssignedValues.DisplayFormat = True
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 80
        end
        object ListeColumn14: TcxGridDBColumn
          Caption = #304#351'e Ba'#351'lama'
          DataBinding.FieldName = 'iseBaslama'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Options.Editing = False
        end
        object ListeColumn15: TcxGridDBColumn
          Caption = #350'ubesi'
          DataBinding.FieldName = 'subeTanim'
          Visible = False
          GroupIndex = 1
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 80
        end
        object ListeColumn16: TcxGridDBColumn
          Caption = 'Sirket'
          DataBinding.FieldName = 'tanimi'
          Visible = False
          GroupIndex = 0
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object ListeColumn12: TcxGridDBColumn
          Caption = 'Grup'
          DataBinding.FieldName = 'tetkikIstemGrupSablon'
        end
        object ListeColumnSirketKod: TcxGridDBColumn
          DataBinding.FieldName = 'sirketKod'
          Visible = False
        end
        object ListeColumnSube: TcxGridDBColumn
          DataBinding.FieldName = 'sube'
          Visible = False
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
        ExplicitLeft = 4
        ExplicitTop = 0
        ExplicitWidth = 1155
        ExplicitHeight = 34
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
    object Recete: TMenuItemModul
      Tag = -7
      Caption = 'Re'#231'ete'
      ImageIndex = 97
      Visible = False
      OnClick = cxButtonCClick
      Modul = 'TEDAVI KARTI'
      Islem = 'Recete'
      FormId = 0
    end
    object Muayene: TMenuItem
      Caption = 'Peryodik Muayene Olu'#351'tur'
      ImageIndex = 102
      OnClick = MuayeneClick
    end
    object PeryodikMuayeneOlutur1: TMenuItem
      Caption = 'Peryodik Muayene Olu'#351'tur (Toplu)'
      ImageIndex = 17
      OnClick = PeryodikMuayeneOlutur1Click
    end
    object f1: TMenuItem
      Tag = -10
      Caption = 'Pesonel '#350'irket De'#287'i'#351'tir'
      ImageIndex = 69
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
