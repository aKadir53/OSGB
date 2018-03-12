object frmDestekSorunBildir: TfrmDestekSorunBildir
  Tag = 121
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'frmDestekSorunBildir'
  ClientHeight = 539
  ClientWidth = 1094
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 498
    Width = 1094
    Height = 41
    Align = alBottom
    TabOrder = 0
    object cxButton1: TcxButton
      Left = 2
      Top = 2
      Width = 214
      Height = 37
      Caption = 'Destek Talebini Kaydet'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'McSkin'
      TabOrder = 0
      OnClick = cxButton1Click
    end
  end
  object txtSorunSahibi: TcxTextEdit
    Left = 368
    Top = 104
    TabOrder = 1
    Visible = False
    Width = 193
  end
  object txtKurum: TcxTextEdit
    Left = 368
    Top = 131
    TabOrder = 2
    Visible = False
    Width = 193
  end
  object txtZaman: TcxDateEdit
    Left = 368
    Top = 158
    Properties.Kind = ckDateTime
    TabOrder = 3
    Visible = False
    Width = 161
  end
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alLeft
    Caption = 'Bildirim Giri'#351
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'McSkin'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'McSkin'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'McSkin'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'McSkin'
    TabOrder = 4
    Height = 498
    Width = 216
    object txtMesaj: TcxMemo
      Left = 7
      Top = 144
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'McSkin'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'McSkin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'McSkin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'McSkin'
      TabOrder = 0
      Height = 224
      Width = 203
    end
    object cxLabel5: TcxLabel
      Left = 7
      Top = 128
      Caption = 'Mesaj'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object cxCheckBox1: TcxCheckBox
      Left = 7
      Top = 446
      Caption = 'Ekran G'#246'r'#252'nt'#252's'#252'n'#252' Yolla'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'McSkin'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'McSkin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'McSkin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'McSkin'
      TabOrder = 2
      Width = 195
    end
    object cxLabel4: TcxLabel
      Left = 7
      Top = 407
      Caption = ' Etki'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object cxLabel3: TcxLabel
      Left = 7
      Top = 370
      Caption = 'Bildirim Yapan Ad'#305
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object cxLabel2: TcxLabel
      Left = 8
      Top = 92
      Caption = 'Konu'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object cxLabel1: TcxLabel
      Left = 7
      Top = 52
      Caption = 'Aciliyet'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object tip: TcxRadioGroup
      Left = 8
      Top = 19
      Alignment = alCenterCenter
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = 'Sorun'
          Value = '1'
        end
        item
          Caption = 'Talep'
          Value = '2'
        end>
      ItemIndex = 0
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'McSkin'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'McSkin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'McSkin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'McSkin'
      TabOrder = 7
      Height = 29
      Width = 121
    end
    object txtEtki: TcxComboBox
      Left = 7
      Top = 424
      Properties.Items.Strings = (
        ''
        #304#351'lem yapmay'#305' engelliyor'
        #304#351'lem yapmay'#305' engellemiyor')
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'McSkin'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'McSkin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'McSkin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'McSkin'
      TabOrder = 8
      Text = #304#351'lem yapmay'#305' engelliyor'
      Width = 203
    end
    object txtPersonel: TcxTextEdit
      Left = 7
      Top = 387
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'McSkin'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'McSkin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'McSkin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'McSkin'
      TabOrder = 9
      Width = 203
    end
    object txtKonu: TcxComboBox
      Left = 7
      Top = 108
      Properties.DropDownRows = 15
      Properties.Items.Strings = (
        ''
        #350'irket A'#231'am'#305'yorum'
        'Personel Tan'#305'mlayam'#305'yorum'
        'Muayene A'#231'am'#305'yorum'
        'Muayene Silemiyorum'
        'Re'#231'ete Olu'#351'turam'#305'yorum'
        'Re'#231'eteye '#304'la'#231' yada Tan'#305' Ekleyemiyorum'
        'Re'#231'eteden '#304'la'#231' yada Tan'#305' Silemiyorum'
        'Re'#231'eteyi Medula G'#246'ndermiyorum'
        'E-'#304'mza Sorunu'
        'E'#287'itim Olu'#351'turam'#305'yorum'
        'Sertifikalar'#305' Yazd'#305'ram'#305'yorum'
        #304#351' Plan'#305' Olu'#351'turam'#305'yorum'
        'Yeni Kullan'#305'c'#305' A'#231'am'#305'yorum'
        #350'ifremi De'#287'i'#351'tiremiyorum'
        'Di'#287'er')
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'McSkin'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'McSkin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'McSkin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'McSkin'
      TabOrder = 10
      Width = 203
    end
    object txtAciliyet: TcxComboBox
      Left = 8
      Top = 70
      Properties.Items.Strings = (
        ''
        'D'#252#351#252'k'
        'Orta'
        'Y'#252'ksek')
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'McSkin'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'McSkin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'McSkin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'McSkin'
      TabOrder = 11
      Text = 'D'#252#351#252'k'
      Width = 121
    end
    object Panel1: TPanel
      Left = 3
      Top = 466
      Width = 210
      Height = 21
      Align = alBottom
      TabOrder = 12
      object pb: TcxProgressBar
        Left = 1
        Top = 1
        Align = alClient
        Properties.BeginColor = 54056
        Properties.ShowTextStyle = cxtsText
        Properties.Text = 'Y'#252'kleniyor..'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'McSkin'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'McSkin'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'McSkin'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'McSkin'
        TabOrder = 0
        Visible = False
        Width = 208
      end
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 216
    Top = 0
    Align = alClient
    Caption = 'Bildirimler'
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'McSkin'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'McSkin'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'McSkin'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'McSkin'
    TabOrder = 5
    Height = 498
    Width = 678
    object cxGrid4: TcxGrid
      Left = 3
      Top = 54
      Width = 672
      Height = 251
      Align = alTop
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LevelTabs.ImageBorder = 2
      LevelTabs.Style = 1
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'McSkin'
      ExplicitLeft = 2
      ExplicitTop = 36
      ExplicitWidth = 674
      object gridSorunlar: TcxGridDBTableView
        PopupMenu = PopupMenu1
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
        DataController.DataSource = DataSource5
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Filter.Active = True
        DataController.Filter.TranslateBetween = True
        DataController.Filter.TranslateLike = True
        DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Filtering.MRUItemsList = False
        Filtering.ColumnMRUItemsList = False
        FilterRow.InfoText = 'Arama Sat'#305'r'#305
        FilterRow.SeparatorWidth = 2
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
        OptionsView.NavigatorOffset = 20
        OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
        OptionsView.CellAutoHeight = True
        OptionsView.GridLines = glNone
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.HeaderHeight = 25
        OptionsView.IndicatorWidth = 0
        OptionsView.RowSeparatorColor = clBlack
        object gridSorunlarkurumKodu: TcxGridDBColumn
          DataBinding.FieldName = 'kurumKodu'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object gridSorunlarsorunBildirimTarihSaat: TcxGridDBColumn
          Caption = 'Zaman'
          DataBinding.FieldName = 'sorunBildirimTarihSaat'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object gridSorunlarsorunId: TcxGridDBColumn
          Caption = 'ID'
          DataBinding.FieldName = 'sorunId'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 45
        end
        object gridSorunlarsorunSahibi: TcxGridDBColumn
          DataBinding.FieldName = 'sorunSahibi'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object gridSorunlarsorunTipi: TcxGridDBColumn
          DataBinding.FieldName = 'sorunTipi'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object gridSorunlarsorunAciliyeti: TcxGridDBColumn
          Caption = 'Aciliyet'
          DataBinding.FieldName = 'sorunAciliyeti'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Images = DATALAR.imag32png
          Properties.Items = <
            item
              Description = 'D'#252#351#252'k'
              ImageIndex = 56
              Value = 1
            end
            item
              Description = 'Orta'
              ImageIndex = 54
              Value = 2
            end
            item
              Description = 'Y'#252'ksek'
              ImageIndex = 55
              Value = 3
            end>
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 83
        end
        object gridSorunlarsorunTanimi: TcxGridDBColumn
          DataBinding.FieldName = 'sorunTanimi'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object gridSorunlarsorunAciklamasi: TcxGridDBColumn
          Caption = 'Mesaj'
          DataBinding.FieldName = 'sorunAciklamasi'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 300
        end
        object gridSorunlarOzelKod1: TcxGridDBColumn
          DataBinding.FieldName = 'OzelKod1'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object gridSorunlarOzelKod2: TcxGridDBColumn
          DataBinding.FieldName = 'OzelKod2'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object gridSorunlardurum: TcxGridDBColumn
          Caption = 'Durum'
          DataBinding.FieldName = 'durum'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Images = DATALAR.imag32png
          Properties.Items = <
            item
              Description = 'Yeni Mesaj'
              ImageIndex = 79
              Value = '2'
            end
            item
              Description = 'Cevap Mesaj'#305
              ImageIndex = 75
              Value = '1'
            end
            item
              Description = 'Kapand'#305
              Value = '0'
            end>
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 125
        end
        object gridSorunlarilgilenenPersonel: TcxGridDBColumn
          DataBinding.FieldName = 'ilgilenenPersonel'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object gridSorunlarfonksiyonelEtki: TcxGridDBColumn
          Caption = 'Etki'
          DataBinding.FieldName = 'fonksiyonelEtki'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taCenter
          Properties.ImageAlign = iaRight
          Properties.Images = DATALAR.imag32png
          Properties.Items = <
            item
              ImageIndex = 82
              Value = '1'
            end
            item
              ImageIndex = 81
              Value = '2'
            end>
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 42
        end
        object gridSorunlarSorunIhtiyac: TcxGridDBColumn
          Caption = 'S / '#304
          DataBinding.FieldName = 'SorunIhtiyac'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Items = <
            item
              Description = 'S'
              ImageIndex = 0
              Value = '1'
            end
            item
              Description = 'I'
              Value = '0'
            end>
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 39
        end
        object gridSorunlarKonu: TcxGridDBColumn
          DataBinding.FieldName = 'Konu'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object gridSorunlarCozumTarih: TcxGridDBColumn
          DataBinding.FieldName = 'CozumTarih'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object gridSorunlarmesaj: TcxGridDBColumn
          DataBinding.FieldName = 'mesaj'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object gridSorunlarpuan: TcxGridDBColumn
          DataBinding.FieldName = 'puan'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object gridSorunlarsecreen: TcxGridDBColumn
          Caption = 'Ekran G'#246'r'#252'nt'#252's'#252
          DataBinding.FieldName = 'secreen'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = DATALAR.imag32png
          Properties.Items = <
            item
              Value = '0'
            end
            item
              ImageIndex = 77
              Value = '1'
            end>
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 35
        end
        object gridSorunlarColumn1: TcxGridDBColumn
          Caption = 'S'#252're'#231
          DataBinding.FieldName = 'TalepOnayDurumu'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Items = <
            item
              Description = 'Tamamland'#305
              ImageIndex = 0
              Value = 1
            end
            item
              Description = 'Devam Ediyor'
              Value = 0
            end
            item
              Description = #304'ptal Edildi'
              Value = -1
            end>
          HeaderAlignmentHorz = taCenter
        end
        object gridSorunlarColumn2: TcxGridDBColumn
          Caption = #220'retim S'#252're'#231
          DataBinding.FieldName = 'YazilimGereksinimleri'
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
      end
      object cxGridLevel4: TcxGridLevel
        Caption = 'Hastalar'
        GridView = gridSorunlar
        Options.DetailFrameColor = clBlack
        Options.DetailFrameWidth = 0
      end
    end
    object cxGroupBox3: TcxGroupBox
      Left = 3
      Top = 15
      Align = alTop
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'McSkin'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'McSkin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'McSkin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'McSkin'
      TabOrder = 1
      ExplicitLeft = 2
      ExplicitTop = -3
      ExplicitWidth = 674
      DesignSize = (
        672
        39)
      Height = 39
      Width = 672
      object cxDateEdit1: TcxDateEdit
        Left = 3
        Top = 7
        EditValue = 42055d
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'McSkin'
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'McSkin'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'McSkin'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'McSkin'
        TabOrder = 0
        Width = 89
      end
      object cxDateEdit2: TcxDateEdit
        Left = 91
        Top = 7
        EditValue = 42055d
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'McSkin'
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'McSkin'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'McSkin'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'McSkin'
        TabOrder = 1
        Width = 88
      end
      object cxButton2: TcxButton
        Left = 180
        Top = 7
        Width = 75
        Height = 25
        Caption = 'Listele'
        LookAndFeel.Kind = lfStandard
        LookAndFeel.NativeStyle = True
        LookAndFeel.SkinName = 'McSkin'
        TabOrder = 2
        OnClick = cxButton2Click
      end
      object cxButton5: TcxButton
        Left = 594
        Top = 8
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'Ekran'#305' G'#246'r'
        LookAndFeel.Kind = lfStandard
        LookAndFeel.NativeStyle = True
        LookAndFeel.SkinName = 'McSkin'
        TabOrder = 3
        ExplicitLeft = 596
      end
      object cxButton6: TcxButton
        Left = 392
        Top = 8
        Width = 105
        Height = 25
        Caption = 'Online Destek A'#231
        TabOrder = 4
        OnClick = cxButton6Click
      end
    end
    object cxGroupBox4: TcxGroupBox
      Left = 3
      Top = 305
      Align = alClient
      Caption = 'Cevaplar'
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'McSkin'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'McSkin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'McSkin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'McSkin'
      TabOrder = 2
      ExplicitLeft = 2
      ExplicitTop = 287
      ExplicitWidth = 674
      ExplicitHeight = 209
      Height = 182
      Width = 672
      object cxGrid1: TcxGrid
        Left = 3
        Top = 15
        Width = 666
        Height = 156
        Align = alClient
        Font.Charset = TURKISH_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LevelTabs.ImageBorder = 2
        LevelTabs.Style = 1
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'McSkin'
        ExplicitLeft = 2
        ExplicitTop = -3
        ExplicitWidth = 670
        ExplicitHeight = 210
        object gridCevaplar: TcxGridDBTableView
          PopupMenu = PopupMenu2
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
          DataController.DataModeController.DetailInSQLMode = True
          DataController.DataSource = DataSource1
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.Active = True
          DataController.Filter.TranslateBetween = True
          DataController.Filter.TranslateLike = True
          DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Filtering.MRUItemsList = False
          Filtering.ColumnMRUItemsList = False
          FilterRow.InfoText = 'Arama Sat'#305'r'#305
          FilterRow.SeparatorWidth = 2
          FilterRow.ApplyChanges = fracImmediately
          NewItemRow.InfoText = 'Kay'#305't Ekle'
          OptionsBehavior.CellHints = True
          OptionsBehavior.FocusCellOnTab = True
          OptionsCustomize.ColumnGrouping = False
          OptionsCustomize.ColumnHidingOnGrouping = False
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Inserting = False
          OptionsView.NavigatorOffset = 20
          OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
          OptionsView.CellAutoHeight = True
          OptionsView.GridLines = glNone
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          OptionsView.HeaderHeight = 25
          OptionsView.IndicatorWidth = 0
          OptionsView.RowSeparatorColor = clBlack
          object gridCevaplarColumn1: TcxGridDBColumn
            Caption = 'Kimden'
            DataBinding.FieldName = 'Taraf'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 96
          end
          object gridCevaplarsorunId: TcxGridDBColumn
            DataBinding.FieldName = 'sorunId'
            Visible = False
            Options.Editing = False
          end
          object gridCevaplarid: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            Visible = False
            Options.Editing = False
          end
          object gridCevaplartarihSaat: TcxGridDBColumn
            DataBinding.FieldName = 'tarihSaat'
            Options.Editing = False
          end
          object gridCevaplarDurum: TcxGridDBColumn
            DataBinding.FieldName = 'Durum'
            Visible = False
            Options.Editing = False
          end
          object gridCevaplarAciklama: TcxGridDBColumn
            DataBinding.FieldName = 'Aciklama'
            Options.Editing = False
            Width = 402
          end
          object gridCevaplarPersonel: TcxGridDBColumn
            DataBinding.FieldName = 'Personel'
            Options.Editing = False
          end
        end
        object cxGridLevel1: TcxGridLevel
          Caption = 'Hastalar'
          GridView = gridCevaplar
          Options.DetailFrameColor = clBlack
          Options.DetailFrameWidth = 0
        end
      end
    end
  end
  object pnlCvp: TcxGroupBox
    Left = 894
    Top = 0
    Align = alRight
    Caption = 'Cevap'
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'McSkin'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'McSkin'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'McSkin'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'McSkin'
    TabOrder = 6
    Visible = False
    Height = 498
    Width = 200
    object txtCvp: TcxMemo
      Left = 4
      Top = 77
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'McSkin'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'McSkin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'McSkin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'McSkin'
      TabOrder = 0
      Height = 209
      Width = 192
    end
    object cxLabel6: TcxLabel
      Left = 4
      Top = 57
      Caption = 'Mesaj'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object txtCvpPersonel: TcxComboBox
      Left = 4
      Top = 31
      Properties.DropDownRows = 15
      Properties.Items.Strings = (
        'MELTEM EHL'#304'L'
        'SEM'#304'H KO'#199'AL'#304
        'ZEYNEP YAMAN')
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'McSkin'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'McSkin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'McSkin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'McSkin'
      TabOrder = 2
      Width = 192
    end
    object cxLabel7: TcxLabel
      Left = 3
      Top = 15
      Caption = 'Personel'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object cxButton4: TcxButton
      Left = 8
      Top = 291
      Width = 184
      Height = 37
      Caption = 'Cevap Mesaj'#305'n'#305' G'#246'nder'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'McSkin'
      TabOrder = 4
      OnClick = cxButton4Click
    end
  end
  object IdFTP1: TIdFTP
    OnWork = IdFTP1Work
    OnWorkBegin = IdFTP1WorkBegin
    OnWorkEnd = IdFTP1WorkEnd
    IPVersion = Id_IPv4
    Host = 'ftp.noktayazilim.net'
    Passive = True
    Password = 'nokta53nokta'
    Username = 'mavinokta'
    NATKeepAlive.UseKeepAlive = False
    NATKeepAlive.IdleTimeMS = 0
    NATKeepAlive.IntervalMS = 0
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    ReadTimeout = 0
    Left = 258
    Top = 52
  end
  object DataSource5: TDataSource
    DataSet = Ado_Sql
    Left = 372
    Top = 124
  end
  object Ado_Sql: TADOQuery
    Connection = DATALAR.ADOConnection1
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterScroll = Ado_SqlAfterScroll
    ParamCheck = False
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      
        'select *,d.TalepOnayDurumu,d.YazilimGereksinimleri from sorunlar' +
        ' s'
      'join SorunTalepTalepDegerlendirme d on s.sorunId = d.TalepId')
    Left = 424
    Top = 120
  end
  object DataSource1: TDataSource
    DataSet = ADO_CVP
    Left = 372
    Top = 204
  end
  object ADO_CVP: TADOQuery
    Connection = DATALAR.ADOConnection1
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select * from sorunCozumSureci')
    Left = 432
    Top = 208
  end
  object PopupMenu1: TPopupMenu
    Left = 600
    Top = 120
    object C1: TMenuItem
      Caption = 'Cevapla'
      ImageIndex = 47
      OnClick = C1Click
    end
    object K1: TMenuItem
      Caption = 'Kapat'
      ImageIndex = 83
      object K2: TMenuItem
        Caption = 'Memnun De'#287'ilim'
        OnClick = K2Click
      end
      object M1: TMenuItem
        Tag = 1
        Caption = 'Memnunum'
        OnClick = K2Click
      end
      object N1: TMenuItem
        Tag = 2
        Caption = #199'ok Memnunum'
        OnClick = K2Click
      end
    end
    object E1: TMenuItem
      Caption = 'Ekran'#305' G'#246'r'
      ImageIndex = 77
      OnClick = E1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 512
    Top = 392
    object O1: TMenuItem
      Caption = 'Okudum'
      OnClick = O1Click
    end
  end
end
