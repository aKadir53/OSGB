object frmFaturalar: TfrmFaturalar
  Left = 1
  Top = 1
  Caption = 'Faturalar'
  ClientHeight = 597
  ClientWidth = 827
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 827
    Height = 597
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet1
    Properties.TabPosition = tpBottom
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'McSkin'
    ClientRectBottom = 572
    ClientRectLeft = 4
    ClientRectRight = 823
    ClientRectTop = 5
    object cxTabSheet1: TcxTabSheet
      Caption = 'Faturalar'
      ImageIndex = 0
      object cxGrid1: TcxGridKadir
        Left = 0
        Top = 0
        Width = 819
        Height = 472
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
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'UserSkin'
        ExcelFileName = 'FaturaListesi'
        ExceleGonder = True
        object GridFaturalar: TcxGridDBTableView
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
          OnFocusedRecordChanged = GridFaturalarFocusedRecordChanged
          DataController.DataModeController.DetailInSQLMode = True
          DataController.DataModeController.SyncMode = False
          DataController.DataSource = DataSource1
          DataController.Filter.Active = True
          DataController.Filter.TranslateBetween = True
          DataController.Filter.TranslateLike = True
          DataController.KeyFieldNames = 'takipNo'
          DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,###.#0'
              Kind = skSum
              FieldName = 'faturaTutar'
              Column = cxGridDBColumn7
            end
            item
              Kind = skSum
              Column = cxGridDBColumn8
            end
            item
              Format = '#,###.#0'
              Kind = skSum
              Column = cxGridDBColumn10
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
          OptionsSelection.MultiSelect = True
          OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
          OptionsView.CellAutoHeight = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.RowSeparatorColor = clBlack
          object ID: TcxGridDBColumn
            Caption = 'Id'
            DataBinding.FieldName = 'sira'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 24
          end
          object cxGridDBColumn2: TcxGridDBColumn
            Caption = 'Cari Kod'
            DataBinding.FieldName = 'SirketKod'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 42
          end
          object cxGridDBColumn3: TcxGridDBColumn
            Caption = 'Cari Ad'#305
            DataBinding.FieldName = 'Ad'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 120
          end
          object cxGridDBColumn4: TcxGridDBColumn
            Caption = 'FaturaNo'
            DataBinding.FieldName = 'faturaNo'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 50
          end
          object cxGridDBColumn6: TcxGridDBColumn
            DataBinding.FieldName = 'FaturaTarihi'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object GridFaturalarColumn1: TcxGridDBColumn
            Caption = 'Tip'
            DataBinding.FieldName = 'faturaTip'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 25
          end
          object cxGridDBColumn7: TcxGridDBColumn
            Caption = 'Tutar'
            DataBinding.FieldName = 'faturaTutar'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.Alignment.Vert = taVCenter
            Properties.DisplayFormat = '#,###.#0'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object cxGridDBColumn8: TcxGridDBColumn
            Caption = 'Kdv'
            DataBinding.FieldName = 'kdv'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.Alignment.Vert = taVCenter
            Properties.DisplayFormat = ',0.00'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 45
          end
          object cxGridDBColumn9: TcxGridDBColumn
            Caption = #304'nd'
            DataBinding.FieldName = #304'ndindirim'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 37
          end
          object cxGridDBColumn10: TcxGridDBColumn
            Caption = 'F.Tutar'
            DataBinding.FieldName = 'faturaGenelTutar'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.Alignment.Vert = taVCenter
            Properties.DisplayFormat = '#,###.#0'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object GridFaturalarColumn3: TcxGridDBColumn
            DataBinding.FieldName = 'UUID'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 152
          end
          object GridFaturalarColumn4: TcxGridDBColumn
            DataBinding.FieldName = 'eArsivDurum'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 80
          end
          object cxGridDBColumn11: TcxGridDBColumn
            Caption = 'Olusturma'
            DataBinding.FieldName = 'olusturma'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object cxGridDBColumn12: TcxGridDBColumn
            Caption = 'Kullanici'
            DataBinding.FieldName = 'kullanici'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 53
          end
          object cxGridDBColumn13: TcxGridDBColumn
            Caption = 'Degistirme'
            DataBinding.FieldName = 'degistirme'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object cxGridDBColumn16: TcxGridDBColumn
            DataBinding.FieldName = 'Aciklama'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 147
          end
          object cxGridDBColumn17: TcxGridDBColumn
            DataBinding.FieldName = 'dkullanici'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object GridFaturalarColumn2: TcxGridDBColumn
            Caption = #304'ptal'
            DataBinding.FieldName = 'iptal'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.Images = DATALAR.global_img_list4
            Properties.Items = <
              item
                Description = #304'ptal'
                ImageIndex = 131
                Value = True
              end
              item
                Value = False
              end>
            HeaderAlignmentHorz = taCenter
          end
        end
        object cxGridLevel2: TcxGridLevel
          Caption = 'Hastalar'
          GridView = GridFaturalar
          Options.DetailFrameColor = clHighlight
        end
      end
      object FaturaDetayGrid: TcxGridKadir
        Left = 0
        Top = 472
        Width = 819
        Height = 95
        Align = alBottom
        TabOrder = 1
        ExceleGonder = False
        object FaturaDetaySatirlar: TcxGridDBTableView
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0.00'
              Kind = skSum
              Column = FaturaDetaySatirlarColumn4
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.NoDataToDisplayInfoText = 'Faturaya Eklenmi'#351' Sat'#305'r Yok'
          OptionsView.Footer = True
          OptionsView.FooterMultiSummaries = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooterMultiSummaries = True
          object FaturaDetaySatirlarid: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            Visible = False
          end
          object FaturaDetaySatirlarSirketSozlesmeID: TcxGridDBColumn
            DataBinding.FieldName = 'SirketSozlesmeID'
            Visible = False
          end
          object FaturaDetaySatirlarHizmetKodu: TcxGridDBColumn
            Caption = 'Hizmet Kodu'
            DataBinding.FieldName = 'HizmetKodu'
            HeaderAlignmentHorz = taCenter
            Width = 71
          end
          object FaturaDetaySatirlarColumn1: TcxGridDBColumn
            Caption = 'Hizmet Adi'
            DataBinding.FieldName = 'HizmetAdi'
            HeaderAlignmentHorz = taCenter
            Width = 137
          end
          object FaturaDetaySatirlarColumn2: TcxGridDBColumn
            Caption = 'Adet'
            DataBinding.FieldName = 'adet'
            HeaderAlignmentHorz = taCenter
          end
          object FaturaDetaySatirlarBirimFiyat: TcxGridDBColumn
            Caption = 'Fiyat'
            DataBinding.FieldName = 'fiyat'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',0.00'
            HeaderAlignmentHorz = taCenter
            Width = 70
          end
          object FaturaDetaySatirlarToplamFiyat: TcxGridDBColumn
            Caption = 'Tutar'
            DataBinding.FieldName = 'tutar'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',0.00'
            HeaderAlignmentHorz = taCenter
            Width = 70
          end
          object FaturaDetaySatirlarColumn3: TcxGridDBColumn
            Caption = 'Kdv Tutar'
            DataBinding.FieldName = 'kdvTutar'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',0.00'
            HeaderAlignmentHorz = taCenter
            Width = 70
          end
          object FaturaDetaySatirlarColumn4: TcxGridDBColumn
            Caption = 'Sat'#305'r Tutar'
            DataBinding.FieldName = 'satirToplam'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',0.00'
            HeaderAlignmentHorz = taCenter
            Width = 70
          end
        end
        object FaturaDetayGridLevel1: TcxGridLevel
          GridView = FaturaDetaySatirlar
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Log'
      ImageIndex = 1
      object txtLog: TcxMemo
        Left = 0
        Top = 0
        Align = alClient
        Lines.Strings = (
          'txtLog')
        TabOrder = 0
        Height = 567
        Width = 819
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = ADO_Faturalar
    Left = 128
    Top = 242
  end
  object ADO_Faturalar: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      
        'select SR.ID, sst.subeTanim SubeTanimi, DenetimiYapanKullanici, ' +
        'DenetimTarihi, Date_Create, GozetimDefterNo, FirmaKodu, cast (ca' +
        'se when Image Is NULL then 0 else 1 end as bit) ImageVar, SR.Goz' +
        'lemGrup, SGR.Tanimi GozlemGrupTanim'
      'from SahaGozlemRaporlari SR'
      
        'inner join SahaGozlemSoruGrup SGR on SGR.GozlemGrup = SR.GozlemG' +
        'rup'
      
        'left outer join SIRKET_SUBE_TNM sst on sst.SirketKod = SR.FirmaK' +
        'odu'
      '  and sst.SubeKod = SR.SubeKod'
      'where FirmaKodu = '#39'0001'#39
      'order by SR.ID')
    Left = 64
    Top = 240
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 16
    Top = 176
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 15132390
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor]
      Color = 8454143
    end
    object cxStyle7: TcxStyle
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clMaroon
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 16
    Top = 56
    PixelsPerInch = 96
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 408
    Top = 256
    object miYeniGozetim: TMenuItem
      Tag = -9
      Caption = 'Yeni Fatura'
      ImageIndex = 30
      OnClick = cxButtonCClick
    end
    object miGozetimDuzenle: TMenuItem
      Tag = -11
      Caption = 'Faturay'#305' A'#231
      ImageIndex = 31
      OnClick = cxButtonCClick
    end
    object S2: TMenuItem
      Tag = -27
      Caption = 'Sil'
      ImageIndex = 42
      OnClick = cxButtonCClick
    end
    object T1: TMenuItem
      Tag = -28
      Caption = 'Tahsilat Ekle'
      OnClick = cxButtonCClick
    end
    object F1: TMenuItem
      Tag = -30
      Caption = 'Fatura Yazd'#305'r'
      ImageIndex = 28
      OnClick = cxButtonCClick
    end
    object E5: TMenuItem
      Tag = 9997
      Caption = 'Excele G'#246'nder'
      ImageIndex = 75
      OnClick = cxButtonCClick
    end
    object S1: TMenuItem
      Tag = -12
      Caption = 'S'#246'zle'#351'melerden Fatura Olu'#351'tur'
      ImageIndex = 98
      OnClick = cxButtonCClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object E1: TMenuItem
      Tag = -20
      Caption = 'E-Ar'#351'iv G'#246'nder'
      ImageIndex = 15
      OnClick = cxButtonCClick
    end
    object E2: TMenuItem
      Tag = -21
      Caption = 'E-Ar'#351'iv Fatura '#304'ptal'
      ImageIndex = 43
      OnClick = cxButtonCClick
    end
    object E3: TMenuItem
      Tag = -24
      Caption = 'E-Ar'#351'iv Fatura PDF'
      ImageIndex = 110
      OnClick = cxButtonCClick
      object K1: TMenuItem
        Tag = -22
        Caption = 'Kaydet'
        ImageIndex = 29
        OnClick = cxButtonCClick
      end
      object A1: TMenuItem
        Tag = -23
        Caption = 'Al'#305'c'#305'ya Email Gonder'
        ImageIndex = 103
        OnClick = cxButtonCClick
      end
    end
    object E4: TMenuItem
      Tag = -25
      Caption = 'E-Ar'#351'iv Fatura Durum Sorgula'
      ImageIndex = 35
      OnClick = cxButtonCClick
    end
    object P1: TMenuItem
      Tag = -26
      Caption = 'Portal'#39'a Git'
      ImageIndex = 9
      OnClick = cxButtonCClick
    end
  end
  object tmr1: TTimer
    Enabled = False
    Interval = 100
    Top = 56
  end
end
