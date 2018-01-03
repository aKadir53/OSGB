object frmHastaTetkikEkle: TfrmHastaTetkikEkle
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'frmHastaTetkikEkle'
  ClientHeight = 571
  ClientWidth = 1029
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxIlacTedaviPanel: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    PanelStyle.Active = True
    TabOrder = 0
    Height = 571
    Width = 1029
    object frmHastaIlacTedavi_cxGroupBox1: TcxGroupBox
      Left = 2
      Top = 2
      Align = alLeft
      PanelStyle.Active = True
      TabOrder = 0
      Height = 567
      Width = 639
      object frmHastaIlacTedavi_cxPageControl1: TcxPageControl
        Left = 2
        Top = 2
        Width = 635
        Height = 563
        Align = alClient
        TabOrder = 0
        Properties.ActivePage = cxTabTetkikler
        ClientRectBottom = 556
        ClientRectLeft = 3
        ClientRectRight = 628
        ClientRectTop = 26
        object cxTabTetkikler: TcxTabSheet
          Caption = 'Hasta Tetkikleri'
          ImageIndex = 0
          object cxGrid15: TcxGrid
            Left = 0
            Top = 0
            Width = 625
            Height = 450
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
            object cxGridTetkikler: TcxGridDBTableView
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
              DataController.DataSource = DataSource8
              DataController.Filter.Options = [fcoCaseInsensitive]
              DataController.Filter.Active = True
              DataController.Filter.TranslateBetween = True
              DataController.Filter.TranslateLike = True
              DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
              DataController.Summary.DefaultGroupSummaryItems = <
                item
                  Format = '# Adet Tetkik'
                  Kind = skCount
                  Position = spFooter
                  FieldName = 'SLT'
                  Column = cxGridTetkiklerCODE
                end>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = 'Tetkik Say'#305's'#305' : #'
                  Kind = skCount
                  Column = cxGridTetkiklerNAME1
                end>
              DataController.Summary.SummaryGroups = <
                item
                  Links = <>
                  SummaryItems = <>
                end>
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
              OptionsCustomize.GroupBySorting = True
              OptionsData.CancelOnExit = False
              OptionsData.Inserting = False
              OptionsView.NavigatorOffset = 20
              OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
              OptionsView.Footer = True
              OptionsView.FooterMultiSummaries = True
              OptionsView.GroupByBox = False
              OptionsView.GroupFooters = gfVisibleWhenExpanded
              OptionsView.HeaderAutoHeight = True
              OptionsView.IndicatorWidth = 0
              OptionsView.RowSeparatorColor = clBlack
              Styles.OnGetContentStyle = cxGridIlacTedaviPlaniStylesGetContentStyle
              object cxGridTetkiklerdosyaNo: TcxGridDBColumn
                DataBinding.FieldName = 'dosyaNo'
                Visible = False
              end
              object cxGridTetkiklergelisNo: TcxGridDBColumn
                DataBinding.FieldName = 'gelisNo'
                Visible = False
              end
              object cxGridTetkiklerSIRANO: TcxGridDBColumn
                DataBinding.FieldName = 'SIRANO'
                Visible = False
              end
              object cxGridTetkiklerCODE: TcxGridDBColumn
                Caption = 'Tetkik Kodu'
                DataBinding.FieldName = 'CODE'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Width = 63
              end
              object cxGridTetkikleryapanDoktor: TcxGridDBColumn
                DataBinding.FieldName = 'yapanDoktor'
                Visible = False
              end
              object cxGridTetkikleristeyenDoktor: TcxGridDBColumn
                DataBinding.FieldName = 'isteyenDoktor'
                Visible = False
              end
              object cxGridTetkiklerNAME1: TcxGridDBColumn
                Caption = 'Tetkik Ad'#305
                DataBinding.FieldName = 'tanimi'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Width = 108
              end
              object cxGridTetkiklerADET: TcxGridDBColumn
                Caption = 'Adet'
                DataBinding.FieldName = 'ADET'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Width = 31
              end
              object cxGridTetkiklerTARIH: TcxGridDBColumn
                Caption = 'Tarih'
                DataBinding.FieldName = 'TARIH'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
              end
              object cxGridTetkiklerKurum: TcxGridDBColumn
                DataBinding.FieldName = 'Kurum'
                Visible = False
              end
              object cxGridTetkiklertip: TcxGridDBColumn
                DataBinding.FieldName = 'tip'
                Visible = False
                Options.Editing = False
              end
              object cxGridTetkikleronay: TcxGridDBColumn
                Caption = 'Onay'
                DataBinding.FieldName = 'onay'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.NullStyle = nssUnchecked
                Properties.ValueChecked = 1
                Properties.ValueUnchecked = 0
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Width = 44
              end
              object SonucGiris: TcxGridDBColumn
                Caption = 'Sonu'#231
                DataBinding.FieldName = 'Gd'
                HeaderAlignmentHorz = taCenter
                Width = 58
              end
              object SonucCikis: TcxGridDBColumn
                Caption = 'Sonu'#231' '#199#305'k'#305#351' '
                DataBinding.FieldName = 'Cd'
                Visible = False
                HeaderAlignmentHorz = taCenter
                Width = 40
              end
              object cxGridTetkiklerislemSiraNo: TcxGridDBColumn
                DataBinding.FieldName = 'islemSiraNo'
                Visible = False
              end
              object cxGridTetkiklerDate_Create: TcxGridDBColumn
                DataBinding.FieldName = 'Date_Create'
                Visible = False
              end
              object cxGridTetkiklerislemSira: TcxGridDBColumn
                DataBinding.FieldName = 'islemSira'
                Visible = False
              end
              object cxGridTetkiklerKabulNo: TcxGridDBColumn
                DataBinding.FieldName = 'KabulNo'
                Visible = False
              end
              object Aciklama: TcxGridDBColumn
                Caption = 'Sonu'#231' A'#231#305'klama'
                DataBinding.FieldName = 'islemAciklamasi'
                PropertiesClassName = 'TcxMemoProperties'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Width = 150
              end
              object cxGridTetkiklerISLENDIMI: TcxGridDBColumn
                DataBinding.FieldName = 'ISLENDIMI'
                Visible = False
              end
              object cxGridTetkiklerbutKodu: TcxGridDBColumn
                DataBinding.FieldName = 'butKodu'
                Visible = False
              end
              object cxGridTetkiklertanimi: TcxGridDBColumn
                DataBinding.FieldName = 'tanimi'
                Visible = False
              end
              object cxGridTetkikleruygulamaSuresi: TcxGridDBColumn
                DataBinding.FieldName = 'uygulamaSuresi'
                Visible = False
              end
              object cxGridTetkikleruygulamaAdet: TcxGridDBColumn
                DataBinding.FieldName = 'uygulamaAdet'
                Visible = False
              end
              object cxGridTetkiklertip_1: TcxGridDBColumn
                DataBinding.FieldName = 'tip_1'
                Visible = False
              end
              object cxGridTetkiklerDurum: TcxGridDBColumn
                DataBinding.FieldName = 'Durum'
                Visible = False
              end
              object cxGridTetkiklersira: TcxGridDBColumn
                DataBinding.FieldName = 'sira'
                Visible = False
              end
              object cxGridTetkiklerminD: TcxGridDBColumn
                DataBinding.FieldName = 'minD'
                Visible = False
              end
              object cxGridTetkiklermaxD: TcxGridDBColumn
                DataBinding.FieldName = 'maxD'
                Visible = False
              end
              object cxGridTetkiklerSGKTip: TcxGridDBColumn
                DataBinding.FieldName = 'SGKTip'
                Visible = False
              end
              object cxGridTetkiklerbirim: TcxGridDBColumn
                DataBinding.FieldName = 'birim'
                Visible = False
              end
              object cxGridTetkiklerislemKodu: TcxGridDBColumn
                DataBinding.FieldName = 'islemKodu'
                Visible = False
              end
              object cxGridTetkiklerislemKoduC: TcxGridDBColumn
                DataBinding.FieldName = 'islemKoduC'
                Visible = False
              end
              object cxGridTetkiklerhepatitMarker: TcxGridDBColumn
                DataBinding.FieldName = 'hepatitMarker'
                Visible = False
              end
              object cxGridTetkiklerSonucTip: TcxGridDBColumn
                DataBinding.FieldName = 'SonucTip'
                Visible = False
              end
              object cxGridTetkiklerTurId: TcxGridDBColumn
                DataBinding.FieldName = 'TurId'
                Visible = False
              end
              object cxGridTetkiklergrupKodu: TcxGridDBColumn
                DataBinding.FieldName = 'grupKodu'
                Visible = False
              end
              object cxGridTetkiklergrupKodu_Centro: TcxGridDBColumn
                DataBinding.FieldName = 'grupKodu_Centro'
                Visible = False
              end
              object cxGridTetkiklerColumn1: TcxGridDBColumn
                Caption = 'Grubu'
                DataBinding.FieldName = 'SLT'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Width = 77
              end
            end
            object cxGridLevel15: TcxGridLevel
              Caption = 'Hastalar'
              GridView = cxGridTetkikler
              Options.DetailFrameColor = clBlack
              Options.DetailFrameWidth = 0
            end
          end
          object cxTabTetkik: TcxTabControl
            Left = 0
            Top = 495
            Width = 625
            Height = 35
            Align = alBottom
            TabOrder = 1
            Properties.TabIndex = 0
            Properties.TabPosition = tpBottom
            Properties.Tabs.Strings = (
              'Laboratuvar'
              'Tele - EKG')
            OnChange = cxTabTetkikChange
            ClientRectBottom = 5
            ClientRectLeft = 3
            ClientRectRight = 618
            ClientRectTop = 3
          end
          object cxPanelHesapla: TcxGroupBox
            Left = 0
            Top = 450
            Align = alBottom
            Caption = 'Hesaplama'
            TabOrder = 2
            Visible = False
            Height = 45
            Width = 625
            object Label2: TLabel
              Left = 97
              Top = 15
              Width = 29
              Height = 20
              Align = alLeft
              Alignment = taCenter
              Caption = ' Kt/V  '
              Font.Charset = TURKISH_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
              ExplicitLeft = 96
              ExplicitTop = -2
              ExplicitHeight = 13
            end
            object Label1: TLabel
              Left = 182
              Top = 15
              Width = 31
              Height = 20
              Align = alLeft
              Alignment = taCenter
              Caption = ' CaXP '
              Font.Charset = TURKISH_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
              ExplicitLeft = 181
              ExplicitTop = -2
              ExplicitHeight = 13
            end
            object Label3: TLabel
              Left = 269
              Top = 15
              Width = 41
              Height = 20
              Align = alLeft
              Alignment = taCenter
              Caption = ' D'#252'z.Ca '
              Font.Charset = TURKISH_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
              ExplicitLeft = 268
              ExplicitTop = -2
              ExplicitHeight = 13
            end
            object Label4: TLabel
              Left = 3
              Top = 15
              Width = 38
              Height = 20
              Align = alLeft
              Alignment = taCenter
              Caption = 'URR % '
              Font.Charset = TURKISH_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
              ExplicitLeft = 2
              ExplicitTop = -2
              ExplicitHeight = 13
            end
            object txtUrr: TcxDBTextEdit
              Left = 41
              Top = 15
              Align = alLeft
              DataBinding.DataField = 'URR'
              DataBinding.DataSource = DataSource1
              ParentFont = False
              Properties.Alignment.Horz = taCenter
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 0
              ExplicitLeft = 40
              ExplicitTop = -2
              ExplicitHeight = 45
              Width = 56
            end
            object txtKtv: TcxDBTextEdit
              Left = 126
              Top = 15
              Align = alLeft
              DataBinding.DataField = 'KT_v'
              DataBinding.DataSource = DataSource1
              ParentFont = False
              Properties.Alignment.Horz = taCenter
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 1
              ExplicitLeft = 125
              ExplicitTop = -2
              ExplicitHeight = 45
              Width = 56
            end
            object txtCaXP: TcxDBTextEdit
              Left = 213
              Top = 15
              Align = alLeft
              DataBinding.DataField = 'CaxP'
              DataBinding.DataSource = DataSource1
              ParentFont = False
              Properties.Alignment.Horz = taCenter
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 2
              ExplicitLeft = 212
              ExplicitTop = -2
              ExplicitHeight = 45
              Width = 56
            end
            object txtDuzCa: TcxDBTextEdit
              Left = 310
              Top = 15
              Align = alLeft
              DataBinding.DataField = 'DuzCa'
              DataBinding.DataSource = DataSource1
              ParentFont = False
              Properties.Alignment.Horz = taCenter
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 3
              ExplicitLeft = 309
              ExplicitTop = -2
              ExplicitHeight = 45
              Width = 56
            end
            object ktv: TcxButtonKadir
              Left = 472
              Top = 15
              Width = 75
              Height = 20
              Align = alRight
              Caption = 'Kt/V'
              TabOrder = 4
              OnClick = ktvClick
              NewButtonVisible = False
              ExplicitLeft = 473
              ExplicitTop = -2
              ExplicitHeight = 45
            end
            object spKtv: TcxButtonKadir
              Left = 397
              Top = 15
              Width = 75
              Height = 20
              Align = alRight
              Caption = 'spKtv'
              TabOrder = 5
              OnClick = spKtvClick
              NewButtonVisible = False
              ExplicitLeft = 398
              ExplicitTop = -2
              ExplicitHeight = 45
            end
            object cxBtnHesapKaydet: TcxButtonKadir
              Left = 547
              Top = 15
              Width = 75
              Height = 20
              Align = alRight
              Caption = 'Kaydet'
              TabOrder = 6
              OnClick = cxBtnHesapKaydetClick
              NewButtonVisible = False
              ExplicitLeft = 548
              ExplicitTop = -2
              ExplicitHeight = 45
            end
          end
        end
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 208
    Top = 160
    object K1: TMenuItem
      Tag = 9999
      Caption = 'Kapat'
      ImageIndex = 18
      OnClick = cxKaydetClick
    end
    object N1: TMenuItem
      Tag = -1
      Caption = 'Ayl'#305'k Ekle'
      ImageIndex = 61
      OnClick = ItemClick
    end
    object T1: TMenuItem
      Tag = -3
      Caption = '3 Ayl'#305'k Ekle'
      ImageIndex = 62
      OnClick = ItemClick
    end
    object N2: TMenuItem
      Tag = -6
      Caption = '6 Ayl'#305'k Ekle'
      ImageIndex = 64
      OnClick = ItemClick
    end
    object S1: TMenuItem
      Tag = -12
      Caption = 'Y'#305'll'#305'k Ekle'
      ImageIndex = 94
      OnClick = ItemClick
    end
    object H1: TMenuItem
      Tag = -5
      Caption = 'Hepatit Marker Ekle'
      Visible = False
      OnClick = ItemClick
    end
    object T2: TMenuItem
      Tag = -2
      Caption = 'Tetkik Sil'
      ImageIndex = 42
      OnClick = ItemClick
    end
    object T3: TMenuItem
      Tag = -4
      Caption = 'Tetkik Takip Formu'
      OnClick = ItemClick
    end
    object K2: TMenuItem
      Tag = -20
      Caption = #304'stem Guruplar'#305
      OnClick = ItemClick
    end
    object T4: TMenuItem
      Tag = -21
      Caption = 'Tetkik De'#287'erlendir'
      ImageIndex = 32
      OnClick = ItemClick
    end
    object T5: TMenuItem
      Tag = -22
      Caption = 'Tetkik Ekle'
      ImageIndex = 30
      OnClick = ItemClick
    end
  end
  object ADO_Tetkikler: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    Filtered = True
    EnableBCD = False
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'select * from hareketler h '
      'join HIZMET t on t.code = h.code '
      'join lab_gruplari g on g.SLB = t.grupKodu'
      '           where dosyaNo = '#39'015099'#39
      '           and gelisNo = '#39'1'#39' and abs(t.tip) = '#39'2'#39
      '          order by kabulno,h.TARIH,sira ')
    Left = 120
    Top = 286
  end
  object DataSource8: TDataSource
    DataSet = ADO_Tetkikler
    Left = 160
    Top = 286
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 456
    Top = 144
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = 8454016
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8421631
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object K: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16744448
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object Yesil_siyah: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clLime
      TextColor = clBlack
    end
    object Sari_Siyah: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clYellow
      TextColor = clBlack
    end
  end
  object ADO_TetkikDegerlendir: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    Filtered = True
    EnableBCD = False
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'select * from labsonucdegerlendirme')
    Left = 120
    Top = 342
  end
  object DataSource1: TDataSource
    DataSet = ADO_TetkikDegerlendir
    Left = 160
    Top = 342
  end
  object Tetkikler: TListeAc
    ListeBaslik = 'Tetkik Listesi'
    TColcount = 3
    TColsW = '50,350,0'
    Table = 'HIZMET'
    Conn = DATALAR.ADOConnection2
    Filtercol = 2
    BaslikRenk = clBackground
    DipRenk = clBackground
    ButtonImajIndex = 132
    Kolonlar.Strings = (
      'Code'
      'NAME1'
      'TANIM')
    KolonBasliklari.Strings = (
      'Sut Kodu'
      'Tanimi'
      'Tip')
    Calistir = fgEvet
    BiriktirmeliSecim = False
    Grup = False
    GrupCol = 0
    Left = 328
    Top = 205
  end
end
