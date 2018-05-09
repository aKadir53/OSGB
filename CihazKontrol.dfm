object frmCihazKontrol: TfrmCihazKontrol
  Left = 1
  Top = 1
  Caption = 'Saha G'#246'zetim'
  ClientHeight = 597
  ClientWidth = 672
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object CihazGrid: TcxGridKadir
    Left = 204
    Top = -8
    Width = 430
    Height = 200
    TabOrder = 0
    ExcelFileName = 'RiskDegerlendirme'
    ExceleGonder = True
    object cxGridDBTableView1: TcxGridDBTableView
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NewItemRow.Visible = True
      OptionsView.NoDataToDisplayInfoText = 'Faturaya Eklenmi'#351' Sat'#305'r Yok'
      OptionsView.CellAutoHeight = True
      OptionsView.Footer = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GroupByBox = False
      OptionsView.GroupFooterMultiSummaries = True
      object cxGridDBColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'SirketRiskID'
        Visible = False
      end
      object cxGridDBColumn2: TcxGridDBColumn
        DataBinding.FieldName = 'id'
        Visible = False
      end
      object cxGridDBColumn3: TcxGridDBColumn
        Caption = 'B'#246'l'#252'm'
        DataBinding.FieldName = 'Bolum'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.DropDownRows = 20
        Properties.Items = <>
        HeaderAlignmentHorz = taCenter
        Width = 100
      end
      object cxGridDBColumn4: TcxGridDBColumn
        Caption = 'Tehlike Kayna'#287#305
        DataBinding.FieldName = 'TehlikeKaynagi'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.DropDownRows = 20
        Properties.Items = <>
        HeaderAlignmentHorz = taCenter
        Width = 111
      end
      object cxGridDBColumn5: TcxGridDBColumn
        DataBinding.FieldName = 'Tehlike'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.DropDownRows = 20
        Properties.Items = <>
        HeaderAlignmentHorz = taCenter
        Width = 122
      end
      object cxGridDBColumn6: TcxGridDBColumn
        Caption = 'Risk Tan'#305'm'#305
        DataBinding.FieldName = 'Risk_tanim'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.DropDownRows = 20
        Properties.Items = <>
        Properties.MultiLineText = True
        HeaderAlignmentHorz = taCenter
        Width = 120
      end
      object cxGridDBColumn7: TcxGridDBColumn
        Caption = 'Al'#305'nmas'#305' Gereken '#214'nlemler'
        DataBinding.FieldName = 'Onlemler'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.Alignment = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 120
      end
      object cxGridDBColumn8: TcxGridDBColumn
        DataBinding.FieldName = 'Olasilik'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.DropDownRows = 10
        Properties.ImmediatePost = True
        Properties.Items = <>
        HeaderAlignmentHorz = taCenter
        Width = 60
      end
      object cxGridDBColumn9: TcxGridDBColumn
        DataBinding.FieldName = 'Frekans'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <>
        HeaderAlignmentHorz = taCenter
        Width = 60
      end
      object cxGridDBColumn10: TcxGridDBColumn
        DataBinding.FieldName = 'Siddet'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <>
        HeaderAlignmentHorz = taCenter
        Width = 60
      end
      object cxGridDBColumn11: TcxGridDBColumn
        DataBinding.FieldName = 'Risk'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.DisplayFormat = ',0.0'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
      end
      object cxGridDBColumn12: TcxGridDBColumn
        DataBinding.FieldName = 'RDS'
        Options.Editing = False
      end
      object cxGridDBColumn13: TcxGridDBColumn
        DataBinding.FieldName = 'MevcutOnlem'
      end
      object cxGridDBColumn14: TcxGridDBColumn
        DataBinding.FieldName = 'Sorumlu'
      end
      object cxGridDBColumn15: TcxGridDBColumn
        DataBinding.FieldName = 'Termin'
      end
      object cxGridDBColumn16: TcxGridDBColumn
        DataBinding.FieldName = 'Gerceklesme'
      end
      object cxGridDBColumn17: TcxGridDBColumn
        DataBinding.FieldName = 'Olasilik_2'
      end
      object cxGridDBColumn18: TcxGridDBColumn
        DataBinding.FieldName = 'Frekans_2'
      end
      object cxGridDBColumn19: TcxGridDBColumn
        DataBinding.FieldName = 'Siddet_2'
      end
      object cxGridDBColumn20: TcxGridDBColumn
        DataBinding.FieldName = 'Risk_2'
      end
      object cxGridDBColumn21: TcxGridDBColumn
        DataBinding.FieldName = 'RDS_2'
      end
      object cxGridDBColumn22: TcxGridDBColumn
        DataBinding.FieldName = 'yasalDayanak'
      end
    end
    object cxGridDBBandedTableView1: TcxGridDBBandedTableView
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NewItemRow.Visible = True
      OptionsView.NoDataToDisplayInfoText = 'Faturaya Eklenmi'#351' Sat'#305'r Yok'
      OptionsView.CellAutoHeight = True
      OptionsView.Footer = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GroupByBox = False
      OptionsView.GroupFooterMultiSummaries = True
      Bands = <
        item
        end>
    end
    object CihazSatirlar: TcxGridDBBandedTableView
      PopupMenu = PopupMenu1
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Insert.Visible = True
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NewItemRow.SeparatorColor = 8454143
      OptionsCustomize.DataRowSizing = True
      OptionsView.CellAutoHeight = True
      OptionsView.GroupByBox = False
      Bands = <
        item
          Caption = 'Ekipman Bilgileri'
          FixedKind = fkLeft
          Styles.Header = cxStyle8
          Width = 404
        end>
      object CihazSatirlartanimi: TcxGridDBBandedColumn
        DataBinding.FieldName = 'tanimi'
        Visible = False
        Width = 114
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object CihazSatirlarsirketKod: TcxGridDBBandedColumn
        DataBinding.FieldName = 'sirketKod'
        Visible = False
        Width = 26
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object CihazSatirlarsubeKod: TcxGridDBBandedColumn
        DataBinding.FieldName = 'subeKod'
        Visible = False
        Width = 30
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object CihazSatirlarKontrolCihaz: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KontrolCihaz'
        Visible = False
        Width = 36
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object CihazSatirlarOzellik: TcxGridDBBandedColumn
        Caption = #214'zelli'#287'i'
        DataBinding.FieldName = 'Ozellik'
        PropertiesClassName = 'TcxTextEditProperties'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Styles.Content = cxStyle8
        Styles.Header = cxStyle3
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object CihazSatirlarOzellikDeger: TcxGridDBBandedColumn
        Caption = 'Bilgisi'
        DataBinding.FieldName = 'OzellikDeger'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Styles.Content = cxStyle2
        Styles.Header = cxStyle3
        Width = 98
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
    end
    object CihazGridLevel1: TcxGridLevel
      GridView = CihazSatirlar
    end
  end
  object CihazSoruGrid: TcxGridKadir
    Left = 20
    Top = 198
    Width = 500
    Height = 321
    TabOrder = 1
    ExcelFileName = 'RiskDegerlendirme'
    ExceleGonder = True
    object cxGridDBTableView2: TcxGridDBTableView
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NewItemRow.Visible = True
      OptionsView.NoDataToDisplayInfoText = 'Faturaya Eklenmi'#351' Sat'#305'r Yok'
      OptionsView.CellAutoHeight = True
      OptionsView.Footer = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GroupByBox = False
      OptionsView.GroupFooterMultiSummaries = True
      object cxGridDBColumn23: TcxGridDBColumn
        DataBinding.FieldName = 'SirketRiskID'
        Visible = False
      end
      object cxGridDBColumn24: TcxGridDBColumn
        DataBinding.FieldName = 'id'
        Visible = False
      end
      object cxGridDBColumn25: TcxGridDBColumn
        Caption = 'B'#246'l'#252'm'
        DataBinding.FieldName = 'Bolum'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.DropDownRows = 20
        Properties.Items = <>
        HeaderAlignmentHorz = taCenter
        Width = 100
      end
      object cxGridDBColumn26: TcxGridDBColumn
        Caption = 'Tehlike Kayna'#287#305
        DataBinding.FieldName = 'TehlikeKaynagi'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.DropDownRows = 20
        Properties.Items = <>
        HeaderAlignmentHorz = taCenter
        Width = 111
      end
      object cxGridDBColumn27: TcxGridDBColumn
        DataBinding.FieldName = 'Tehlike'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.DropDownRows = 20
        Properties.Items = <>
        HeaderAlignmentHorz = taCenter
        Width = 122
      end
      object cxGridDBColumn28: TcxGridDBColumn
        Caption = 'Risk Tan'#305'm'#305
        DataBinding.FieldName = 'Risk_tanim'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.DropDownRows = 20
        Properties.Items = <>
        Properties.MultiLineText = True
        HeaderAlignmentHorz = taCenter
        Width = 120
      end
      object cxGridDBColumn29: TcxGridDBColumn
        Caption = 'Al'#305'nmas'#305' Gereken '#214'nlemler'
        DataBinding.FieldName = 'Onlemler'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.Alignment = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 120
      end
      object cxGridDBColumn30: TcxGridDBColumn
        DataBinding.FieldName = 'Olasilik'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.DropDownRows = 10
        Properties.ImmediatePost = True
        Properties.Items = <>
        HeaderAlignmentHorz = taCenter
        Width = 60
      end
      object cxGridDBColumn31: TcxGridDBColumn
        DataBinding.FieldName = 'Frekans'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <>
        HeaderAlignmentHorz = taCenter
        Width = 60
      end
      object cxGridDBColumn32: TcxGridDBColumn
        DataBinding.FieldName = 'Siddet'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <>
        HeaderAlignmentHorz = taCenter
        Width = 60
      end
      object cxGridDBColumn33: TcxGridDBColumn
        DataBinding.FieldName = 'Risk'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.DisplayFormat = ',0.0'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
      end
      object cxGridDBColumn34: TcxGridDBColumn
        DataBinding.FieldName = 'RDS'
        Options.Editing = False
      end
      object cxGridDBColumn35: TcxGridDBColumn
        DataBinding.FieldName = 'MevcutOnlem'
      end
      object cxGridDBColumn36: TcxGridDBColumn
        DataBinding.FieldName = 'Sorumlu'
      end
      object cxGridDBColumn37: TcxGridDBColumn
        DataBinding.FieldName = 'Termin'
      end
      object cxGridDBColumn38: TcxGridDBColumn
        DataBinding.FieldName = 'Gerceklesme'
      end
      object cxGridDBColumn39: TcxGridDBColumn
        DataBinding.FieldName = 'Olasilik_2'
      end
      object cxGridDBColumn40: TcxGridDBColumn
        DataBinding.FieldName = 'Frekans_2'
      end
      object cxGridDBColumn41: TcxGridDBColumn
        DataBinding.FieldName = 'Siddet_2'
      end
      object cxGridDBColumn42: TcxGridDBColumn
        DataBinding.FieldName = 'Risk_2'
      end
      object cxGridDBColumn43: TcxGridDBColumn
        DataBinding.FieldName = 'RDS_2'
      end
      object cxGridDBColumn44: TcxGridDBColumn
        DataBinding.FieldName = 'yasalDayanak'
      end
    end
    object cxGridDBBandedTableView2: TcxGridDBBandedTableView
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NewItemRow.Visible = True
      OptionsView.NoDataToDisplayInfoText = 'Faturaya Eklenmi'#351' Sat'#305'r Yok'
      OptionsView.CellAutoHeight = True
      OptionsView.Footer = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GroupByBox = False
      OptionsView.GroupFooterMultiSummaries = True
      Bands = <
        item
        end>
    end
    object CihazSoruSatir: TcxGridDBBandedTableView
      PopupMenu = PopupMenu1
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Insert.Visible = True
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NewItemRow.SeparatorColor = 8454143
      OptionsCustomize.DataRowSizing = True
      OptionsView.CellAutoHeight = True
      OptionsView.GroupByBox = False
      Bands = <
        item
          Caption = #304#351' Ekipman Kontrol Sorular'#305
          FixedKind = fkLeft
          Styles.Header = cxStyle8
          Width = 476
        end>
      object CihazSoruSatirid: TcxGridDBBandedColumn
        DataBinding.FieldName = 'id'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object CihazSoruSatirkontrolid: TcxGridDBBandedColumn
        DataBinding.FieldName = 'kontrolid'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object CihazSoruSatirKontrolSoru: TcxGridDBBandedColumn
        Caption = 'Kontrol '#304#351'lemi'
        DataBinding.FieldName = 'KontrolSoru'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Styles.Content = cxStyle8
        Styles.Header = cxStyle3
        Width = 323
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object CihazSoruSatirKontrolSoruCvp: TcxGridDBBandedColumn
        Caption = 'Cevap'
        DataBinding.FieldName = 'KontrolSoruCvp'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Items = <
          item
            Description = 'Evet'
            ImageIndex = 0
            Value = 1
          end
          item
            Description = 'Hay'#305'r'
            Value = 0
          end
          item
            Description = 'Konu Hakk'#305'nda Bilgi Yok'
            Value = -1
          end
          item
          end>
        HeaderAlignmentHorz = taCenter
        Styles.Content = cxStyle3
        Width = 36
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object CihazSoruSatirKontrolSoruCvpAciklama: TcxGridDBBandedColumn
        Caption = 'A'#231#305'klama'
        DataBinding.FieldName = 'KontrolSoruCvpAciklama'
        PropertiesClassName = 'TcxMemoProperties'
        HeaderAlignmentHorz = taCenter
        Width = 117
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = CihazSoruSatir
    end
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
    object miGozetimYazdir: TMenuItem
      Tag = -27
      Caption = 'Yazd'#305'r'
      ImageIndex = 28
      OnClick = cxButtonCClick
    end
  end
  object tmr1: TTimer
    Enabled = False
    Interval = 100
  end
end
