object frmHizliKayit: TfrmHizliKayit
  Left = 303
  Top = 93
  BorderStyle = bsDialog
  Caption = 'frmHizliKayit'
  ClientHeight = 464
  ClientWidth = 471
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 122
    Width = 471
    Height = 314
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 96
    ExplicitTop = 30
    ExplicitWidth = 912
    ExplicitHeight = 426
    ClientRectBottom = 307
    ClientRectLeft = 3
    ClientRectRight = 464
    ClientRectTop = 3
  end
  object pnlOnay: TPanel
    Left = 0
    Top = 436
    Width = 471
    Height = 28
    Align = alBottom
    Color = clBackground
    TabOrder = 0
    ExplicitTop = 462
    ExplicitWidth = 912
    object txtinfo: TLabel
      Left = 7
      Top = 11
      Width = 3
      Height = 13
      Caption = '.'
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    Caption = 'Sorgula Bilgileri'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 2
    ExplicitWidth = 810
    Height = 122
    Width = 471
    object cxLabel1: TcxLabel
      Left = 9
      Top = 38
      AutoSize = False
      Caption = 'T.C Kimlik No'
      ParentColor = False
      Style.Color = clSilver
      Style.LookAndFeel.NativeStyle = True
      Style.TextStyle = [fsBold]
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Height = 17
      Width = 110
    end
    object txtTcKimlikNoAra: TcxTextEdit
      Left = 120
      Top = 34
      Style.BorderStyle = ebsUltraFlat
      Style.TransparentBorder = True
      TabOrder = 1
      Width = 121
    end
    object txtTakipTarihi: TcxDateEdit
      Left = 120
      Top = 56
      TabOrder = 2
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 9
      Top = 61
      AutoSize = False
      Caption = 'Takip Tarihi'
      ParentColor = False
      Style.Color = clSilver
      Style.TextStyle = [fsBold]
      Height = 17
      Width = 110
    end
    object txtProvizyonTuru: TcxComboBox
      Left = 381
      Top = 13
      Properties.Items.Strings = (
        ''
        'N - Normal'
        'I - '#304#351' kazas'#305
        'A - Acil'
        'T - Trafik kazas'#305
        'V - Adli Vaka'
        'M - Meslek hastal'#305#287#305)
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 4
      Text = 'N - Normal'
      Visible = False
      Width = 121
    end
    object txtTakipTuru: TcxComboBox
      Left = 381
      Top = 32
      Properties.Items.Strings = (
        ''
        'N - Normal'
        'E - E'#351'lik Eden Hastal'#305'k'
        'U - Uzayan Yat'#305#351
        'K - Komplikasyon'
        'T - Tan'#305' Ama'#231'l'#305' G'#252'n'#252' Birlik'
        'Y - Yo'#287'un Bak'#305'm'
        'P - Hizmetin '#304'ptal veya Yar'#305'm Kalmas'#305)
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 5
      Text = 'N - Normal'
      Visible = False
      Width = 116
    end
    object cxLabel4: TcxLabel
      Left = 246
      Top = 39
      AutoSize = False
      Caption = #304'lk Takip'
      ParentColor = False
      ParentFont = False
      Style.Color = clSilver
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'mcskin'
      Style.TextColor = clBlack
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'mcskin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'mcskin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'mcskin'
      Properties.Alignment.Horz = taCenter
      Height = 17
      Width = 84
      AnchorX = 288
    end
    object txtTedaviTipi: TcxComboBox
      Left = 381
      Top = 56
      Properties.Items.Strings = (
        ''
        '0 - Normal Sorgu'
        '1 - Diyaliz'
        '2 - Fizik Tedavi ve Rehabilitasyon'
        '4 - Kemik '#304'li'#287'i'
        '5 - K'#246'k H'#252'cre Nakli'
        '6 - Ekstarakorporeal fotoferez tedavisi'
        '7 - Hiperbar'#305'k oksijen tedavisi'
        '8 - ESWL'
        '9 - A'#287#305'z Protez tedavisi'
        '10 - Ketem'
        '11 - T'#252'p Bebek1')
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 7
      Text = '1 - Diyaliz'
      Visible = False
      Width = 121
    end
    object txtBranslar: TcxDBLookupComboBox
      Left = 376
      Top = 122
      DataBinding.DataField = 'servis'
      DataBinding.DataSource = DataSource1
      Properties.DropDownSizeable = True
      Properties.GridMode = True
      Properties.KeyFieldNames = 'SLX'
      Properties.ListColumns = <
        item
          Caption = 'Brans'
          FieldName = 'Kodu'
        end
        item
          Caption = 'Brans Ad'#305
          FieldName = 'BransAdi'
        end
        item
          Caption = 'S.Kod'
          FieldName = 'SLX'
        end>
      Properties.OnChange = txtBranslarPropertiesChange
      Style.Color = 8421631
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 8
      Visible = False
      OnClick = txtBranslarClick
      Width = 121
    end
    object cxLabel8: TcxLabel
      Left = 265
      Top = 127
      AutoSize = False
      Caption = 'Servis'
      ParentColor = False
      Style.Color = clSilver
      Style.TextStyle = []
      Visible = False
      Height = 17
      Width = 110
    end
    object cxLabel9: TcxLabel
      Left = 266
      Top = 147
      AutoSize = False
      Caption = 'Doktor'
      ParentColor = False
      Style.Color = clSilver
      Style.TextStyle = []
      Visible = False
      Height = 17
      Width = 110
    end
    object txtdoktorlar: TcxDBLookupComboBox
      Left = 376
      Top = 143
      DataBinding.DataField = 'doktor'
      DataBinding.DataSource = DataSource1
      Properties.DropDownListStyle = lsEditList
      Properties.DropDownSizeable = True
      Properties.GridMode = True
      Properties.KeyFieldNames = 'Kod'
      Properties.ListColumns = <
        item
          Caption = 'Kod'
          FieldName = 'Kod'
        end
        item
          Caption = 'Doktor'
          FieldName = 'DoktorAdi'
        end>
      Style.Color = 8421631
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 11
      Visible = False
      Width = 121
    end
    object RbTc: TRadioButton
      Left = 120
      Top = 15
      Width = 81
      Height = 17
      Caption = 'TC Kimlik'
      Checked = True
      TabOrder = 12
      TabStop = True
      OnClick = RbTcClick
    end
    object RbRt: TRadioButton
      Left = 207
      Top = 15
      Width = 90
      Height = 17
      Caption = 'Rapor Takip'
      TabOrder = 13
      OnClick = RbRtClick
    end
    object txtilkTakip: TcxTextEdit
      Left = 246
      Top = 56
      Hint = #304'lk Takip'
      ParentShowHint = False
      ShowHint = True
      Style.BorderStyle = ebsUltraFlat
      Style.TransparentBorder = True
      TabOrder = 14
      Width = 84
    end
    object BtnSorgula: TcxButton
      Left = 120
      Top = 80
      Width = 210
      Height = 30
      Caption = 'F5 - Hasta Sorgula'
      TabOrder = 15
      OnClick = BtnSorgulaClick
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 122
    Align = alClient
    Caption = 'Sorgulama Sonu'#231'lar'#305
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 3
    ExplicitLeft = 8
    ExplicitTop = 126
    ExplicitWidth = 760
    ExplicitHeight = 299
    Height = 314
    Width = 471
    object Sayfalar_HizliKayit: TcxPageControl
      Left = 3
      Top = 15
      Width = 465
      Height = 289
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = Sayfa_Sonuc
      ExplicitLeft = 163
      ExplicitTop = 31
      ExplicitWidth = 415
      ExplicitHeight = 273
      ClientRectBottom = 282
      ClientRectLeft = 3
      ClientRectRight = 458
      ClientRectTop = 26
      object Sayfa_Sonuc: TcxTabSheet
        Caption = 'Sonu'#231
        ImageIndex = 0
        ExplicitLeft = 147
        ExplicitTop = 30
        ExplicitWidth = 744
        ExplicitHeight = 241
        object txtCinsiyet: TRadioGroup
          Left = 9
          Top = 167
          Width = 216
          Height = 36
          Hint = 'Cinsiyet'
          Caption = 'Cinsiyeti'
          Color = clBtnFace
          Columns = 2
          Items.Strings = (
            '&Bay'
            'Bayan')
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
        object txtdogumTarihi: TcxTextEdit
          Left = 120
          Top = 96
          Properties.ReadOnly = True
          Style.BorderStyle = ebsUltraFlat
          Style.TextStyle = [fsBold]
          Style.TransparentBorder = True
          TabOrder = 1
          Width = 105
        end
        object cxLabel12: TcxLabel
          Left = 9
          Top = 101
          AutoSize = False
          Caption = 'Dogum Tarihi'
          ParentColor = False
          Style.Color = clSilver
          Style.LookAndFeel.NativeStyle = True
          Style.TextStyle = []
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Height = 17
          Width = 110
        end
        object cxLabel11: TcxLabel
          Left = 9
          Top = 78
          AutoSize = False
          Caption = 'Hasta Soyad'#305
          ParentColor = False
          Style.Color = clSilver
          Style.LookAndFeel.NativeStyle = True
          Style.TextStyle = []
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Height = 17
          Width = 110
        end
        object txtHastaSoyadi: TcxTextEdit
          Left = 120
          Top = 73
          Properties.ReadOnly = True
          Style.BorderStyle = ebsUltraFlat
          Style.TextStyle = [fsBold]
          Style.TransparentBorder = True
          TabOrder = 4
          Width = 196
        end
        object txtHastaAdi: TcxTextEdit
          Left = 120
          Top = 51
          Properties.ReadOnly = True
          Style.BorderStyle = ebsUltraFlat
          Style.TextStyle = [fsBold]
          Style.TransparentBorder = True
          TabOrder = 5
          Width = 196
        end
        object TcxLabel
          Left = 9
          Top = 56
          AutoSize = False
          Caption = 'Hasta Ad'#305
          ParentColor = False
          Style.Color = clSilver
          Style.LookAndFeel.NativeStyle = True
          Style.TextStyle = []
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Height = 17
          Width = 110
        end
        object cxLabel10: TcxLabel
          Left = 9
          Top = 9
          AutoSize = False
          Caption = 'Takip - Ba'#351'vuruNo'
          ParentColor = False
          Style.Color = clSilver
          Style.LookAndFeel.NativeStyle = True
          Style.TextStyle = []
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Height = 17
          Width = 110
        end
        object txtTakipNo: TcxTextEdit
          Left = 120
          Top = 4
          Properties.ReadOnly = True
          Style.BorderStyle = ebsUltraFlat
          Style.TextStyle = [fsBold]
          Style.TransparentBorder = True
          TabOrder = 8
          Width = 106
        end
        object txtBasvuruNo: TcxTextEdit
          Left = 228
          Top = 4
          Properties.ReadOnly = True
          Style.BorderStyle = ebsUltraFlat
          Style.TextStyle = [fsBold]
          Style.TransparentBorder = True
          TabOrder = 9
          Width = 88
        end
        object cxLabel7: TcxLabel
          Left = 9
          Top = 147
          AutoSize = False
          Caption = 'Devredilen Kurum'
          ParentColor = False
          Style.Color = clSilver
          Style.TextStyle = []
          Height = 17
          Width = 110
        end
        object cxLabel6: TcxLabel
          Left = 9
          Top = 124
          AutoSize = False
          Caption = 'Sigortal'#305' Durumu'
          ParentColor = False
          Style.Color = clSilver
          Style.TextStyle = []
          Height = 17
          Width = 110
        end
        object txtTcKimlikNo: TcxTextEdit
          Left = 120
          Top = 27
          Style.BorderStyle = ebsUltraFlat
          Style.TransparentBorder = True
          TabOrder = 12
          Width = 106
        end
        object cxLabel13: TcxLabel
          Left = 9
          Top = 31
          AutoSize = False
          Caption = 'T.C Kimlik No'
          ParentColor = False
          Style.Color = clSilver
          Style.LookAndFeel.NativeStyle = True
          Style.TextStyle = []
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Height = 17
          Width = 110
        end
        object txtSigortaliTuru: TcxImageComboKadir
          Left = 120
          Top = 119
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
              Description = 'SSK Kurum Personel'
              Value = '3'
            end
            item
              Description = 'Di'#287'er'
              Value = '4'
            end>
          TabOrder = 14
          BosOlamaz = False
          Width = 106
        end
        object txtDevredilenKurum: TcxTextEdit
          Left = 120
          Top = 141
          TabOrder = 15
          Width = 105
        end
        object btnKabul: TcxButton
          Left = 3
          Top = 209
          Width = 151
          Height = 40
          Caption = 'F4 - Hastay'#305' Kabul Et'
          Enabled = False
          TabOrder = 16
          OnClick = btnKabulClick
        end
        object btnVazgec: TcxButton
          Left = 157
          Top = 209
          Width = 159
          Height = 40
          Caption = #304'ptal Et'
          Enabled = False
          TabOrder = 17
          OnClick = btnVazgecClick
        end
      end
      object Sayfa_Log: TcxTabSheet
        Caption = 'Log'
        ImageIndex = 1
        ExplicitLeft = 4
        ExplicitWidth = 318
        ExplicitHeight = 243
        object txtHata: TcxMemo
          Left = 0
          Top = 0
          Align = alClient
          Lines.Strings = (
            '')
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'mcskin'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'mcskin'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'mcskin'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'mcskin'
          TabOrder = 0
          ExplicitWidth = 318
          ExplicitHeight = 243
          Height = 256
          Width = 455
        end
      end
      object Sayfa_Rapor: TcxTabSheet
        Caption = 'Rapor Bilgileri'
        ImageIndex = 2
        ExplicitWidth = 744
        ExplicitHeight = 241
        object cxGrid2: TcxGrid
          Left = 0
          Top = 0
          Width = 455
          Height = 256
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
          ExplicitLeft = 2
          ExplicitTop = -3
          ExplicitWidth = 564
          ExplicitHeight = 392
          object GridEkstre: TcxGridDBTableView
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
            DataController.DataModeController.GridMode = True
            DataController.DataModeController.SyncMode = False
            DataController.DataSource = DataSource3
            DataController.DetailKeyFieldNames = 'raporTakipNo'
            DataController.Filter.TranslateBetween = True
            DataController.Filter.TranslateLike = True
            DataController.KeyFieldNames = 'raporTakipNo'
            DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
                FieldName = 'TAKIPTUTAR'
              end>
            DataController.Summary.SummaryGroups = <>
            Filtering.MRUItemsList = False
            Filtering.ColumnMRUItemsList = False
            FilterRow.InfoText = 'Arama Sat'#305'r'#305
            FilterRow.SeparatorWidth = 2
            FilterRow.Visible = True
            FilterRow.ApplyChanges = fracImmediately
            OptionsBehavior.AlwaysShowEditor = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnHidingOnGrouping = False
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
            OptionsView.CellAutoHeight = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.RowSeparatorColor = clBlack
            object GridEkstreRaporTuru: TcxGridDBColumn
              DataBinding.FieldName = 'RaporTuru'
              Width = 40
            end
            object GridEkstreRaporNo: TcxGridDBColumn
              DataBinding.FieldName = 'RaporNo'
              Width = 62
            end
            object GridEkstreRaporTarihi: TcxGridDBColumn
              DataBinding.FieldName = 'RaporTarihi'
              Width = 73
            end
            object GridEkstreVerenTesis: TcxGridDBColumn
              DataBinding.FieldName = 'VerenTesis'
              Width = 60
            end
            object GridEkstreTedaviRaporTuru: TcxGridDBColumn
              DataBinding.FieldName = 'TedaviRaporTuru'
              Width = 89
            end
            object GridEkstreraporTakipNo: TcxGridDBColumn
              DataBinding.FieldName = 'raporTakipNo'
              Width = 75
            end
            object GridEkstreseansGun: TcxGridDBColumn
              DataBinding.FieldName = 'seansGun'
              Width = 53
            end
            object GridEkstreseansSayi: TcxGridDBColumn
              DataBinding.FieldName = 'seansSayi'
              Width = 54
            end
            object GridEkstrebaslangicTarihi: TcxGridDBColumn
              DataBinding.FieldName = 'baslangicTarihi'
              Width = 77
            end
            object GridEkstrebitisTarihi: TcxGridDBColumn
              DataBinding.FieldName = 'bitisTarihi'
              Width = 68
            end
            object GridEkstreprotokolNo: TcxGridDBColumn
              DataBinding.FieldName = 'protokolNo'
              Width = 60
            end
            object GridEkstrebutKodu: TcxGridDBColumn
              DataBinding.FieldName = 'butKodu'
              Width = 63
            end
            object GridEkstretani: TcxGridDBColumn
              DataBinding.FieldName = 'tani'
              Width = 50
            end
            object GridEkstreprotokolTarihi: TcxGridDBColumn
              DataBinding.FieldName = 'protokolTarihi'
            end
            object GridEkstreaciklama: TcxGridDBColumn
              DataBinding.FieldName = 'aciklama'
              Width = 300
            end
          end
          object cxGrid2DBCardView1: TcxGridDBCardView
            DataController.DataModeController.DetailInSQLMode = True
            DataController.DataModeController.GridMode = True
            DataController.Filter.Active = True
            DataController.Filter.AutoDataSetFilter = True
            DataController.KeyFieldNames = 'raporTakipNo'
            DataController.MasterKeyFieldNames = 'raporTakipNo'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.CardIndent = 7
            object cxGrid2DBCardView1RecId1: TcxGridDBCardViewRow
              DataBinding.FieldName = 'RecId'
              Visible = False
              Position.BeginsLayer = True
            end
            object cxGrid2DBCardView1drTescil1: TcxGridDBCardViewRow
              DataBinding.FieldName = 'drTescil'
              Position.BeginsLayer = True
            end
            object cxGrid2DBCardView1drAdi1: TcxGridDBCardViewRow
              DataBinding.FieldName = 'drAdi'
              Position.BeginsLayer = True
            end
            object cxGrid2DBCardView1drSoyadi1: TcxGridDBCardViewRow
              DataBinding.FieldName = 'drSoyadi'
              Position.BeginsLayer = True
            end
            object cxGrid2DBCardView1brans1: TcxGridDBCardViewRow
              DataBinding.FieldName = 'brans'
              Position.BeginsLayer = True
            end
            object cxGrid2DBCardView1tip1: TcxGridDBCardViewRow
              DataBinding.FieldName = 'tip'
              Position.BeginsLayer = True
            end
            object cxGrid2DBCardView1raporTakipNo: TcxGridDBCardViewRow
              DataBinding.FieldName = 'raporTakipNo'
              Position.BeginsLayer = True
            end
          end
          object cxGrid2DBBandedTableView1: TcxGridDBBandedTableView
            DataController.DataModeController.DetailInSQLMode = True
            DataController.DataModeController.GridMode = True
            DataController.DataSource = DataSource2
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GridLines = glVertical
            OptionsView.GroupByBox = False
            Bands = <
              item
                Caption = 'Doktorlar'
              end>
            object cxGrid2DBBandedTableView1drtescil: TcxGridDBBandedColumn
              DataBinding.FieldName = 'drtescil'
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1dradi: TcxGridDBBandedColumn
              DataBinding.FieldName = 'dradi'
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1drSoyadi: TcxGridDBBandedColumn
              DataBinding.FieldName = 'drSoyadi'
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1drbrans: TcxGridDBBandedColumn
              DataBinding.FieldName = 'drbrans'
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1tip: TcxGridDBBandedColumn
              DataBinding.FieldName = 'tip'
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1raporTakipNo: TcxGridDBBandedColumn
              DataBinding.FieldName = 'raporTakipNo'
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
          end
          object cxGridLevel1: TcxGridLevel
            Caption = 'Hastalar'
            GridView = GridEkstre
            Options.DetailFrameColor = clHighlight
            object cxGrid2Level2: TcxGridLevel
              GridView = cxGrid2DBBandedTableView1
            end
          end
        end
      end
    end
  end
  object TakipData: TdxMemData
    Active = True
    Indexes = <>
    SortOptions = []
    Left = 432
    Top = 254
    object TakipDataTcKimlikNo: TStringField
      FieldName = 'TcKimlikNo'
    end
    object TakipDataTakipTarihi: TStringField
      FieldName = 'TakipTarihi'
    end
    object TakipDataPTuru: TStringField
      FieldName = 'PTuru'
      Size = 1
    end
    object TakipDatatturu: TStringField
      FieldName = 'tturu'
      Size = 1
    end
    object TakipDatatedevitipi: TStringField
      FieldName = 'tedevitipi'
      Size = 1
    end
    object TakipDatadurum: TStringField
      FieldName = 'durum'
      Size = 1
    end
    object TakipDatakurum: TStringField
      FieldName = 'kurum'
      Size = 2
    end
    object TakipDataservis: TStringField
      FieldName = 'servis'
      Size = 4
    end
    object TakipDatadoktor: TStringField
      FieldName = 'doktor'
      Size = 4
    end
  end
  object DataSource1: TDataSource
    DataSet = TakipData
    Left = 360
    Top = 238
  end
  object Medula3Provizyon: THTTPRIO
    WSDLLocation = 'HastaKabulIslemleri.wsdl'
    Service = 'HastaKabulIslemleriService'
    Port = 'HastaKabulIslemleri'
    HTTPWebNode.Agent = 'Borland SOAP 1.2'
    HTTPWebNode.UserName = '10273002'
    HTTPWebNode.Password = '2730'
    HTTPWebNode.UseUTF8InHeader = True
    HTTPWebNode.InvokeOptions = [soIgnoreInvalidCerts, soAutoCheckAccessPointViaUDDI]
    HTTPWebNode.WebNodeOptions = []
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soUTF8InHeader, soCacheMimeResponse, soUTF8EncodeXML]
    Left = 507
    Top = 268
  end
  object memDataRaporlar: TdxMemData
    Active = True
    Indexes = <
      item
        FieldName = 'raporTakipNo'
        SortOptions = []
      end>
    SortOptions = []
    Left = 356
    Top = 207
    object memDataRaporlarRaporTuru: TStringField
      DisplayWidth = 13
      FieldName = 'RaporTuru'
      Size = 2
    end
    object memDataRaporlarRaporNo: TStringField
      DisplayWidth = 20
      FieldName = 'RaporNo'
    end
    object memDataRaporlarRaporTarihi: TStringField
      DisplayWidth = 20
      FieldName = 'RaporTarihi'
    end
    object memDataRaporlarVerenTesis: TStringField
      DisplayWidth = 20
      FieldName = 'VerenTesis'
    end
    object memDataRaporlarTedaviRaporTuru: TStringField
      DisplayWidth = 10
      FieldName = 'TedaviRaporTuru'
      Size = 2
    end
    object memDataRaporlarraporTakipNo: TStringField
      FieldName = 'raporTakipNo'
    end
    object memDataRaporlarseansGun: TIntegerField
      FieldName = 'seansGun'
    end
    object memDataRaporlarseansSayi: TIntegerField
      FieldName = 'seansSayi'
    end
    object memDataRaporlarbaslangicTarihi: TDateTimeField
      FieldName = 'baslangicTarihi'
    end
    object memDataRaporlarbitisTarihi: TDateField
      FieldName = 'bitisTarihi'
    end
    object memDataRaporlarprotokolNo: TStringField
      FieldName = 'protokolNo'
    end
    object memDataRaporlarbutKodu: TStringField
      FieldName = 'butKodu'
    end
    object memDataRaporlartani: TStringField
      FieldName = 'tani'
    end
    object memDataRaporlarprotokolTarihi: TDateField
      FieldName = 'protokolTarihi'
    end
    object memDataRaporlaraciklama: TStringField
      FieldName = 'aciklama'
      Size = 1000
    end
  end
  object DataSource3: TDataSource
    DataSet = memDataRaporlar
    Left = 436
    Top = 207
  end
  object MemTable_Doktorlar: TSQLMemTable
    CurrentVersion = '13.00 '
    StoreDefs = True
    DatabaseName = 'MEMORY'
    ReadOnly = False
    AfterScroll = MemTable_DoktorlarAfterScroll
    CaseInsensitive = False
    IndexDefs = <
      item
        Name = 'MemTable_DoktorlarIndex2'
        Fields = 'raporTakipNo'
      end>
    IndexName = 'MemTable_DoktorlarIndex2'
    FieldDefs = <
      item
        Name = 'drtescil'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'dradi'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'drSoyadi'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'drbrans'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'raporTakipNo'
        DataType = ftString
        Size = 20
      end>
    TableName = 'Table668953727_4652'
    Exclusive = False
    MasterFields = 'raporTakipNo'
    MasterSource = DataSource3
    MemoryTableAllocBy = 1000
    Left = 512
    Top = 208
    object MemTable_Doktorlardrtescil: TStringField
      FieldName = 'drtescil'
    end
    object MemTable_Doktorlardradi: TStringField
      FieldName = 'dradi'
    end
    object MemTable_DoktorlardrSoyadi: TStringField
      FieldName = 'drSoyadi'
    end
    object MemTable_Doktorlardrbrans: TStringField
      FieldName = 'drbrans'
      Size = 4
    end
    object MemTable_DoktorlarraporTakipNo: TStringField
      FieldName = 'raporTakipNo'
    end
  end
  object DataSource2: TDataSource
    DataSet = MemTable_Doktorlar
    Left = 844
    Top = 7
  end
  object PopupMenu1: TPopupMenu
    Left = 392
    Top = 144
    object B1: TMenuItem
      Caption = 'Bilgileri Sorgula'
      OnClick = B1Click
    end
    object H1: TMenuItem
      Caption = 'Hastay'#305' Kabul Et'
    end
    object N1: TMenuItem
      Caption = #304'ptal'
    end
  end
end
