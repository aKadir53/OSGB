object frmIlacSarf: TfrmIlacSarf
  Left = 418
  Top = 10
  BorderStyle = bsDialog
  ClientHeight = 708
  ClientWidth = 654
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlToolBar: TPanel
    Left = 0
    Top = 18
    Width = 654
    Height = 35
    Align = alTop
    Color = clBackground
    Font.Charset = TURKISH_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Visible = False
    object PanelSource: TPanel
      Left = 473
      Top = 8
      Width = 84
      Height = 20
      AutoSize = True
      BevelOuter = bvNone
      Color = clBackground
      Font.Charset = TURKISH_CHARSET
      Font.Color = clAqua
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object txtDetay: TcxMemo
      Left = 1
      Top = 1
      Align = alClient
      Lines.Strings = (
        '')
      ParentFont = False
      Style.Font.Charset = TURKISH_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      Height = 33
      Width = 652
    end
  end
  object pnlTitle: TPanel
    Left = 0
    Top = 0
    Width = 654
    Height = 18
    Align = alTop
    Color = clBlack
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object chkDoz: TcxCheckBox
      Left = 423
      Top = 0
      Caption = 'Detay G'#246'ster'
      ParentFont = False
      Style.Font.Charset = TURKISH_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 0
      Transparent = True
      Visible = False
      OnClick = chkDozClick
      Width = 110
    end
    object chkSIK: TcxCheckBox
      Left = 1
      Top = -1
      Caption = 'S'#305'k Kullan'#305'm Listesi'
      ParentFont = False
      State = cbsChecked
      Style.Font.Charset = TURKISH_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 1
      Transparent = True
      OnClick = chkSIKClick
      Width = 163
    end
  end
  object pnlOnay: TPanel
    Left = 0
    Top = 676
    Width = 654
    Height = 32
    Align = alBottom
    Color = clBackground
    TabOrder = 2
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
    object btnVazgec: TcxButton
      Left = 578
      Top = 1
      Width = 75
      Height = 30
      Align = alRight
      Caption = 'Vazge'#231
      TabOrder = 0
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnVazgecClick
    end
    object btnSend: TcxButton
      Left = 503
      Top = 1
      Width = 75
      Height = 30
      Align = alRight
      Caption = '&i'#351'le'
      TabOrder = 1
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnSendClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 53
    Width = 654
    Height = 623
    Align = alClient
    Caption = #304'la'#231'lar  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object txtarama: TcxTextEdit
      Tag = -1
      Left = 4
      Top = 13
      Enabled = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Width = 454
    end
    object txtGruplar: TsComboBox
      Left = 4
      Top = 51
      Width = 69
      Height = 21
      Alignment = taLeftJustify
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'COMBOBOX'
      Color = 16774895
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemIndex = -1
      ParentFont = False
      TabOrder = 2
      Visible = False
    end
    object cxGrid1: TcxGrid
      Left = 2
      Top = 15
      Width = 650
      Height = 444
      Align = alTop
      TabOrder = 0
      object gridIlacSarf: TcxGridDBTableView
        OnDblClick = gridIlacSarfDblClick
        OnKeyDown = gridIlacSarfKeyDown
        OnKeyPress = gridIlacSarfKeyPress
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
        DataController.DataSource = DataSource1
        DataController.Filter.Options = [fcoCaseInsensitive, fcoShowOperatorDescription]
        DataController.Filter.Active = True
        DataController.Filter.TranslateBetween = True
        DataController.Filter.TranslateLike = True
        DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = #304'la'#231' Say'#305's'#305' : #'
            Kind = skCount
            Column = gridIlacSarfColumn1
          end>
        DataController.Summary.SummaryGroups = <>
        Filtering.ColumnFilteredItemsList = True
        FilterRow.InfoText = 'Arama Sat'#305'r'#305
        FilterRow.SeparatorColor = 3155860
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.IncSearch = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.NoDataToDisplayInfoText = 'Listelenecek '#304'la'#231' Yok'
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.DataRowHeight = 21
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 30
        OptionsView.Indicator = True
        Styles.Content = cxStyle1
        Styles.FilterBox = cxStyle2
        Styles.OnGetContentStyle = gridIlacSarfStylesGetContentStyle
        Styles.FilterRowInfoText = cxStyle2
        object gridIlacSarfColumn1: TcxGridDBColumn
          Caption = 'Barkod'
          DataBinding.FieldName = 'barkod'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Styles.Header = cxStyle3
          Width = 123
        end
        object gridIlacSarfColumn2: TcxGridDBColumn
          Caption = #304'la'#231' Ad'#305
          DataBinding.FieldName = 'ilacAdi'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Styles.Header = cxStyle3
          Width = 331
        end
        object gridIlacSarfColumn4: TcxGridDBColumn
          DataBinding.FieldName = 'ReceteTip'
          Visible = False
        end
        object gridIlacSarfColumn5: TcxGridDBColumn
          Caption = 'EtkenMadde.'
          DataBinding.FieldName = 'EtkenMadde'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Styles.Header = cxStyle3
          Width = 118
        end
        object gridIlacSarfColumn3: TcxGridDBColumn
          Caption = #214'deme Kapsam'#305
          DataBinding.FieldName = 'ReceteTip'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.Items = <
            item
              Description = 'Evet'
              ImageIndex = 0
              Value = 'A'
            end
            item
              Description = 'Hay'#305'r'
              Value = 'P'
            end>
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaBottom
          Styles.Header = cxStyle3
          Width = 64
        end
        object gridIlacSarfColumn6: TcxGridDBColumn
          DataBinding.FieldName = 'doz'
          Visible = False
        end
        object gridIlacSarfColumn7: TcxGridDBColumn
          DataBinding.FieldName = 'adet'
          Visible = False
        end
        object gridIlacSarfColumn8: TcxGridDBColumn
          DataBinding.FieldName = 'YOL'
          Visible = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = gridIlacSarf
      end
    end
    object DBNavigator1: TDBNavigator
      Left = 2
      Top = 603
      Width = 650
      Height = 18
      DataSource = DataSource2
      VisibleButtons = [nbDelete, nbPost, nbCancel]
      Align = alBottom
      Flat = True
      Kind = dbnHorizontal
      TabOrder = 3
    end
    object cxGrid2: TcxGrid
      Left = 2
      Top = 459
      Width = 650
      Height = 144
      Align = alClient
      TabOrder = 4
      object Eklenen: TcxGridDBTableView
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
        DataController.DataSource = DataSource2
        DataController.Filter.Active = True
        DataController.Filter.TranslateBetween = True
        DataController.Filter.TranslateLike = True
        DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.InfoText = 'Filtreleme Sat'#305'r'#305
        FilterRow.ApplyChanges = fracImmediately
        OptionsBehavior.FocusCellOnTab = True
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.NoDataToDisplayInfoText = 'Eklenen '#304'la'#231' Yok'
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.Content = cxStyle1
        object cxGridDBColumn1: TcxGridDBColumn
          Caption = 'Barkod'
          DataBinding.FieldName = 'ETKENMADDE'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 91
        end
        object cxGridDBColumn2: TcxGridDBColumn
          Caption = #304'la'#231' Ad'#305
          DataBinding.FieldName = 'Formu'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 184
        end
        object EklenenColumn1: TcxGridDBColumn
          Caption = 'Doz'
          DataBinding.FieldName = 'doz'
          PropertiesClassName = 'TcxComboBoxProperties'
          Properties.Items.Strings = (
            ''
            '1x1'
            '2x1'
            '3x1'
            '3x2'
            '1x2'
            '1x3'
            '1x4'
            '2x1'
            '2x2'
            '2x3'
            '2x4'
            '3x1'
            '3x2'
            '3x3'
            '3x4'
            '4x1'
            '4x2'
            '4x3'
            '4x4')
          HeaderAlignmentHorz = taCenter
          Width = 89
        end
        object EklenenColumn3: TcxGridDBColumn
          Caption = 'Adet'
          DataBinding.FieldName = 'adet'
          HeaderAlignmentHorz = taCenter
          Width = 42
        end
        object EklenenColumn2: TcxGridDBColumn
          Caption = 'Kul.Yolu'
          DataBinding.FieldName = 'Kyolu'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownListStyle = lsFixedList
          Properties.KeyFieldNames = 'kod'
          Properties.ListColumns = <
            item
              FieldName = 'tanimi'
            end>
          Properties.ListOptions.GridLines = glNone
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = DATALAR.ReceteKullanimYollari_Datasource
          HeaderAlignmentHorz = taCenter
          Width = 144
        end
        object EklenenColumn4: TcxGridDBColumn
          Caption = 'Tani'
          DataBinding.FieldName = 'tani'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ReadOnly = True
          Properties.OnButtonClick = EklenenColumn4PropertiesButtonClick
          HeaderAlignmentHorz = taCenter
          Width = 86
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = Eklenen
      end
    end
  end
  object DataSource1: TDataSource
    Left = 228
    Top = 119
  end
  object DataSource2: TDataSource
    DataSet = Eklenenler
    Left = 84
    Top = 585
  end
  object Eklenenler: TdxMemData
    Active = True
    Indexes = <>
    SortOptions = []
    Left = 128
    Top = 584
    object EklenenlerETKENMADDE: TStringField
      DisplayWidth = 50
      FieldName = 'ETKENMADDE'
      Size = 50
    end
    object EklenenlerFormu: TStringField
      DisplayWidth = 50
      FieldName = 'Formu'
      Size = 50
    end
    object Eklenenlerdoz: TStringField
      FieldName = 'doz'
    end
    object EklenenlerKyolu: TStringField
      FieldName = 'Kyolu'
      Size = 2
    end
    object Eklenenleradet: TStringField
      FieldName = 'adet'
      Size = 5
    end
    object Eklenenlertani: TStringField
      FieldName = 'tani'
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 56
    Top = 256
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object K: TcxStyle
      AssignedValues = [svColor]
      Color = clRed
    end
    object Y: TcxStyle
      AssignedValues = [svColor]
      Color = clLime
    end
    object T: TcxStyle
      AssignedValues = [svColor]
      Color = 6472953
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 64
    Top = 200
    PixelsPerInch = 96
    object cxStyle2: TcxStyle
      AssignedValues = [svBitmap, svColor, svFont]
      Color = clYellow
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000F8F8F900B9BA
        BC00C0BFBF00918E8B00C3C3C100E1E1E100BFC0C100999A9D126D71717F717F
        6DC082817E63CDCBC800CECBC900CECBC900CECBC900CECBC900F8F8F900B9BA
        BC00C0BFBF00918E8B00C3C3C100E1E1E100B9BABB18709769D280F166FF4F72
        49FF49494CFEB7B5B32FCBCAC700C8C6C300D2D0CE00D2D0CE00F8F8F900B9BA
        BC00C0BFBF00918E8B00BEBDBA00C6C5C2036C786BC090EF71FF678E5CFF4E4F
        51FF3C3D41FF8C8B8A8FD3D1CF00ACAAA800DEDDDC00DEDDDC00F8F8F900B9BA
        BC00BDBDBD1486838033C1C1BE0084827D205F7959FF566E55FF636464FF5E5E
        5FFF444549FF595A5BE5C0BEBC079A999600DEDDDC00DEDDDC00F8F8F900AAAF
        AC3F68A05FF14A5249FF9998976DCAC8C3047B7A79E654565DFF5D5E61FF6060
        62FF515254FF44464AFF656461C18786846CDEDDDC00DEDDDC00DEDDDF1E7BB9
        69ED659359FF454548FF49494CF4C2C1BE1EC2C0BA2378787AE14B4D53FF5758
        5CFF58595CFF424448FF525253FF4A4B4DFDBAB8B742E1E0DE007E8079A86487
        5BFF616262FF5B5B5CFF3E3F43FF7A7A79A092908C11ADABA62F808080E54C4E
        55FF4E5055FF4A4C52FF3D3E42FF3C3D41FF5D5D5DDDD9D8D4099C9994815D5F
        64FF5B5C60FF626263FF4F4F51FF3D3E40FD51504EFC6B6A69C28E8D899D7676
        76FF494B52FF3E3F45FF4E4F51FF4A4B4EFF4D4E51FF8F8D8877A6A39B048B89
        86875E5F64FF525459FF525355FF3A3A3EFF57585AFF3C3D40FF6A6968FE5E5E
        61FF4E4F54FF545457FF4A4C51FF484A4EFF48494EFF6B6964D7A6A39B00A7A4
        9E0097948E526E6E71EC43454AFF4A4B4EFF4E4F52FF3E3E40FF5A5A5BFF5556
        5BFF4F5156FF44464CFF44464DFF45474DFF58595DFF83817EBAA6A39B00A29F
        99008A8680007A7975BA696A6CFF545659FF666666FF666667FF5D5E61FF484B
        51FF41444BFF41434BFF41434AFF42444BFF626265FFA9A7A674C9C6C000C9C6
        C000C9C6C000A9A6A156646261FD727170FF939392FF7F8084FF606268FF4E51
        58FF464950FF42454CFF41444BFF4C4D54FD43454BFF696869D5C9C6C000C9C6
        C000C9C6C000B8B5AE00A19E96585F5A54F7898784FFA3A2A2FF86878AFF696B
        70FF56585FFF56585FDA7B7D83668E8C8B63626468FF6E6F72C9C9C6C000C9C6
        C000C9C6C000B8B5AE00C5C3BC009A978E4D6D6862C18F8D89DD9A999AFF7879
        7DF69C9DA24494969B039B9DA200D7D6D3008D8A8533BAB8B60FC9C6C000C9C6
        C000C9C6C000B8B5AE00C5C3BC00AFACA400A09C9700A4A29E009E9B9662ABAA
        AA5BB9BABC0094969B009B9DA200D7D6D300918E8900BAB8B600FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
  object cxStyleRepository3: TcxStyleRepository
    Left = 56
    Top = 160
    PixelsPerInch = 96
    object cxStyle3: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
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
    Left = 252
    Top = 70
  end
end
