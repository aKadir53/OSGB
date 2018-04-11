object frmTakipNo: TfrmTakipNo
  Tag = -10
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'frmTakipNo'
  ClientHeight = 373
  ClientWidth = 457
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
  object txtTakipTuru: TcxImageComboBox
    Tag = -100
    Left = 135
    Top = 36
    EditValue = '1'
    Properties.Items = <
      item
        Description = 'Diyaliz'
        ImageIndex = 0
        Value = '1'
      end>
    Style.BorderColor = clWindowFrame
    Style.BorderStyle = ebs3D
    Style.HotTrack = False
    Style.ButtonStyle = bts3D
    Style.PopupBorderStyle = epbsFrame3D
    TabOrder = 0
    Width = 121
  end
  object txtTarih: TcxDateEditKadir
    Tag = -100
    Left = 8
    Top = 9
    Style.BorderColor = clWindowFrame
    Style.BorderStyle = ebs3D
    Style.HotTrack = False
    Style.ButtonStyle = bts3D
    Style.PopupBorderStyle = epbsFrame3D
    TabOrder = 1
    BosOlamaz = False
    Width = 121
  end
  object txtProvizyonTur: TcxImageComboBox
    Tag = -100
    Left = 135
    Top = 9
    EditValue = 'N'
    Properties.Items = <
      item
        Description = 'Normal'
        ImageIndex = 0
        Value = 'N'
      end
      item
        Description = 'Acil'
        Value = 'A'
      end>
    Style.BorderColor = clWindowFrame
    Style.BorderStyle = ebs3D
    Style.HotTrack = False
    Style.ButtonStyle = bts3D
    Style.PopupBorderStyle = epbsFrame3D
    TabOrder = 2
    Width = 121
  end
  object DURUM: TcxImageComboBox
    Tag = -100
    Left = 8
    Top = 63
    EditValue = '1'
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
    Style.BorderColor = clWindowFrame
    Style.BorderStyle = ebs3D
    Style.HotTrack = False
    Style.ButtonStyle = bts3D
    Style.PopupBorderStyle = epbsFrame3D
    TabOrder = 3
    Width = 121
  end
  object txtTcKimlikNo: TcxTextEditKadir
    Tag = -100
    Left = 8
    Top = 36
    TabOrder = 4
    BosOlamaz = False
    Width = 121
  end
  object pnlYardimHakki: TcxGroupBox
    Left = 8
    Top = 195
    Caption = 'Yurt D'#305#351#305' Yard'#305'm Hakk'#305
    PanelStyle.Active = True
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
    Style.LookAndFeel.NativeStyle = False
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 5
    Height = 170
    Width = 361
    object cxGrid6: TcxGrid
      Left = 2
      Top = 35
      Width = 357
      Height = 133
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
      object gridYardimHakki: TcxGridDBTableView
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
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.NavigatorOffset = 20
        OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        OptionsView.RowSeparatorColor = clBlack
        object gridYardimHakkiRecId: TcxGridDBColumn
          DataBinding.FieldName = 'RecId'
          Visible = False
        end
        object gridYardimHakkiid: TcxGridDBColumn
          Caption = 'ID'
          DataBinding.FieldName = 'id'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taLeftJustify
          HeaderAlignmentHorz = taCenter
          Width = 34
        end
        object gridYardimHakkikisiNo: TcxGridDBColumn
          Caption = 'Ki'#351'i No'
          DataBinding.FieldName = 'kisiNo'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taLeftJustify
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object gridYardimHakkiTarih: TcxGridDBColumn
          DataBinding.FieldName = 'Tarih'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taLeftJustify
          HeaderAlignmentHorz = taCenter
          Width = 68
        end
        object gridYardimHakkiodemeTuru: TcxGridDBColumn
          Caption = #214'deme T'#252'r'#252
          DataBinding.FieldName = 'odemeTuru'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taLeftJustify
          HeaderAlignmentHorz = taCenter
        end
        object gridYardimHakkitedaviKapsami: TcxGridDBColumn
          Caption = 'Tedavi Kapsam'#305
          DataBinding.FieldName = 'tedaviKapsami'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taLeftJustify
          HeaderAlignmentHorz = taCenter
        end
        object gridYardimHakkiformulAdi: TcxGridDBColumn
          Caption = 'Formul Ad'#305
          DataBinding.FieldName = 'formulAdi'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taLeftJustify
          HeaderAlignmentHorz = taCenter
        end
        object gridYardimHakkiaciklama: TcxGridDBColumn
          Caption = 'Aciklama'
          DataBinding.FieldName = 'aciklama'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taLeftJustify
          HeaderAlignmentHorz = taCenter
        end
      end
      object cxGridLevel6: TcxGridLevel
        Caption = 'Hastalar'
        GridView = gridYardimHakki
        Options.DetailFrameColor = clBlack
        Options.DetailFrameWidth = 0
      end
    end
    object btnYardimHakki: TcxButtonKadir
      Left = 2
      Top = 2
      Width = 357
      Height = 33
      Align = alTop
      Caption = 'Yurt D'#305#351#305' Yard'#305'm Hakk'#305' Getir'
      TabOrder = 1
      OnClick = btnYardimHakkiClick
      NewButtonVisible = False
    end
  end
  object txtilkTakipNo: TcxTextEditKadir
    Tag = -100
    Left = 135
    Top = 63
    TabOrder = 6
    BosOlamaz = False
    Width = 121
  end
  object txtAdi: TcxTextEditKadir
    Tag = -100
    Left = 135
    Top = 90
    TabOrder = 7
    BosOlamaz = False
    Width = 186
  end
  object txtDogumTarihi: TcxTextEditKadir
    Tag = -100
    Left = 135
    Top = 111
    TabOrder = 8
    BosOlamaz = False
    Width = 121
  end
  object txtdonenSigortaTur: TcxTextEditKadir
    Tag = -100
    Left = 135
    Top = 133
    TabOrder = 9
    BosOlamaz = False
    Width = 121
  end
  object txtdonendevKurum: TcxTextEditKadir
    Tag = -100
    Left = 135
    Top = 160
    TabOrder = 10
    BosOlamaz = False
    Width = 121
  end
  object txtDevredilenKurum: TcxImageComboKadir
    Left = 11
    Top = 117
    Properties.ClearKey = 46
    Properties.Items = <>
    TabOrder = 11
    BosOlamaz = False
    Width = 121
  end
  object txtYUPASS: TcxTextEditKadir
    Tag = -100
    Left = 288
    Top = 63
    TabOrder = 12
    Visible = False
    BosOlamaz = False
    Width = 121
  end
  object DataSource1: TDataSource
    DataSet = DATALAR.memData_yurtDisiYardimHakki
    Left = 128
    Top = 288
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 408
    object Kapat1: TMenuItem
      Tag = 9999
      Caption = 'Kapat'
      ImageIndex = 18
      OnClick = cxKaydetClick
    end
    object akipAl1: TMenuItem
      Tag = -1
      Caption = 'Takip Al'
      ImageIndex = 9
      OnClick = cxButtonCClick
    end
  end
end
