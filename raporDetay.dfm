object frmRaporDetay: TfrmRaporDetay
  Tag = -20
  Left = 224
  Top = 24
  BorderStyle = bsSizeToolWin
  Caption = 'frmRaporDetay'
  ClientHeight = 660
  ClientWidth = 919
  Color = 13750737
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TcxGroupBox
    Left = 0
    Top = 156
    Align = alTop
    TabOrder = 0
    DesignSize = (
      919
      43)
    Height = 43
    Width = 919
    object Label2: TLabel
      Left = 8
      Top = 9
      Width = 85
      Height = 13
      AutoSize = False
      Caption = 'Veren Tesis'
      Color = clSilver
      ParentColor = False
    end
    object Label3: TLabel
      Left = 8
      Top = 29
      Width = 85
      Height = 13
      AutoSize = False
      Caption = 'Rapor No'
      Color = clSilver
      ParentColor = False
    end
    object Label1: TLabel
      Left = 218
      Top = 28
      Width = 54
      Height = 13
      Caption = 'Rapor T'#252'r'#252
      Color = clSilver
      ParentColor = False
    end
    object txtVerenTesisKodu: TcxDBButtonEdit
      Left = 91
      Top = 2
      DataBinding.DataField = 'verenTesisKodu'
      DataBinding.DataSource = DataSource1
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = txtVerenTesisKoduPropertiesButtonClick
      Style.BorderStyle = ebsOffice11
      TabOrder = 0
      Width = 121
    end
    object txtTesisAdi: TcxDBTextEdit
      Left = 216
      Top = 2
      DataBinding.DataField = 'ADI'
      DataBinding.DataSource = DataSource1
      TabOrder = 1
      Width = 313
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 91
      Top = 22
      DataBinding.DataField = 'raporNo'
      DataBinding.DataSource = DataSource1
      TabOrder = 2
      Width = 121
    end
    object cxDBComboBox1: TcxDBComboBox
      Left = 275
      Top = 22
      DataBinding.DataField = 'turu'
      DataBinding.DataSource = DataSource1
      Properties.DropDownRows = 10
      Properties.Items.Strings = (
        '1 - Tedavi'
        '2 - '#304#351' Kazas'#305
        '3 - Meslek Hastal'#305#287#305
        '4 - Hastal'#305'k'
        '5 - Do'#287'um '#214'ncesi '#199'al'#305#351'abilir'
        '6 - Anal'#305'k'
        '7 - Do'#287'um'
        '8 - Protez'
        '9 - MAluliyet'
        '10 - '#304'la'#231' Kullan'#305'm'
        '11 - '#304'la'#231' Muafiyet')
      Properties.ReadOnly = False
      Properties.OnChange = cxDBComboBox1PropertiesChange
      Style.BorderStyle = ebsOffice11
      TabOrder = 3
      Width = 254
    end
    object txttedaviRaporTuru: TcxDBComboBox
      Left = 531
      Top = 22
      DataBinding.DataField = 'tedaviRaporTuru'
      DataBinding.DataSource = DataSource1
      Properties.DropDownRows = 10
      Properties.Items.Strings = (
        '1 - Diyaliz'
        '2 - Hiperbarik Oksijen Tedavisi'
        '3 - ESWT'
        '4 - T'#252'p Bebek'
        '5 - Fizik Tedavi ve Reh.'
        '6 - ESWL')
      Properties.ReadOnly = False
      Properties.OnChange = txttedaviRaporTuruPropertiesChange
      Style.BorderStyle = ebsOffice11
      TabOrder = 4
      Width = 118
    end
    object DBNavigator3: TDBNavigator
      Left = 704
      Top = 1
      Width = 80
      Height = 42
      DataSource = DataSource1
      VisibleButtons = [nbInsert, nbEdit, nbPost, nbCancel]
      Flat = True
      Hints.Strings = (
        'First record'
        'Prior record'
        'Next record'
        'Last record'
        'Sat'#305'r Ekle'
        'Sat'#305'r Sil'
        'Sat'#305'r G'#252'ncelle'
        'Sat'#305'r Kaydet'
        #304'ptal'
        'Yenile')
      Kind = dbnHorizontal
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      Visible = False
    end
    object cxDBDateEdit3: TcxDBDateEdit
      Left = 531
      Top = 2
      DataBinding.DataField = 'raporTarihi'
      DataBinding.DataSource = DataSource1
      Style.BorderStyle = ebsOffice11
      TabOrder = 6
      Width = 118
    end
    object sBitBtn5: TBitBtn
      Left = 849
      Top = 3
      Width = 65
      Height = 38
      Hint = 'Vazge'#231
      Anchors = [akTop, akRight]
      Caption = #304'ptal'
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = sBitBtn5Click
    end
  end
  object GroupBox3: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    Caption = '   Rapor Listesi      '
    TabOrder = 1
    Height = 156
    Width = 919
    object Panel1: TPanel
      Left = 3
      Top = 36
      Width = 913
      Height = 9
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 3
    end
    object DBGridEh3: TDBGridEh
      Left = 3
      Top = 45
      Width = 913
      Height = 101
      Align = alClient
      AllowedOperations = [alopInsertEh, alopUpdateEh, alopAppendEh]
      DataSource = DataSource1
      DynProps = <>
      Flat = True
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterParams.Color = clWindow
      FooterParams.Font.Charset = DEFAULT_CHARSET
      FooterParams.Font.Color = clWindowText
      FooterParams.Font.Height = -11
      FooterParams.Font.Name = 'MS Sans Serif'
      FooterParams.Font.Style = []
      FooterParams.ParentFont = False
      GridLineParams.VertEmptySpaceStyle = dessNonEh
      IndicatorOptions = [gioShowRowIndicatorEh]
      OptionsEh = [dghHighlightFocus, dghClearSelection, dghRowHighlight, dghColumnResize, dghColumnMove]
      ParentFont = False
      PopupMenu = PopupMenu3
      RowHeight = 21
      TabOrder = 0
      TitleParams.MultiTitle = True
      Columns = <
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'dosyaNo'
          Font.Charset = TURKISH_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Footers = <>
          Title.Caption = 'Dosya No'
          Width = 54
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'raporNo'
          Font.Charset = TURKISH_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Footers = <>
          Title.Caption = 'Rapor No'
          Width = 63
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'turu'
          Font.Charset = TURKISH_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Footers = <>
          Title.Caption = 'T'#252'r'
          Width = 19
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'raporTarihi'
          Font.Charset = TURKISH_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Footers = <>
          Title.Caption = 'Rapor Tarihi'
          Width = 72
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'verenTesisKodu'
          Font.Charset = TURKISH_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Footers = <>
          Title.Caption = 'Veren Tesis'
          Width = 63
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'ADI'
          Font.Charset = TURKISH_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Footers = <>
          Title.Caption = 'Tesis Ad'#305
          Width = 347
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'raporTakipNo'
          Font.Charset = TURKISH_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Footers = <>
          Title.Caption = 'Rapor Takip No'
          Width = 88
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'sira'
          Font.Charset = TURKISH_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Footers = <>
          Title.Caption = 'Sira'
          Width = 22
        end
        item
          Checkboxes = True
          DynProps = <>
          EditButtons = <>
          FieldName = 'Aktif'
          Font.Charset = TURKISH_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Footers = <>
          ReadOnly = True
          Width = 36
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'gelisNo'
          Font.Charset = TURKISH_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Footers = <>
          Title.Caption = 'GelisNo'
          Width = 39
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object txtXML: TMemo
      Left = 648
      Top = 72
      Width = 185
      Height = 25
      Lines.Strings = (
        'txtXML')
      TabOrder = 1
      Visible = False
    end
    object cxRadioGroup1: TcxRadioGroup
      Left = 3
      Top = 15
      Align = alTop
      Alignment = alCenterCenter
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = 'Tedavi'
          Value = '1'
        end
        item
          Caption = #304'la'#231
          Value = '10'
        end>
      Properties.OnChange = cxRadioGroup1PropertiesChange
      ItemIndex = 0
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      Height = 21
      Width = 913
    end
  end
  object GroupBox5: TcxGroupBox
    Left = 0
    Top = 199
    Align = alTop
    TabOrder = 2
    Height = 181
    Width = 919
    object Label4: TLabel
      Left = 8
      Top = 16
      Width = 85
      Height = 13
      AutoSize = False
      Caption = 'Ba'#351'lang'#305#231' Tarihi'
      Color = clSilver
      ParentColor = False
    end
    object Label5: TLabel
      Left = 8
      Top = 36
      Width = 85
      Height = 13
      AutoSize = False
      Caption = 'Biti'#351' Tarihi'
      Color = clSilver
      ParentColor = False
    end
    object Label6: TLabel
      Left = 8
      Top = 54
      Width = 85
      Height = 13
      AutoSize = False
      Caption = 'D'#252'zenleme T'#252'r'#252
      Color = clSilver
      ParentColor = False
    end
    object Label7: TLabel
      Left = 219
      Top = 36
      Width = 85
      Height = 13
      AutoSize = False
      Caption = 'Protokol No'
      Color = clSilver
      ParentColor = False
    end
    object Label8: TLabel
      Left = 219
      Top = 57
      Width = 85
      Height = 13
      AutoSize = False
      Caption = 'Protokol Tarihi'
      Color = clSilver
      ParentColor = False
    end
    object Label9: TLabel
      Left = 5
      Top = 70
      Width = 85
      Height = 13
      AutoSize = False
      Caption = 'A'#231#305'klama'
      Color = clSilver
      ParentColor = False
    end
    object Label10: TLabel
      Left = 218
      Top = 15
      Width = 32
      Height = 13
      Caption = 'Tan'#305'lar'
      Color = clSilver
      ParentColor = False
    end
    object txtbaslangicTarihi: TcxDBDateEdit
      Left = 92
      Top = 9
      DataBinding.DataField = 'baslangicTarihi'
      DataBinding.DataSource = DataSource1
      Style.BorderStyle = ebsOffice11
      TabOrder = 0
      Width = 121
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 92
      Top = 29
      DataBinding.DataField = 'bitisTarihi'
      DataBinding.DataSource = DataSource1
      Style.BorderStyle = ebsOffice11
      TabOrder = 1
      Width = 121
    end
    object txtduzenlemeTuru: TcxDBComboBox
      Left = 92
      Top = 49
      DataBinding.DataField = 'duzenlemeTuru'
      DataBinding.DataSource = DataSource1
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownRows = 3
      Properties.Items.Strings = (
        '1 - Heyet'
        '2 - Tek Hekim'
        '')
      Style.BorderStyle = ebsOffice11
      TabOrder = 2
      Width = 121
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 290
      Top = 29
      DataBinding.DataField = 'protokolNo'
      DataBinding.DataSource = DataSource1
      TabOrder = 3
      Width = 121
    end
    object cxDBDateEdit2: TcxDBDateEdit
      Left = 290
      Top = 49
      DataBinding.DataField = 'protokolTarihi'
      DataBinding.DataSource = DataSource1
      Style.BorderStyle = ebsOffice11
      TabOrder = 4
      Width = 121
    end
    object cxDBMemo1: TcxDBMemo
      Left = 3
      Top = 81
      DataBinding.DataField = 'aciklama'
      DataBinding.DataSource = DataSource1
      ParentFont = False
      Properties.ScrollBars = ssVertical
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -8
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 5
      Height = 97
      Width = 812
    end
    object txttanilar: TcxDBButtonEdit
      Left = 290
      Top = 9
      DataBinding.DataField = 'tanilar'
      DataBinding.DataSource = DataSource1
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = cxDBButtonEdit1PropertiesButtonClick
      Style.BorderStyle = ebsOffice11
      TabOrder = 6
      Width = 175
    end
    object GroupBox2: TcxGroupBox
      Left = 471
      Top = 1
      TabOrder = 7
      Height = 80
      Width = 437
      object Label13: TLabel
        Left = 4
        Top = 2
        Width = 276
        Height = 13
        AutoSize = False
        Caption = 'Raporu D'#252'zenleyen Doktorlar'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object DBGridEh2: TDBGridEh
        Left = 2
        Top = -2
        Width = 433
        Height = 55
        Align = alTop
        DataSource = DataSource3
        DynProps = <>
        Flat = True
        FooterParams.Color = clWindow
        GridLineParams.VertEmptySpaceStyle = dessNonEh
        IndicatorOptions = [gioShowRowIndicatorEh]
        OptionsEh = [dghFooter3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghColumnResize, dghColumnMove]
        RowHeight = 18
        TabOrder = 0
        Columns = <
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'kod'
            Footers = <>
            Title.Caption = 'Kod'
            Width = 47
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'drAdi'
            Font.Charset = TURKISH_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Footers = <>
            Title.Caption = 'Ad'#305
            Width = 219
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'drBransKodu'
            Font.Charset = TURKISH_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Footers = <>
            Title.Caption = 'Brans'
            Width = 37
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'drTescilNo'
            Font.Charset = TURKISH_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Footers = <>
            Title.Caption = 'Tescil No'
            Width = 56
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'tipi'
            Font.Charset = TURKISH_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Footers = <>
            PickList.Strings = (
              '1 - Raporu '#304'steyen Doktor'
              '2 - Raporu D'#252'zenleyen Doktor')
            Title.Caption = 'Tip'
            Title.Hint = '1 - Raporu '#304'steyen Doktor'#13#10'2 - Raporu D'#252'zenleyen Doktor'
            Width = 29
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object DBNavigator1: TDBNavigator
        Left = 2
        Top = 60
        Width = 433
        Height = 18
        DataSource = DataSource3
        VisibleButtons = [nbInsert, nbDelete, nbPost, nbCancel]
        Align = alBottom
        Flat = True
        Hints.Strings = (
          'First record'
          'Prior record'
          'Next record'
          'Last record'
          'Sat'#305'r Ekle'
          'Sat'#305'r Sil'
          'Sat'#305'r G'#252'ncelle'
          'Sat'#305'r Kaydet'
          #304'ptal'
          'Yenile')
        Kind = dbnHorizontal
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        ExplicitLeft = 3
        ExplicitTop = 59
        ExplicitWidth = 431
      end
      object cxButtonDoktorlar: TcxButton
        Left = 343
        Top = 86
        Width = 91
        Height = 28
        Caption = 'Doktorlar'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'UserSkin'
        TabOrder = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = cxButtonDoktorlarClick
      end
    end
    object GrpIlacRaporDuzeltme: TcxGroupBox
      Left = 506
      Top = 109
      TabOrder = 8
      Visible = False
      Height = 127
      Width = 302
      object Label43: TLabel
        Left = 6
        Top = 9
        Width = 85
        Height = 13
        AutoSize = False
        Caption = 'D'#252'zeltme Tarihi'
        Color = clSilver
        ParentColor = False
      end
      object Label14: TLabel
        Left = 218
        Top = 75
        Width = 86
        Height = 13
        Caption = #304'la'#231' / Etken Madd'
        Color = clSilver
        ParentColor = False
        Visible = False
      end
      object Label12: TLabel
        Left = 219
        Top = 54
        Width = 49
        Height = 13
        Caption = 'Klinik Tan'#305
        Color = clSilver
        ParentColor = False
        Visible = False
      end
      object Label11: TLabel
        Left = 218
        Top = 35
        Width = 42
        Height = 13
        Caption = 'Te'#351'hisler'
        Color = clSilver
        ParentColor = False
        Visible = False
      end
      object cxDBDateEdit4: TcxDBDateEdit
        Left = 90
        Top = 3
        DataBinding.DataField = 'duzeltmeTarihi'
        DataBinding.DataSource = DataSource1
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'McSkin'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'McSkin'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'McSkin'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'McSkin'
        TabOrder = 0
        Width = 121
      end
      object cxDBMemo2: TcxDBMemo
        Left = 211
        Top = 3
        DataBinding.DataField = 'duzeltmeBilgisi'
        DataBinding.DataSource = DataSource1
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'McSkin'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'McSkin'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'McSkin'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'McSkin'
        TabOrder = 1
        Height = 31
        Width = 252
      end
      object btnDuzelt: TBitBtn
        Tag = -1
        Left = 25
        Top = 30
        Width = 134
        Height = 76
        Hint = 'Rapor Bilgisini Medulaya Kaydet'
        Caption = #304'la'#231' Rapor A'#231#305'klama Bilgisini Ekle'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        NumGlyphs = 2
        ParentFont = False
        Spacing = 15
        TabOrder = 2
        OnClick = btnDuzeltClick
      end
      object txtEtkenMadde: TcxDBButtonEdit
        Left = 165
        Top = 69
        DataBinding.DataSource = DataSource1
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = cxDBButtonEdit3PropertiesButtonClick
        Style.BorderStyle = ebsOffice11
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'McSkin'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'McSkin'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'McSkin'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'McSkin'
        TabOrder = 3
        Visible = False
        Width = 175
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 165
        Top = 49
        DataBinding.DataField = 'klinikTani'
        DataBinding.DataSource = DataSource1
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'McSkin'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'McSkin'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'McSkin'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'McSkin'
        TabOrder = 4
        Visible = False
        Width = 175
      end
      object cxDBButtonEdit2: TcxDBButtonEdit
        Left = 165
        Top = 29
        DataBinding.DataField = 'teshisler'
        DataBinding.DataSource = DataSource1
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = cxDBButtonEdit2PropertiesButtonClick
        Style.BorderStyle = ebsOffice11
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'McSkin'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'McSkin'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'McSkin'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'McSkin'
        TabOrder = 5
        Visible = False
        Width = 175
      end
    end
    object sBitBtn4: TBitBtn
      Tag = -1
      Left = 814
      Top = 84
      Width = 94
      Height = 94
      Hint = 'Rapor Bilgisini Medulaya Kaydet'
      Caption = #304'la'#231' Rapor A'#231#305'klama Bilgisini Ekle'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      Spacing = 15
      TabOrder = 9
      OnClick = btnDuzeltClick
    end
  end
  object Detay: TcxGroupBox
    Left = 0
    Top = 380
    Align = alTop
    TabOrder = 3
    Height = 230
    Width = 919
    object cxPageControl1: TcxPageControl
      Left = 3
      Top = 22
      Width = 913
      Height = 205
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = sheetIlacTeshisleri
      ClientRectBottom = 198
      ClientRectLeft = 3
      ClientRectRight = 906
      ClientRectTop = 26
      object SheetDiyalizRaporBilgisi: TcxTabSheet
        Caption = 'Diyaliz Rapor Bilgisi'
        ImageIndex = 0
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object GroupBox4: TcxGroupBox
          Left = 0
          Top = 0
          Align = alClient
          TabOrder = 0
          Height = 172
          Width = 903
          object Label15: TLabel
            Left = 6
            Top = 80
            Width = 76
            Height = 13
            Caption = 'Refakat Varm'#305' ?'
            Color = clSilver
            ParentColor = False
          end
          object Label16: TLabel
            Left = 6
            Top = 20
            Width = 53
            Height = 13
            Caption = 'Seans G'#252'n'
            Color = clSilver
            ParentColor = False
          end
          object Label17: TLabel
            Left = 6
            Top = 40
            Width = 60
            Height = 13
            Caption = 'Seans Say'#305's'#305
            Color = clSilver
            ParentColor = False
          end
          object Label18: TLabel
            Left = 7
            Top = 60
            Width = 44
            Height = 13
            Caption = 'But Kodu'
            Color = clSilver
            ParentColor = False
          end
          object cxDBComboBox2: TcxDBComboBox
            Left = 107
            Top = 74
            DataBinding.DataField = 'RefakatVarmi'
            DataBinding.DataSource = DataSource1
            Properties.DropDownRows = 10
            Properties.Items.Strings = (
              'E - Evet'
              'H - Hay'#305'r')
            Properties.OnChange = cxDBComboBox1PropertiesChange
            Style.BorderStyle = ebsOffice11
            TabOrder = 0
            Width = 94
          end
          object cxDBSpinEdit1: TcxDBSpinEdit
            Left = 107
            Top = 14
            DataBinding.DataField = 'seansGun'
            DataBinding.DataSource = DataSource1
            Style.BorderStyle = ebsOffice11
            TabOrder = 1
            Width = 42
          end
          object cxDBSpinEdit2: TcxDBSpinEdit
            Left = 107
            Top = 34
            DataBinding.DataField = 'seansSayi'
            DataBinding.DataSource = DataSource1
            Style.BorderStyle = ebsOffice11
            TabOrder = 2
            Width = 42
          end
          object cxDBTextEdit5: TcxDBTextEdit
            Left = 107
            Top = 54
            DataBinding.DataField = 'butKodu'
            DataBinding.DataSource = DataSource1
            TabOrder = 3
            Width = 94
          end
        end
      end
      object SheetFTRRaporBilgisi: TcxTabSheet
        Caption = 'FTR Rapor Bilgisi'
        ImageIndex = 2
        TabVisible = False
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object GroupBox7: TcxGroupBox
          Left = 0
          Top = 0
          Align = alClient
          TabOrder = 0
          Height = 172
          Width = 903
          object Label21: TLabel
            Left = 6
            Top = 60
            Width = 86
            Height = 13
            Caption = 'Vucut B'#246'lge Kodu'
            Color = clSilver
            ParentColor = False
          end
          object Label22: TLabel
            Left = 6
            Top = 20
            Width = 53
            Height = 13
            Caption = 'Seans G'#252'n'
            Color = clSilver
            ParentColor = False
          end
          object Label23: TLabel
            Left = 6
            Top = 40
            Width = 60
            Height = 13
            Caption = 'Seans Say'#305's'#305
            Color = clSilver
            ParentColor = False
          end
          object Label24: TLabel
            Left = 7
            Top = 80
            Width = 44
            Height = 13
            Caption = 'But Kodu'
            Color = clSilver
            ParentColor = False
          end
          object cxDBSpinEdit5: TcxDBSpinEdit
            Left = 107
            Top = 14
            DataBinding.DataField = 'seansGun'
            DataBinding.DataSource = DataSource1
            TabOrder = 0
            Width = 42
          end
          object cxDBSpinEdit6: TcxDBSpinEdit
            Left = 107
            Top = 34
            DataBinding.DataField = 'seansSayi'
            DataBinding.DataSource = DataSource1
            TabOrder = 1
            Width = 42
          end
          object cxDBTextEdit4: TcxDBTextEdit
            Left = 107
            Top = 74
            DataBinding.DataField = 'butKodu'
            DataBinding.DataSource = DataSource1
            TabOrder = 2
            Width = 121
          end
          object ftrVucutBolge: TcxDBComboBox
            Left = 107
            Top = 54
            DataBinding.DataField = 'ftrVucutBolgesiKodu'
            DataBinding.DataSource = DataSource1
            Properties.DropDownRows = 10
            Properties.Items.Strings = (
              '1 - Y'#252'z B'#246'lgesi'
              '2 - Boyun B'#246'lgesi'
              '3 - S'#305'rt B'#246'lgesi'
              '4 - Bel B'#246'lgesi'
              '5 - Omuz B'#246'lgesi'
              '6 - Diresek B'#246'lgesi'
              '7 - El - El Bile'#287'i B'#246'lgesi'
              '8 - Kal'#231'a B'#246'lgesi'
              '9 - Diz B'#246'lgesi'
              '10 - Ayak Ayak Bile'#287'i B'#246'lgesi')
            Properties.OnChange = ftrVucutBolgePropertiesChange
            TabOrder = 3
            Width = 206
          end
        end
      end
      object sheetIlacTeshisleri: TcxTabSheet
        Caption = #304'la'#231' Te'#351'hisleri'
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object GroupBox14: TcxGroupBox
          Left = 0
          Top = 0
          Align = alClient
          TabOrder = 0
          Height = 172
          Width = 903
          object GroupBox15: TcxGroupBox
            Left = 6
            Top = 7
            Caption = #304'la'#231' Te'#351'hisleri'
            TabOrder = 0
            Height = 165
            Width = 352
            object DBGridEh6: TDBGridEh
              Left = 2
              Top = -2
              Width = 348
              Height = 146
              Align = alClient
              DataSource = DataSource6
              DynProps = <>
              Flat = True
              FooterParams.Color = clWindow
              GridLineParams.VertEmptySpaceStyle = dessNonEh
              IndicatorOptions = [gioShowRowIndicatorEh]
              OptionsEh = [dghFooter3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghColumnResize, dghColumnMove]
              PopupMenu = PopupMenu1
              RowHeight = 18
              TabOrder = 0
              Columns = <
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'baslangicTarihi'
                  Font.Charset = TURKISH_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Footers = <>
                  Title.Caption = 'Ba'#351'lang'#305#231' Tarihi'
                  Width = 84
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'bitisTarihi'
                  Font.Charset = TURKISH_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Footers = <>
                  Title.Caption = 'Biti'#351' Tarihi'
                  Width = 87
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'teshisKodu'
                  Footers = <>
                  Width = 77
                end
                item
                  AutoFitColWidth = False
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'ICD10Kodu'
                  Footers = <>
                  Width = 65
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
            object DBNavigator6: TDBNavigator
              Left = 2
              Top = 144
              Width = 348
              Height = 19
              DataSource = DataSource6
              VisibleButtons = [nbInsert, nbDelete, nbPost, nbCancel]
              Align = alBottom
              Flat = True
              Hints.Strings = (
                'First record'
                'Prior record'
                'Next record'
                'Last record'
                'Sat'#305'r Ekle'
                'Sat'#305'r Sil'
                'Sat'#305'r G'#252'ncelle'
                'Sat'#305'r Kaydet'
                #304'ptal'
                'Yenile')
              Kind = dbnHorizontal
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              ExplicitLeft = 3
              ExplicitTop = 136
              ExplicitWidth = 346
            end
          end
          object cxButtonTESHIS: TcxButton
            Left = 362
            Top = 52
            Width = 90
            Height = 30
            Caption = 'Te'#351'his Kodlar'#305
            TabOrder = 1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = cxButtonTESHISClick
          end
          object cxButtonICD: TcxButton
            Left = 362
            Top = 21
            Width = 90
            Height = 30
            Caption = 'ICD10 Kodlar'#305
            TabOrder = 2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = cxButtonICDClick
          end
          object btnDiyabet: TcxButton
            Left = 362
            Top = 143
            Width = 90
            Height = 30
            Caption = 'Diyabet Formu'
            TabOrder = 3
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btnDiyabetClick
          end
          object GroupBox16: TcxGroupBox
            Left = 453
            Top = 7
            Caption = #304'la'#231' Etken Maddeleri'
            TabOrder = 4
            Height = 167
            Width = 453
            object dozHint: TLabel
              Left = 105
              Top = 132
              Width = 3
              Height = 13
              Caption = '.'
            end
            object DBGridEh7: TDBGridEh
              Left = 5
              Top = 37
              Width = 449
              Height = 112
              DataSource = DataSource7
              DynProps = <>
              Flat = True
              FooterParams.Color = clWindow
              GridLineParams.VertEmptySpaceStyle = dessNonEh
              IndicatorOptions = [gioShowRowIndicatorEh]
              OptionsEh = [dghFooter3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghColumnResize, dghColumnMove]
              RowHeight = 18
              TabOrder = 0
              Columns = <
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'etkenMaddeKodu'
                  Footers = <>
                  Title.Caption = 'Etken M.Kodu'
                  Width = 63
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'etkenMaddeAdi'
                  Footers = <>
                  Title.Caption = 'Etken M. Ad'#305
                  Width = 121
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'kullanimDoz1'
                  Font.Charset = TURKISH_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Footers = <>
                  Title.Caption = 'Doz 1'
                  Width = 31
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'kullanimDoz2'
                  Font.Charset = TURKISH_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Footers = <>
                  Title.Caption = 'Doz 2'
                  Width = 32
                end
                item
                  AutoDropDown = True
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'kullanimDozBirim'
                  Footers = <>
                  PickList.Strings = (
                    ''
                    '1-Adet '
                    '2- Milimetre '
                    '3-Miligram '
                    '4-Gram '
                    '5-Damla '
                    '6-'#220'nite '
                    '7-Kutu'
                    '8- Mikrogram'
                    '9- Mikrolitre'
                    'A- Bin '#220'nite'
                    'B- Milyon '#220'nite')
                  Title.Caption = 'Doz Birim'
                  Width = 48
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'kullanimPeriyot'
                  Footers = <>
                  Title.Caption = 'Periyot'
                  Width = 36
                end
                item
                  AutoDropDown = True
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'kullanimPeriyotBirim'
                  Footers = <>
                  PickList.Strings = (
                    ''
                    '1-Dakika '
                    '2-Saat '
                    '3-G'#252'n '
                    '4-Hafta '
                    '5-Ay '
                    '6-Y'#305'l '
                    '7- '#214'm'#252'r Boyu')
                  Title.Caption = 'Periyot Birim'
                  Width = 61
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'onay'
                  Footers = <>
                  Width = 28
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
            object DBNavigator7: TDBNavigator
              Left = 2
              Top = 146
              Width = 449
              Height = 19
              DataSource = DataSource7
              VisibleButtons = [nbInsert, nbDelete, nbPost, nbCancel]
              Align = alBottom
              Flat = True
              Hints.Strings = (
                'First record'
                'Prior record'
                'Next record'
                'Last record'
                'Sat'#305'r Ekle'
                'Sat'#305'r Sil'
                'Sat'#305'r G'#252'ncelle'
                'Sat'#305'r Kaydet'
                #304'ptal'
                'Yenile')
              Kind = dbnHorizontal
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              ExplicitLeft = 3
              ExplicitTop = 138
              ExplicitWidth = 447
            end
            object cxGrid2: TcxGrid
              Left = 2
              Top = -2
              Width = 449
              Height = 148
              Align = alClient
              Font.Charset = TURKISH_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              LevelTabs.ImageBorder = 2
              LevelTabs.Style = 1
              LookAndFeel.Kind = lfOffice11
              LookAndFeel.NativeStyle = False
              ExplicitLeft = 3
              ExplicitTop = 15
              ExplicitWidth = 447
              ExplicitHeight = 123
              object cxGridDBTableView1: TcxGridDBTableView
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
                DataController.DataSource = DataSource7
                DataController.Filter.Active = True
                DataController.Filter.TranslateBetween = True
                DataController.Filter.TranslateLike = True
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Format = '#,###.#0'
                    Kind = skSum
                    FieldName = 'borc'
                  end
                  item
                    Format = '#,###.#0'
                    Kind = skSum
                    FieldName = 'alacak'
                  end>
                DataController.Summary.SummaryGroups = <>
                Filtering.MRUItemsList = False
                Filtering.ColumnMRUItemsList = False
                FilterRow.InfoText = 'Arama Sat'#305'r'#305
                FilterRow.SeparatorWidth = 2
                FilterRow.ApplyChanges = fracImmediately
                Images = DATALAR.global_img_list4
                OptionsBehavior.AlwaysShowEditor = True
                OptionsBehavior.FocusCellOnTab = True
                OptionsCustomize.ColumnGrouping = False
                OptionsCustomize.ColumnHidingOnGrouping = False
                OptionsCustomize.ColumnsQuickCustomization = True
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Inserting = False
                OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
                OptionsView.CellAutoHeight = True
                OptionsView.GroupByBox = False
                OptionsView.Indicator = True
                OptionsView.RowSeparatorColor = clBlack
                object cxGridDBTableView1Column1: TcxGridDBColumn
                  Caption = 'Etken M.Kodu'
                  DataBinding.FieldName = 'etkenMaddeKodu'
                  Options.Editing = False
                  Width = 65
                end
                object cxGridDBTableView1Column2: TcxGridDBColumn
                  Caption = 'Etken M.Ad'#305
                  DataBinding.FieldName = 'etkenMaddeAdi'
                  Options.Editing = False
                  Width = 100
                end
                object cxGridDBTableView1Column3: TcxGridDBColumn
                  Caption = 'Doz1'
                  DataBinding.FieldName = 'kullanimDoz1'
                  Width = 38
                end
                object cxGridDBTableView1Column4: TcxGridDBColumn
                  Caption = 'Doz2'
                  DataBinding.FieldName = 'kullanimDoz2'
                  Width = 40
                end
                object cxGridDBTableView1Column5: TcxGridDBColumn
                  Caption = 'Doz Birim'
                  DataBinding.FieldName = 'kullanimDozBirim'
                  PropertiesClassName = 'TcxImageComboBoxProperties'
                  Properties.Items = <
                    item
                      Description = 'Adet'
                      ImageIndex = 0
                      Value = '1'
                    end
                    item
                      Description = 'Milimetre'
                      Value = '2'
                    end
                    item
                      Description = 'Miligram'
                      Value = '3'
                    end
                    item
                      Description = 'Gram'
                      Value = '4'
                    end
                    item
                      Description = 'Damla'
                      Value = '5'
                    end
                    item
                      Description = #220'nite'
                      Value = '6'
                    end
                    item
                      Description = 'Kutu'
                      Value = '7'
                    end
                    item
                      Description = 'Mikrogram'
                      Value = '8'
                    end
                    item
                      Description = 'Bin '#220'nite'
                      Value = 'A'
                    end
                    item
                      Description = 'Milyon '#220'nite'
                      Value = 'B'
                    end>
                  Width = 50
                end
                object cxGridDBTableView1Column6: TcxGridDBColumn
                  Caption = 'Periyot'
                  DataBinding.FieldName = 'kullanimPeriyot'
                  Width = 40
                end
                object cxGridDBTableView1Column7: TcxGridDBColumn
                  Caption = 'Peryot Birim'
                  DataBinding.FieldName = 'kullanimPeriyotBirim'
                  PropertiesClassName = 'TcxImageComboBoxProperties'
                  Properties.Items = <
                    item
                      Description = 'Dakika'
                      ImageIndex = 0
                      Value = '1'
                    end
                    item
                      Description = 'Saat'
                      Value = '2'
                    end
                    item
                      Description = 'G'#252'n'
                      Value = '3'
                    end
                    item
                      Description = 'Hafta'
                      Value = '4'
                    end
                    item
                      Description = 'Ay'
                      Value = '5'
                    end
                    item
                      Description = 'Y'#305'l'
                      Value = '6'
                    end
                    item
                      Description = #214'm'#252'r Boyu'
                      Value = '7'
                    end>
                  Width = 60
                end
                object cxGridDBTableView1Column8: TcxGridDBColumn
                  DataBinding.FieldName = 'onay'
                  Width = 30
                end
              end
              object cxGridDBBandedTableView1: TcxGridDBBandedTableView
                DataController.DataModeController.DetailInSQLMode = True
                DataController.DataModeController.GridMode = True
                DataController.DataModeController.SmartRefresh = True
                DataController.DetailKeyFieldNames = 'Tan'#305'm'
                DataController.Filter.Active = True
                DataController.Filter.AutoDataSetFilter = True
                DataController.Filter.TranslateBetween = True
                DataController.Filter.TranslateIn = True
                DataController.Filter.TranslateLike = True
                DataController.KeyFieldNames = 'Tan'#305'm'
                DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText, dcoFocusTopRowAfterSorting, dcoImmediatePost]
                DataController.Summary.DefaultGroupSummaryItems = <
                  item
                    Kind = skSum
                    Position = spFooter
                    Column = cxGridDBBandedColumn5
                  end
                  item
                    Kind = skSum
                    Column = cxGridDBBandedColumn5
                  end>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                Filtering.ColumnFilteredItemsList = True
                FilterRow.InfoText = 'Arama Sat'#305'r'#305
                FilterRow.ApplyChanges = fracImmediately
                OptionsBehavior.AlwaysShowEditor = True
                OptionsBehavior.DragDropText = True
                OptionsBehavior.FocusCellOnTab = True
                OptionsBehavior.FocusFirstCellOnNewRecord = True
                OptionsBehavior.GoToNextCellOnEnter = True
                OptionsBehavior.FocusCellOnCycle = True
                OptionsBehavior.PullFocusing = True
                OptionsData.Deleting = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
                OptionsView.Footer = True
                OptionsView.FooterMultiSummaries = True
                OptionsView.GroupByBox = False
                OptionsView.GroupFooterMultiSummaries = True
                OptionsView.GroupFooters = gfVisibleWhenExpanded
                OptionsView.BandCaptionsInColumnAlternateCaption = True
                OptionsView.BandHeaderEndEllipsis = True
                Bands = <
                  item
                    Caption = 'Geli'#351'ler'
                  end>
                object cxGridDBBandedColumn1: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'Tan'#305'm'
                  Width = 90
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn2: TcxGridDBBandedColumn
                  Caption = 'Tan'#305'm Ad'#305
                  DataBinding.FieldName = 'ad'
                  Width = 150
                  Position.BandIndex = 0
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn3: TcxGridDBBandedColumn
                  Caption = 'Toplam'
                  DataBinding.FieldName = 'adet'
                  Width = 70
                  Position.BandIndex = 0
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn4: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'kurumT'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DisplayFormat = '#,###.#0'
                  Width = 80
                  Position.BandIndex = 0
                  Position.ColIndex = 3
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn5: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'hastaT'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DisplayFormat = '#,###.#0'
                  Width = 80
                  Position.BandIndex = 0
                  Position.ColIndex = 4
                  Position.RowIndex = 0
                end
              end
              object cxGridDBBandedTableView2: TcxGridDBBandedTableView
                DataController.DetailKeyFieldNames = 'gelisNo'
                DataController.KeyFieldNames = 'gelisNo'
                DataController.MasterKeyFieldNames = 'gelisNo'
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsBehavior.AlwaysShowEditor = True
                OptionsView.GroupByBox = False
                Bands = <
                  item
                    Caption = 'Hareketler'
                  end>
                object cxGridDBBandedColumn6: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'NAME1'
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn7: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'SATISF'
                  Position.BandIndex = 0
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
              end
              object cxGridDBBandedTableView3: TcxGridDBBandedTableView
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                Bands = <
                  item
                    Caption = 'i'#351'lemler'
                  end>
              end
              object cxGridDBBandedTableView4: TcxGridDBBandedTableView
                DataController.DataModeController.DetailInSQLMode = True
                DataController.DataModeController.GridMode = True
                DataController.Filter.Active = True
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsView.GroupByBox = False
                OptionsView.BandCaptionsInColumnAlternateCaption = True
                Bands = <
                  item
                  end>
                object cxGridDBBandedColumn8: TcxGridDBBandedColumn
                  Caption = 'Tanim'
                  DataBinding.FieldName = 'TANIM'
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn9: TcxGridDBBandedColumn
                  Caption = 'Hasta Ad'#305
                  DataBinding.FieldName = 'HASTAADI'
                  Position.BandIndex = 0
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn10: TcxGridDBBandedColumn
                  Caption = 'Soyad'#305
                  DataBinding.FieldName = 'HASTASOYADI'
                  Position.BandIndex = 0
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn11: TcxGridDBBandedColumn
                  Caption = 'Hizmet Ad'#305
                  DataBinding.FieldName = 'NAME1'
                  Width = 80
                  Position.BandIndex = 0
                  Position.ColIndex = 3
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn12: TcxGridDBBandedColumn
                  Caption = 'Kurum F'
                  DataBinding.FieldName = 'KSATISF'
                  Position.BandIndex = 0
                  Position.ColIndex = 4
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn13: TcxGridDBBandedColumn
                  Caption = 'Hasta F'
                  DataBinding.FieldName = 'SATISF'
                  Position.BandIndex = 0
                  Position.ColIndex = 5
                  Position.RowIndex = 0
                end
              end
              object cxGridLevel1: TcxGridLevel
                Caption = 'Hastalar'
                GridView = cxGridDBTableView1
                Options.DetailFrameColor = clHighlight
              end
            end
          end
          object cxButtonETKEN: TcxButton
            Left = 362
            Top = 83
            Width = 90
            Height = 30
            Caption = 'Etken Maddeler'
            TabOrder = 5
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = cxButtonETKENClick
          end
          object cxButtonSUTKURAL: TcxButton
            Left = 362
            Top = 113
            Width = 90
            Height = 30
            Caption = 'E.M.Sut Kural'
            TabOrder = 6
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = cxButtonSUTKURALClick
          end
          object chkTani: TcxCheckBox
            Left = 361
            Top = 3
            Caption = 'S'#305'k Kulland'#305'klar'#305'm'
            State = cbsChecked
            TabOrder = 7
            Width = 90
          end
        end
      end
    end
  end
  object ADO_RAPORLAR: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    Filter = 'turu = '#39'1'#39
    Filtered = True
    AfterScroll = ADO_RAPORLARAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from Raporlar R'
      ' left join SAGLIKTESIS T on T.kodu = verenTesisKodu')
    Left = 164
    Top = 288
  end
  object DataSource1: TDataSource
    DataSet = ADO_RAPORLAR
    Left = 236
    Top = 128
  end
  object DataSource3: TDataSource
    DataSet = ADO_DOKTORLAR
    Left = 368
    Top = 136
  end
  object ADO_DOKTORLAR: TADOTable
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    OnNewRecord = ADO_DOKTORLARNewRecord
    IndexFieldNames = 'sira'
    MasterFields = 'sira'
    MasterSource = DataSource1
    TableName = 'RaporDetay_Doktorlar'
    Left = 328
    Top = 138
  end
  object Rapor__: THTTPRIO
    WSDLLocation = 'RaporIslemleri.wsdl'
    Service = 'RaporIslemleriService'
    Port = 'RaporIslemleri'
    HTTPWebNode.Agent = 'Borland SOAP 1.2'
    HTTPWebNode.UseUTF8InHeader = True
    HTTPWebNode.InvokeOptions = [soIgnoreInvalidCerts, soAutoCheckAccessPointViaUDDI]
    HTTPWebNode.WebNodeOptions = []
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soUTF8InHeader, soCacheMimeResponse, soUTF8EncodeXML]
    Left = 643
    Top = 100
  end
  object DOKTORLAR: TADOQuery
    Connection = DATALAR.ADOConnection2
    Parameters = <>
    Left = 72
    Top = 274
  end
  object RaporOku: THTTPRIO
    WSDLLocation = 'D:\Dializ2007\RaporIslemleriOKU.wsdl'
    Service = 'RaporIslemleriService'
    Port = 'RaporIslemleri'
    HTTPWebNode.Agent = 'Borland SOAP 1.2'
    HTTPWebNode.UseUTF8InHeader = True
    HTTPWebNode.InvokeOptions = [soIgnoreInvalidCerts, soAutoCheckAccessPointViaUDDI]
    HTTPWebNode.WebNodeOptions = []
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soUTF8InHeader, soCacheMimeResponse, soUTF8EncodeXML]
    Left = 611
    Top = 100
  end
  object ADO_TAS: TADOTable
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    IndexFieldNames = 'sira'
    MasterFields = 'sira'
    MasterSource = DataSource1
    TableName = 'ESWLRapor_TasBilgileri'
    Left = 416
    Top = 138
  end
  object DataSource2: TDataSource
    DataSet = ADO_TAS
    Left = 456
    Top = 136
  end
  object ADO_SEANS: TADOTable
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    IndexFieldNames = 'sira'
    MasterFields = 'sira'
    MasterSource = DataSource1
    TableName = 'ESWLRapor_seansBilgileri'
    Left = 392
    Top = 74
  end
  object DataSource4: TDataSource
    DataSet = ADO_SEANS
    Left = 456
    Top = 64
  end
  object ADO_ILACTESHISLER_: TADOQuery
    Connection = DATALAR.ADOConnection2
    Parameters = <>
    Left = 528
    Top = 122
  end
  object ADO_ILACTESHISLER: TADOTable
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    OnNewRecord = ADO_ILACTESHISLERNewRecord
    IndexFieldNames = 'RaporSira'
    MasterFields = 'sira'
    MasterSource = DataSource1
    TableName = 'IlacRaporTeshisler'
    Left = 200
    Top = 562
  end
  object DataSource6: TDataSource
    DataSet = ADO_ILACTESHISLER
    Left = 232
    Top = 560
  end
  object ADO_ILACETKENMADDE: TADOTable
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    IndexFieldNames = 'RaporSira'
    MasterFields = 'sira'
    MasterSource = DataSource1
    TableName = 'IlacRaporEtkenMaddeler'
    Left = 328
    Top = 626
  end
  object DataSource7: TDataSource
    DataSet = ADO_ILACETKENMADDE
    Left = 360
    Top = 632
  end
  object DrList: TListeAc
    ListeBaslik = 'Doktorlar'
    TColcount = 4
    TColsW = '60,150,60,60'
    Table = 'Doktorlar'
    Conn = DATALAR.ADOConnection2
    Filtercol = 1
    BaslikRenk = 16744576
    DipRenk = 16744576
    ImajList = DATALAR.global_img_list4
    ButtonImajIndex = 132
    Kolonlar.Strings = (
      'kod'
      'ADI'
      'TescilNo'
      'Brans')
    KolonBasliklari.Strings = (
      'Kod'
      'Doktor Ad'#305
      'TescilNo'
      'Bran'#351)
    Calistir = fgEvet
    BiriktirmeliSecim = False
    Grup = False
    GrupCol = 0
    Left = 828
    Top = 286
  end
  object PopupMenu1: TPopupMenu
    Left = 136
    Top = 560
    object N1: TMenuItem
      Caption = #304'la'#231' Rapor Te'#351'hi'#351' Ve Etken Maddeleri '#350'ablon Olarak Kaydet'
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object T1: TMenuItem
      Caption = 'Te'#351'his Ve Etken Maddeleri '#350'ablondan Y'#252'kle'
      OnClick = T1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object E2: TMenuItem
      Caption = 'Eklenen Te'#351'hisi Meduladaki Rapora Ekle'
      OnClick = E2Click
    end
  end
  object ListeAc2: TListeAc
    ListeBaslik = 'Te'#351'his '#350'ablonlar'#305
    TColcount = 2
    TColsW = '30,100'
    Table = 'IlacRaporSablon'
    Conn = DATALAR.ADOConnection2
    Filtercol = 1
    BaslikRenk = 16744576
    DipRenk = 16744576
    ButtonImajIndex = 132
    Kolonlar.Strings = (
      'Id'
      'sablonTanimi')
    KolonBasliklari.Strings = (
      #350'ablon Id'
      #350'ablon Tan'#305'm'#305)
    Calistir = fgEvet
    BiriktirmeliSecim = False
    Grup = False
    GrupCol = 0
    Left = 108
    Top = 558
  end
  object TaniListe: TListeAc
    ListeBaslik = 'Tan'#305'lar'
    TColcount = 2
    TColsW = '60,350'
    Table = 'icd_teshisleri'
    Conn = DATALAR.ADOConnection2
    Filtercol = 1
    BaslikRenk = 16744576
    DipRenk = 16744576
    ImajList = DATALAR.global_img_list4
    ButtonImajIndex = 132
    Kolonlar.Strings = (
      'ICDKODU'
      'TANI')
    KolonBasliklari.Strings = (
      'Tani Kodu'
      'Tani Tan'#305'm'#305)
    Calistir = fgEvet
    BiriktirmeliSecim = False
    Grup = False
    GrupCol = 0
    Left = 260
    Top = 414
  end
  object PopupMenu2: TPopupMenu
    Left = 584
    Top = 544
    object E1: TMenuItem
      Caption = 'Eklenen Etken Maddeyi Meduladaki Rapora Ekle'
      OnClick = E1Click
    end
  end
  object PopupMenu3: TPopupMenu
    Images = DATALAR.imag24png
    Left = 40
    Top = 200
    object Kapat1: TMenuItem
      Tag = -30
      Caption = 'Kapat'
      ImageIndex = 18
      OnClick = cxButtonCClick
    end
    object B1: TMenuItem
      Tag = -3
      Caption = 'Ba'#351'hekim Onay'#305' Ver'
      ImageIndex = 49
      OnClick = cxButtonCClick
    end
    object B2: TMenuItem
      Tag = -2
      Caption = 'Ba'#351'hekim Onay'#305' Red'
      ImageIndex = 50
      OnClick = cxButtonCClick
    end
    object R1: TMenuItem
      Tag = -1
      Caption = 'Raporu Aktif Yap'
      ImageIndex = 0
      OnClick = cxButtonCClick
    end
    object lemler1: TMenuItem
      Tag = -30
      Caption = #304#351'lemler'
      ImageIndex = 81
      object YeniRapor1: TMenuItem
        Tag = -20
        Caption = 'Yeni Rapor'
        ImageIndex = 30
        OnClick = cxButtonCClick
      end
      object Dzenle1: TMenuItem
        Tag = -21
        Caption = 'D'#252'zenle'
        ImageIndex = 34
      end
      object Kaydet1: TMenuItem
        Tag = -22
        Caption = 'Kaydet'
        ImageIndex = 31
        OnClick = cxButtonCClick
      end
      object RaporuSistemdenSil1: TMenuItem
        Tag = -8
        Caption = 'Raporu Sistemden Sil'
        ImageIndex = 33
        OnClick = cxButtonCClick
      end
    end
    object RaporuMedulayaKaydet1: TMenuItem
      Tag = -4
      Caption = 'Raporu Medulaya Kaydet'
      ImageIndex = 76
      OnClick = cxButtonCClick
    end
    object RaporuMeduladanOku1: TMenuItem
      Tag = -5
      Caption = 'Raporu Meduladan Oku'
      ImageIndex = 67
      OnClick = cxButtonCClick
    end
    object RaporuMeduladanSil1: TMenuItem
      Tag = -6
      Caption = 'Raporu Meduladan Sil'
      ImageIndex = 43
      OnClick = cxButtonCClick
    end
    object RaporuYazdr1: TMenuItem
      Tag = -7
      Caption = 'Raporu Yazd'#305'r'
      ImageIndex = 28
      OnClick = cxButtonCClick
    end
    object RaporAra1: TMenuItem
      Tag = -9
      Caption = 'Rapor Ara'
      ImageIndex = 12
      OnClick = cxButtonCClick
    end
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    PopupMenus = <>
    Left = 64
    Top = 56
  end
end
