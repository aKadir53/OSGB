object frmHastaDiyalizIzlem: TfrmHastaDiyalizIzlem
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'frmHastaDiyalizIzlem'
  ClientHeight = 571
  ClientWidth = 714
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
    ExplicitWidth = 1029
    Height = 571
    Width = 714
    object frmHastaIlacTedavi_cxGroupBox1: TcxGroupBox
      Left = 2
      Top = 2
      Align = alLeft
      PanelStyle.Active = True
      TabOrder = 0
      Height = 567
      Width = 351
      object cxPageControl1: TcxPageControl
        Left = 2
        Top = 2
        Width = 347
        Height = 563
        Align = alClient
        BiDiMode = bdLeftToRight
        Color = 13750737
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBackground = False
        ParentBiDiMode = False
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 0
        Properties.ActivePage = cxTabSheet2
        Properties.MultiLine = True
        Properties.Options = [pcoAlwaysShowGoDialogButton, pcoGoDialog, pcoGradient, pcoGradientClientArea]
        Properties.Style = 11
        ExplicitLeft = 6
        ExplicitTop = 121
        ExplicitWidth = 210
        ExplicitHeight = 587
        ClientRectBottom = 556
        ClientRectLeft = 3
        ClientRectRight = 340
        ClientRectTop = 26
        object cxTabSheet2: TcxTabSheet
          Caption = 'Diyaliz '#304'zlem'
          ImageIndex = 1
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object cxGroupBoxAnemi: TcxGroupBox
            Left = 0
            Top = 45
            Align = alTop
            Caption = 'Anemi Tedavisi'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = []
            Style.TextStyle = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 0
            ExplicitWidth = 202
            Height = 96
            Width = 337
            object txtAnemi: TcxCheckListBox
              Left = 3
              Top = 15
              Width = 331
              Height = 71
              Align = alClient
              Columns = 2
              Items = <
                item
                  Enabled = False
                end
                item
                  Tag = 1
                  Text = 'Tedaviye ihtiya'#231' yok'
                end
                item
                  Tag = 2
                  Text = 'Transf'#252'zyon'
                end
                item
                  Tag = 3
                  Text = 'Eritropoetin'
                end
                item
                  Tag = 4
                  Text = 'Demir Preperat'#305
                end>
              TabOrder = 0
              ExplicitWidth = 196
            end
          end
          object cxGroupBoxAciklama: TcxGroupBox
            Left = 0
            Top = 376
            Align = alClient
            Caption = 'A'#231#305'klama'
            TabOrder = 1
            ExplicitWidth = 202
            ExplicitHeight = 181
            Height = 154
            Width = 337
            object txtDAciklama: TcxMemo
              Left = 3
              Top = 15
              Align = alClient
              Lines.Strings = (
                '')
              TabOrder = 0
              ExplicitWidth = 196
              ExplicitHeight = 156
              Height = 129
              Width = 331
            end
          end
          object cxGroupBoxSinekalset: TcxGroupBox
            Left = 0
            Top = 241
            Align = alTop
            Caption = 'Sinekalset'
            PanelStyle.BorderWidth = 1
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = []
            Style.Shadow = False
            Style.TextStyle = [fsBold]
            Style.TransparentBorder = True
            Style.IsFontAssigned = True
            TabOrder = 2
            ExplicitWidth = 202
            Height = 45
            Width = 337
            object txtSinekalset: TcxComboBox
              Left = 3
              Top = 15
              Align = alTop
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                '1 - Kullan'#305'yor'
                '2 - Kullanm'#305'yor')
              TabOrder = 0
              Text = '2 - Kullanm'#305'yor'
              ExplicitLeft = 2
              ExplicitTop = -2
              ExplicitWidth = 198
              Width = 331
            end
          end
          object cxGroupBoxAntihiper: TcxGroupBox
            Left = 0
            Top = 286
            Align = alTop
            Caption = 'Antihipertansif '#304'la'#231
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 3
            ExplicitWidth = 202
            Height = 45
            Width = 337
            object txtAntihipertansif: TcxComboBox
              Left = 3
              Top = 15
              Align = alTop
              ParentFont = False
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                '1 - Kullanm'#305'yor'
                '2 - 1 Adet Kullan'#305'yor'
                '3 - 2 Adet Kullan'#305'yor'
                '4 - 2 den Fazla Kullan'#305'yor')
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'MS Sans Serif'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              Text = '1 - Kullanm'#305'yor'
              ExplicitLeft = 2
              ExplicitTop = -2
              ExplicitWidth = 198
              Width = 331
            end
          end
          object cxGroupBoxAktifD: TcxGroupBox
            Left = 0
            Top = 0
            Align = alTop
            Caption = 'Aktif D Vitamini Kullan'#305'm'#305
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = []
            Style.TextStyle = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 4
            ExplicitWidth = 202
            Height = 45
            Width = 337
            object txtDVitaminKul: TcxComboBox
              Left = 3
              Top = 15
              Align = alTop
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                '1 - Ihtiyac'#305' Yok'
                '2 - Oral'
                '3 - Intraven'#246'z'
                '4 - D V'#304'TAM'#304'N'#304' ANALO'#286'U')
              TabOrder = 0
              Text = '1 - Ihtiyac'#305' Yok'
              ExplicitLeft = 2
              ExplicitTop = -2
              ExplicitWidth = 198
              Width = 331
            end
          end
          object cxGroupBoxTedaviSeyri: TcxGroupBox
            Left = 0
            Top = 331
            Align = alTop
            Caption = 'Tedavinin Seyri'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 5
            ExplicitWidth = 202
            Height = 45
            Width = 337
            object txtedaviSeyri: TcxComboBox
              Left = 3
              Top = 15
              Align = alTop
              ParentFont = False
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                '3 - Transplantasyona gitti'
                '7 - Diyaliz Tedavisi Devam Ediyor'
                '8 - Diyaliz Tedavisine '#304'htiyac'#305' Kalmad'#305)
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'MS Sans Serif'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              Text = '7 - Diyaliz Tedavisi Devam Ediyor'
              ExplicitLeft = 2
              ExplicitTop = -2
              ExplicitWidth = 198
              Width = 331
            end
          end
          object cxGroupBoxFosfor: TcxGroupBox
            Left = 0
            Top = 141
            Align = alTop
            Caption = 'Fosfor Ba'#287'lay'#305'c'#305' Ajan'
            PanelStyle.BorderWidth = 1
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = []
            Style.Shadow = False
            Style.TextStyle = [fsBold]
            Style.TransparentBorder = True
            Style.IsFontAssigned = True
            TabOrder = 6
            ExplicitWidth = 202
            Height = 100
            Width = 337
            object txtFosfor: TcxCheckListBox
              Left = 3
              Top = 15
              Width = 331
              Height = 75
              Align = alClient
              Columns = 2
              Items = <
                item
                  Enabled = False
                end
                item
                  Tag = 1
                  Text = 'Kalsiyum Asetat'
                end
                item
                  Tag = 2
                  Text = 'Kalsiyum Karbonat'
                end
                item
                  Tag = 3
                  Text = 'Sevelamer'
                end
                item
                  State = cbsChecked
                  Tag = 4
                  Text = 'Kullanm'#305'yor'
                end
                item
                  Text = 'Di'#287'er'
                end>
              TabOrder = 0
              ExplicitWidth = 196
            end
          end
        end
        object cxTabSheet1: TcxTabSheet
          Caption = 'Epikriz A'#231#305'klama'
          ImageIndex = 0
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object cxGroupBoxEpikrizAck: TcxGroupBox
            Left = 0
            Top = 0
            Align = alClient
            Caption = 'Epikriz A'#231#305'klamas'#305
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'UserSkin'
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'UserSkin'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'UserSkin'
            TabOrder = 0
            ExplicitWidth = 202
            ExplicitHeight = 557
            Height = 530
            Width = 337
            object txtAciklama: TAdvMemo
              Left = 3
              Top = 15
              Width = 331
              Height = 505
              Cursor = crIBeam
              ActiveLineSettings.ShowActiveLine = False
              ActiveLineSettings.ShowActiveLineIndicator = False
              Align = alClient
              AutoCompletion.Font.Charset = DEFAULT_CHARSET
              AutoCompletion.Font.Color = clWindowText
              AutoCompletion.Font.Height = -11
              AutoCompletion.Font.Name = 'Tahoma'
              AutoCompletion.Font.Style = []
              AutoCompletion.Height = 150
              AutoCompletion.StartToken = '(.'
              AutoCompletion.Width = 300
              AutoCorrect.Active = True
              AutoHintParameterPosition = hpBelowCode
              AutoIndent = False
              BookmarkGlyph.Data = {
                36050000424D3605000000000000360400002800000010000000100000000100
                0800000000000001000000000000000000000001000000000000000000000000
                80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
                A6000020400000206000002080000020A0000020C0000020E000004000000040
                20000040400000406000004080000040A0000040C0000040E000006000000060
                20000060400000606000006080000060A0000060C0000060E000008000000080
                20000080400000806000008080000080A0000080C0000080E00000A0000000A0
                200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
                200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
                200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
                20004000400040006000400080004000A0004000C0004000E000402000004020
                20004020400040206000402080004020A0004020C0004020E000404000004040
                20004040400040406000404080004040A0004040C0004040E000406000004060
                20004060400040606000406080004060A0004060C0004060E000408000004080
                20004080400040806000408080004080A0004080C0004080E00040A0000040A0
                200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
                200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
                200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
                20008000400080006000800080008000A0008000C0008000E000802000008020
                20008020400080206000802080008020A0008020C0008020E000804000008040
                20008040400080406000804080008040A0008040C0008040E000806000008060
                20008060400080606000806080008060A0008060C0008060E000808000008080
                20008080400080806000808080008080A0008080C0008080E00080A0000080A0
                200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
                200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
                200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
                2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
                2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
                2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
                2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
                2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
                2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
                2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFD25252525
                2525252525252525FDFDFD2E25FFFFFFFFFFFFFFFFFFFF25FDFDFD2525252525
                2525252525252525FDFD9A9AB7B7B7B7B7B7B7B7B7B72525FDFDFD25B7B7B7B7
                B7B7B7B7B7B72525FDFD9A9AB7B7B7B7B7B7B7B7B7B72525FDFDFD25BFB7BFBF
                B7B7B7B7B7B72525FDFD9A9ABFBFBFB7BFBFB7B7B7B72525FDFDFD25BFBFBFBF
                BFB7BFBFB7B72525FDFD9A9ABFBFBFB7BFBFBFB7BFB72525FDFDFD25BFBFBFBF
                BFBFBFBFBFB72525FDFD9A9ABFBFBFBFBFB7BFBFB7B72525FDFDFD25BFBFBFBF
                BFBFBFBFBFB72525FDFD9A9ABFBFBFBFBFBFBFBFBFB725FDFDFDFD2525252525
                25252525252525FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD}
              BorderStyle = bsSingle
              ClipboardFormats = [cfText]
              CodeFolding.Enabled = False
              CodeFolding.LineColor = clGray
              Ctl3D = False
              DelErase = True
              EnhancedHomeKey = False
              Gutter.DigitCount = 4
              Gutter.Font.Charset = DEFAULT_CHARSET
              Gutter.Font.Color = clWindowText
              Gutter.Font.Height = -13
              Gutter.Font.Name = 'Courier New'
              Gutter.Font.Style = []
              Gutter.ShowLineNumbers = False
              Gutter.Visible = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'COURIER NEW'
              Font.Style = []
              HiddenCaret = False
              Lines.Strings = (
                '')
              MarkerList.UseDefaultMarkerImageIndex = False
              MarkerList.DefaultMarkerImageIndex = -1
              MarkerList.ImageTransparentColor = 33554432
              PrintOptions.MarginLeft = 0
              PrintOptions.MarginRight = 0
              PrintOptions.MarginTop = 0
              PrintOptions.MarginBottom = 0
              PrintOptions.PageNr = False
              PrintOptions.PrintLineNumbers = False
              RightMarginColor = 14869218
              ScrollHint = True
              SelColor = clWhite
              SelBkColor = clNavy
              ShowRightMargin = True
              SmartTabs = False
              TabOrder = 0
              TabStop = True
              TrimTrailingSpaces = False
              UILanguage.ScrollHint = 'Row'
              UILanguage.Undo = 'Undo'
              UILanguage.Redo = 'Redo'
              UILanguage.Copy = 'Copy'
              UILanguage.Cut = 'Cut'
              UILanguage.Paste = 'Paste'
              UILanguage.Delete = 'Delete'
              UILanguage.SelectAll = 'Select All'
              UrlStyle.TextColor = clBlue
              UrlStyle.BkColor = clWhite
              UrlStyle.Style = [fsUnderline]
              UseStyler = False
              Version = '3.0.2.0'
              WordWrap = wwClientWidth
              ExplicitWidth = 196
              ExplicitHeight = 532
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
    object K2: TMenuItem
      Tag = -1
      Caption = 'Kaydet'
      ImageIndex = 29
      OnClick = cxButtonCClick
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
      'join labtestler t on t.butKodu = h.code '
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
    Table = 'labtestler'
    Conn = DATALAR.ADOConnection2
    Filtercol = 2
    BaslikRenk = clBackground
    DipRenk = clBackground
    ButtonImajIndex = 132
    Kolonlar.Strings = (
      'butKodu'
      'tanimi'
      'Tip')
    KolonBasliklari.Strings = (
      'But Kodu'
      'Tanimi'
      'Tip')
    Calistir = fgEvet
    BiriktirmeliSecim = False
    Grup = False
    Left = 328
    Top = 205
  end
end
