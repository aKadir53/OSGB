object frmHastaListe: TfrmHastaListe
  Left = 680
  Top = 81
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'frmHastaListe'
  ClientHeight = 562
  ClientWidth = 559
  Color = 13750737
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlOnay: TPanel
    Left = 0
    Top = 530
    Width = 559
    Height = 32
    Align = alBottom
    Color = clBackground
    TabOrder = 0
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
  object pnlToolBar: TPanel
    Left = 0
    Top = 26
    Width = 559
    Height = 23
    Align = alTop
    Color = clBackground
    Font.Charset = TURKISH_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
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
    object Tip: TcxRadioGroup
      Left = 276
      Top = 1
      Align = alClient
      Alignment = alCenterCenter
      Properties.Columns = 3
      Properties.Items = <
        item
          Caption = 'Aktif'
          Value = '1'
        end
        item
          Caption = 'Pasif'
          Value = '0'
        end>
      Properties.OnChange = cxRadioGroup1PropertiesChange
      ItemIndex = 0
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'McSkin'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'McSkin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'McSkin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'McSkin'
      TabOrder = 2
      Height = 21
      Width = 282
    end
    object DiyalizTip: TcxRadioGroup
      Left = 1
      Top = 1
      Align = alLeft
      Alignment = alCenterCenter
      Properties.Columns = 3
      Properties.Items = <
        item
          Caption = 'Hemodiyaliz'
          Value = '0'
        end
        item
          Caption = 'Periton Ayaktan'
          Value = '1'
        end
        item
          Caption = 'Periton Aletli'
          Value = '2'
        end>
      Properties.OnChange = cxRadioGroup1PropertiesChange
      ItemIndex = 0
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'McSkin'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'McSkin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'McSkin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'McSkin'
      TabOrder = 1
      Height = 21
      Width = 275
    end
  end
  object pnlTitle: TPanel
    Left = 0
    Top = 0
    Width = 559
    Height = 26
    Align = alTop
    Alignment = taLeftJustify
    Caption = 'Hasta Liste'
    Color = clBlack
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    DesignSize = (
      559
      26)
    object txtay: TcxComboBox
      Left = 453
      Top = 2
      Anchors = [akTop, akRight]
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
      Properties.OnChange = txtayPropertiesChange
      Style.Font.Charset = TURKISH_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = True
      Style.LookAndFeel.SkinName = 'McSkin'
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.SkinName = 'McSkin'
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.SkinName = 'McSkin'
      StyleHot.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.SkinName = 'McSkin'
      TabOrder = 0
      Width = 104
    end
    object ktip: TcxComboBox
      Left = 346
      Top = 2
      Anchors = [akTop, akRight]
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownRows = 12
      Properties.Items.Strings = (
        '1 - SGK'
        '99 - Yurt D'#305#351#305' Sigortal'#305'lar'
        '8 - '#220'cretli'
        '98 - '#214'zel Kurum - Sigorta')
      Properties.OnChange = txtayPropertiesChange
      Style.Font.Charset = TURKISH_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = True
      Style.LookAndFeel.SkinName = 'McSkin'
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.SkinName = 'McSkin'
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.SkinName = 'McSkin'
      StyleHot.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.SkinName = 'McSkin'
      TabOrder = 1
      Text = '1 - SGK'
      Width = 104
    end
  end
  object cxGrid2: TcxGrid
    Left = 0
    Top = 49
    Width = 559
    Height = 408
    Align = alClient
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    LevelTabs.ImageBorder = 2
    LevelTabs.Style = 1
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'UserSkin'
    ExplicitLeft = 32
    ExplicitTop = 60
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
      OnCellClick = ListeCellClick
      DataController.DataSource = DataSource1
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Filter.Active = True
      DataController.Filter.TranslateBetween = True
      DataController.Filter.TranslateLike = True
      DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          FieldName = 'HASTAADI'
          Column = ListeColumn2
        end>
      DataController.Summary.SummaryGroups = <>
      DataController.OnFilterRecord = ListeDataControllerFilterRecord
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
      OptionsView.NavigatorOffset = 20
      OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
      OptionsView.CellAutoHeight = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.RowSeparatorColor = clBlack
      Styles.Background = cxStyle1
      Styles.Indicator = cxStyle1
      object ListeColumn9: TcxGridDBColumn
        Caption = 'Tc Kimlik No'
        DataBinding.FieldName = 'TCKIMLIKNO'
        Visible = False
      end
      object ListeColumn1: TcxGridDBColumn
        Caption = 'Dosya'
        DataBinding.FieldName = 'dosyaNo'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 50
      end
      object ListeColumn2: TcxGridDBColumn
        Caption = 'Ad'#305
        DataBinding.FieldName = 'HASTAADI'
        HeaderAlignmentHorz = taCenter
        Width = 84
      end
      object ListeColumn3: TcxGridDBColumn
        Caption = 'Soyad'#305
        DataBinding.FieldName = 'HASTASOYADI'
        HeaderAlignmentHorz = taCenter
        Width = 105
      end
      object ListeColumn4: TcxGridDBColumn
        Caption = 'Tip'
        DataBinding.FieldName = 'Aktif'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = DATALAR.ImageList1
        Properties.Items = <
          item
            Description = 'Aktif'
            ImageIndex = 40
            Value = 1
          end
          item
            Description = 'Misafir'
            ImageIndex = 121
            Value = 2
          end>
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        Width = 68
      end
      object ListeColumn5: TcxGridDBColumn
        Caption = 'Tetkik'
        DataBinding.FieldName = 'tahlil'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = DATALAR.ImageList1
        Properties.Items = <
          item
            ImageIndex = 133
            Value = '1'
          end
          item
            Value = '0'
          end>
        HeaderAlignmentHorz = taCenter
        Width = 31
      end
      object ListeColumn6: TcxGridDBColumn
        Caption = #214'zel'
        DataBinding.FieldName = 'ozeldurum'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = DATALAR.ImageList1
        Properties.Items = <
          item
            Value = ''
          end
          item
            ImageIndex = 0
            Value = '1'
          end>
        HeaderAlignmentHorz = taCenter
        Width = 31
      end
      object Kilo: TcxGridDBColumn
        Caption = 'Kilo'
        DataBinding.FieldName = 'kilo'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = DATALAR.ImageList1
        Properties.Items = <
          item
            Value = '0'
          end
          item
            ImageIndex = 133
            Value = '1'
          end>
        HeaderAlignmentHorz = taCenter
        Width = 38
      end
      object ListeColumn7: TcxGridDBColumn
        DataBinding.FieldName = 'Diabet'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = DATALAR.imag24png
        Properties.Items = <
          item
            ImageIndex = 0
            Value = '1'
          end>
        HeaderAlignmentHorz = taCenter
        Width = 37
      end
      object ListeColumn8: TcxGridDBColumn
        Caption = 'AntiHbs'
        DataBinding.FieldName = 'antiHbs'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = DATALAR.global_img_list4
        Properties.Items = <
          item
            ImageIndex = 100
            Value = '+'
          end
          item
            ImageIndex = 148
            Value = '-'
          end
          item
            ImageIndex = 133
            Value = '0'
          end>
        Width = 43
      end
      object ListeColumn10: TcxGridDBColumn
        Caption = 'E.Seans'
        DataBinding.FieldName = 'seansKontrol'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = DATALAR.global_img_list4
        Properties.Items = <
          item
            Value = 0
          end
          item
            Description = 'Eksik Seans'
            ImageIndex = 133
            Value = 1
          end>
        Options.Editing = False
        Width = 72
      end
      object ListeColumn11: TcxGridDBColumn
        Caption = '!'
        DataBinding.FieldName = 'TakipProvizyonTarihiKontrol'
        HeaderAlignmentHorz = taCenter
        Width = 20
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
    Left = 0
    Top = 457
    Width = 559
    Height = 73
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Visible = False
    Properties.ActivePage = cxTabSheet1
    Properties.Images = DATALAR.ImageList1
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'MoneyTwins'
    ClientRectBottom = 71
    ClientRectLeft = 2
    ClientRectRight = 557
    ClientRectTop = 34
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
        Height = 37
        Width = 555
      end
    end
  end
  object ado_BransKodlari: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    AfterOpen = ado_BransKodlariAfterOpen
    AfterPost = ado_BransKodlariAfterPost
    AfterScroll = ado_BransKodlariAfterScroll
    Parameters = <
      item
        Name = 'ak'
        Size = -1
        Value = Null
      end
      item
        Name = 'tip'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 't'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 't1'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'ktip'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      
        'select *,dbo.TahlilSonucEksik(h.dosyaNo,g.gelisNo) tahlil,(case ' +
        'when isnull(diger,'#39#39') = '#39#39' then '#39'0'#39' else '#39'1'#39' end) ozeldurum , db' +
        'o.SeansKiloEksik(h.dosyaNo,g.gelisNo) kilo,'
      
        '(case when (CHARINDEX('#39'5'#39',h.GELHAST) > 0 OR CHARINDEX('#39'7'#39',h.GELH' +
        'AST) > 0) THEN '#39'1'#39' ELSE '#39#39' END) Diabet,'
      
        '(case when isnull(AntiHbs,'#39#39') = '#39#39' THEN '#39'0'#39' ELSE AntiHbs END) '#39'A' +
        'ntiHbs'#39' ,m.salon,'
      
        'dbo.RaporSeansGun_GirilenSeansKontrol(h.dosyaNo,g.gelisNo,getdat' +
        'e()) seansKontrol,'
      
        'dbo.TakipProvizyonTarihiIlkSeansmi(tak'#305'pNo) TakipProvizyonTarihi' +
        'Kontrol'
      'from hastakart h'
      
        ' join gelisler g on g.dosyano = h.dosyano --and g.gelisno = (sel' +
        'ect max(gelisno) from gelisler where dosyano = h.dosyano)'
      ' left join Kurumlar k on k.kurum = h.kurum'
      ' LEFT JOIN makinalar m ON m.makinaNo = h.makinaNo'
      'where aktif in'
      
        '(select datavalue from dbo.strtotable((case when :ak = '#39'1'#39' then ' +
        #39'1,2'#39' else '#39'0'#39' end),'#39','#39'))'
      'AND diyalizTedaviYontemi= :tip and g.BHDAT between  :t and :t1 '
      'and k.KURUMTIPI =:ktip'
      'order by h.HASTAADI,h.HASTASOYADI')
    Left = 152
    Top = 117
  end
  object DataSource1: TDataSource
    DataSet = ado_BransKodlari
    Left = 205
    Top = 117
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 80
    Top = 176
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
  end
  object PopupMenu1: TPopupMenu
    Left = 88
    Top = 270
    object edaviKart1: TMenuItem
      Caption = 'Tedavi Kart'#305
      OnClick = edaviKart1Click
    end
    object SeansKart1: TMenuItem
      Caption = 'Seans Kart'#305
      OnClick = SeansKart1Click
    end
    object Epikriz1: TMenuItem
      Caption = 'Epikriz'
      OnClick = Epikriz1Click
    end
    object akipRaporBul1: TMenuItem
      Caption = 'Takip - Rapor Bul'
    end
    object SeansTahakkuk1: TMenuItem
      Caption = 'Seans Tahakkuk'
      OnClick = SeansTahakkuk1Click
    end
    object T1: TMenuItem
      Caption = 'Tetkik Takip Formlar'#305
      object H1: TMenuItem
        Tag = 10
        Caption = 'Hepatitler Dahil'
        OnClick = H1Click
      end
      object H2: TMenuItem
        Tag = 11
        Caption = 'Hepatitler Hari'#231
        OnClick = H1Click
      end
      object H3: TMenuItem
        Tag = 12
        Caption = 'Hepatit / Tele'
        OnClick = H1Click
      end
    end
  end
  object popupYil: TPopupMenu
    OnPopup = popupYilPopup
    Left = 288
    Top = 112
    object N1: TMenuItem
      Caption = '-'
      OnClick = N1Click
    end
  end
end
