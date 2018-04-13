object frmRDS: TfrmRDS
  Left = 1
  Top = 1
  Caption = 'Risk De'#287'erlendirme'
  ClientHeight = 597
  ClientWidth = 1000
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
  object RDSGrid: TcxGridKadir
    Left = -202
    Top = 40
    Width = 945
    Height = 169
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
        Properties.OnEditValueChanged = RDSSatirlarOlasilikPropertiesEditValueChanged
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
    object RDSSatirlar: TcxGridDBBandedTableView
      PopupMenu = PopupMenu1
      Navigator.Buttons.OnButtonClick = RDSSatirlarNavigatorButtonsButtonClick
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
      Navigator.Visible = True
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NewItemRow.SeparatorColor = 8454143
      OptionsCustomize.DataRowSizing = True
      OptionsView.CellAutoHeight = True
      OptionsView.DataRowHeight = 144
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Bands = <
        item
          Caption = 'Risk Tan'#305'm Bilgisi'
          FixedKind = fkLeft
          Styles.Header = cxStyle8
        end
        item
          Caption = 'Risk De'#287'erlendirme Bilgileri'
          Styles.Header = cxStyle8
        end>
      object RDSSatirlarSirketRiskID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SirketRiskID'
        Visible = False
        Options.Editing = False
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object RDSSatirlarid: TcxGridDBBandedColumn
        DataBinding.FieldName = 'id'
        Visible = False
        Options.Editing = False
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object RDSSatirlarBolum: TcxGridDBBandedColumn
        Caption = 'B'#246'l'#252'm'
        DataBinding.FieldName = 'Bolum'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Items = <>
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object RDSSatirlarTehlikeKaynagi: TcxGridDBBandedColumn
        Caption = 'Tehlike Kaynagi'
        DataBinding.FieldName = 'TehlikeKaynagi'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Items = <>
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 110
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object RDSSatirlarTehlike: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Tehlike'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 67
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object RDSSatirlarRisk_tanim: TcxGridDBBandedColumn
        Caption = 'Riskin Tan'#305'm'#305
        DataBinding.FieldName = 'Risk_tanim'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = PropertiesButtonClick
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 85
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object RDSSatirlarOnlemler: TcxGridDBBandedColumn
        Caption = 'Al'#305'nmas'#305' Gereken '#214'nlemler'
        DataBinding.FieldName = 'Onlemler'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.Alignment = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 150
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object RDSSatirlarOlasilik: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Olasilik'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.DisplayFormat = ',0.0'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Position.BandIndex = 1
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object RDSSatirlarFrekans: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Frekans'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.DisplayFormat = ',0.0'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Position.BandIndex = 1
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object RDSSatirlarSiddet: TcxGridDBBandedColumn
        Caption = #350'iddet'
        DataBinding.FieldName = 'Siddet'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.DisplayFormat = ',0.0'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Position.BandIndex = 1
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object RDSSatirlarRisk: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Risk'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.DisplayFormat = ',0.00'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Position.BandIndex = 1
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object RDSSatirlarRDS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RDS'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = FineKenny
        Properties.Items = <
          item
            ImageIndex = 4
            Value = 1
          end
          item
            ImageIndex = 0
            Value = 2
          end
          item
            ImageIndex = 3
            Value = 3
          end
          item
            ImageIndex = 2
            Value = 4
          end
          item
            ImageIndex = 1
            Value = 5
          end>
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Styles.Content = cxStyle9
        Width = 30
        Position.BandIndex = 1
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object RDSSatirlarMevcutOnlem: TcxGridDBBandedColumn
        Caption = 'Mevcut '#214'nlemler'
        DataBinding.FieldName = 'MevcutOnlem'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.Alignment = taCenter
        Options.Editing = False
        Width = 89
        Position.BandIndex = 1
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object RDSSatirlarSorumlu: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Sorumlu'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Options.Editing = False
        Width = 55
        Position.BandIndex = 1
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object RDSSatirlarTermin: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Termin'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Options.Editing = False
        Width = 54
        Position.BandIndex = 1
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object RDSSatirlarGerceklesme: TcxGridDBBandedColumn
        Caption = 'Gerceklesme Tarihi'
        DataBinding.FieldName = 'Gerceklesme'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Options.Editing = False
        Position.BandIndex = 1
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object RDSSatirlarOlasilik_2: TcxGridDBBandedColumn
        Caption = 'Olasilik'
        DataBinding.FieldName = 'Olasilik_2'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.DisplayFormat = ',0.0'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Position.BandIndex = 1
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object RDSSatirlarFrekans_2: TcxGridDBBandedColumn
        Caption = 'Frekans'
        DataBinding.FieldName = 'Frekans_2'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.DisplayFormat = ',0.0'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Position.BandIndex = 1
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object RDSSatirlarSiddet_2: TcxGridDBBandedColumn
        Caption = #350'iddet'
        DataBinding.FieldName = 'Siddet_2'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.DisplayFormat = ',0.0'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Position.BandIndex = 1
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object RDSSatirlarRisk_2: TcxGridDBBandedColumn
        Caption = 'Risk'
        DataBinding.FieldName = 'Risk_2'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.DisplayFormat = ',0.00'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Position.BandIndex = 1
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object RDSSatirlarRDS_2: TcxGridDBBandedColumn
        Caption = 'RDS'
        DataBinding.FieldName = 'RDS_2'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Position.BandIndex = 1
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object RDSSatirlaryasalDayanak: TcxGridDBBandedColumn
        Caption = 'Yasal Dayanak'
        DataBinding.FieldName = 'yasalDayanak'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.Alignment = taCenter
        Options.Editing = False
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object RDSSatirlarColumn1: TcxGridDBBandedColumn
        Caption = 'Resim'
        DataBinding.FieldName = 'Image'
        PropertiesClassName = 'TcxImageProperties'
        Properties.GraphicClassName = 'TJPEGImage'
        Properties.Stretch = True
        HeaderAlignmentHorz = taCenter
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
    end
    object RDSGridLevel1: TcxGridLevel
      GridView = RDSSatirlar
    end
  end
  object RDSGridMatris: TcxGridKadir
    Left = 8
    Top = 344
    Width = 679
    Height = 169
    TabOrder = 1
    Visible = False
    ExceleGonder = False
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
        Properties.OnEditValueChanged = RDSSatirlarOlasilikPropertiesEditValueChanged
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
    object RDSSatirlarMatris: TcxGridDBBandedTableView
      Navigator.Buttons.OnButtonClick = RDSSatirlarNavigatorButtonsButtonClick
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
      Navigator.Visible = True
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NewItemRow.SeparatorColor = 8454143
      OptionsView.CellAutoHeight = True
      OptionsView.GroupByBox = False
      Bands = <
        item
          Caption = 'Risk Tan'#305'm Bilgisi'
          FixedKind = fkLeft
          Styles.Header = cxStyle8
        end
        item
          Caption = 'Risk De'#287'erlendirme Bilgileri'
          Styles.Header = cxStyle8
        end>
      object cxGridDBBandedColumn1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SirketRiskID'
        Visible = False
        Options.Editing = False
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'id'
        Visible = False
        Options.Editing = False
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn3: TcxGridDBBandedColumn
        Caption = 'B'#246'l'#252'm'
        DataBinding.FieldName = 'Bolum'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Items = <>
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn4: TcxGridDBBandedColumn
        Caption = 'Tehlike Kaynagi'
        DataBinding.FieldName = 'TehlikeKaynagi'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Items = <>
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 110
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn5: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Tehlike'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 67
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn6: TcxGridDBBandedColumn
        Caption = 'Riskin Tan'#305'm'#305
        DataBinding.FieldName = 'Risk_tanim'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = PropertiesButtonClick
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 85
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn7: TcxGridDBBandedColumn
        Caption = 'Al'#305'nmas'#305' Gereken '#214'nlemler'
        DataBinding.FieldName = 'Onlemler'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.Alignment = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 150
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn8: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Olasilik'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.DisplayFormat = ',0.0'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn9: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Frekans'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.DisplayFormat = ',0.0'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Position.BandIndex = 1
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn10: TcxGridDBBandedColumn
        Caption = #350'iddet'
        DataBinding.FieldName = 'Siddet'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.DisplayFormat = ',0.0'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Position.BandIndex = 1
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn11: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Risk'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.DisplayFormat = ',0.00'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Position.BandIndex = 1
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn12: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RDS'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = FineKenny
        Properties.Items = <
          item
            ImageIndex = 4
            Value = 1
          end
          item
            ImageIndex = 0
            Value = 2
          end
          item
            ImageIndex = 3
            Value = 3
          end
          item
            ImageIndex = 2
            Value = 4
          end
          item
            ImageIndex = 1
            Value = 5
          end>
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Styles.Content = cxStyle9
        Width = 30
        Position.BandIndex = 1
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn13: TcxGridDBBandedColumn
        Caption = 'Mevcut '#214'nlemler'
        DataBinding.FieldName = 'MevcutOnlem'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.Alignment = taCenter
        Options.Editing = False
        Width = 89
        Position.BandIndex = 1
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn14: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Sorumlu'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Options.Editing = False
        Width = 55
        Position.BandIndex = 1
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn15: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Termin'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Options.Editing = False
        Width = 54
        Position.BandIndex = 1
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn16: TcxGridDBBandedColumn
        Caption = 'Gerceklesme Tarihi'
        DataBinding.FieldName = 'Gerceklesme'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Options.Editing = False
        Position.BandIndex = 1
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn17: TcxGridDBBandedColumn
        Caption = 'Olasilik'
        DataBinding.FieldName = 'Olasilik_2'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.DisplayFormat = ',0.0'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Position.BandIndex = 1
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn18: TcxGridDBBandedColumn
        Caption = 'Frekans'
        DataBinding.FieldName = 'Frekans_2'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.DisplayFormat = ',0.0'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Position.BandIndex = 1
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn19: TcxGridDBBandedColumn
        Caption = #350'iddet'
        DataBinding.FieldName = 'Siddet_2'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.DisplayFormat = ',0.0'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Position.BandIndex = 1
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn20: TcxGridDBBandedColumn
        Caption = 'Risk'
        DataBinding.FieldName = 'Risk_2'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.DisplayFormat = ',0.00'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Position.BandIndex = 1
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn21: TcxGridDBBandedColumn
        Caption = 'RDS'
        DataBinding.FieldName = 'RDS_2'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Position.BandIndex = 1
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn22: TcxGridDBBandedColumn
        Caption = 'Yasal Dayanak'
        DataBinding.FieldName = 'yasalDayanak'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.Alignment = taCenter
        Options.Editing = False
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = RDSSatirlarMatris
    end
  end
  object DataSource1: TDataSource
    DataSet = ADO_RiskDetay
    Left = 104
    Top = 146
  end
  object ADO_RiskDetay: TADOQuery
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
    Left = 104
    Top = 208
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 8
    Top = 224
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
    object cxStyle9: TcxStyle
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 65520
    Top = 112
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
    Left = 232
    Top = 176
    object E1: TMenuItem
      Tag = -20
      Caption = 'Yazd'#305'r'
      ImageIndex = 28
      OnClick = cxButtonCClick
    end
    object E3: TMenuItem
      Tag = -24
      Caption = 'Raporun Risk Tan'#305'm Bilgisini Sekt'#246'rle E'#351'le'#351'tir'
      ImageIndex = 32
    end
    object R1: TMenuItem
      Caption = 'Raporu Sekt'#246'r E'#351'le'#351'tirmesinden Doldur'
      ImageIndex = 98
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object R2: TMenuItem
      Tag = -1
      Caption = 'Raporu Ba'#351'ka Bir Kullan'#305'c'#305' '#304'le Payla'#351
      ImageIndex = 109
      OnClick = cxButtonCClick
    end
    object e2: TMenuItem
      Tag = 9997
      Caption = 'Excele G'#246'nder'
      ImageIndex = 75
      OnClick = cxButtonCClick
    end
    object K1: TMenuItem
      Tag = -25
      Caption = 
        'Ki'#351'isel Koruyucu Donan'#305'm Kullan'#305'm'#305'na '#304'li'#351'kin Risk Belirleme Tabl' +
        'osu'
      ImageIndex = 112
      OnClick = cxButtonCClick
    end
    object F1: TMenuItem
      Tag = -29
      Caption = 'Firma Bilgileri'
      ImageIndex = 6
      OnClick = cxButtonCClick
    end
    object R3: TMenuItem
      Caption = 'RDS'
      ImageIndex = 111
      OnClick = cxButtonCClick
      object S1: TMenuItem
        Tag = -27
        Caption = 'Sonu'#231' Raporu'
        ImageIndex = 111
        OnClick = cxButtonCClick
      end
      object R4: TMenuItem
        Tag = -28
        Caption = 'Risk Belirleme Ekip Tutana'#287#305
        ImageIndex = 111
        OnClick = cxButtonCClick
      end
      object RiskDeerlendirmeProsedr1: TMenuItem
        Tag = -26
        Caption = 'Risk De'#287'erlendirme Prosed'#252'r'#252
        ImageIndex = 111
        OnClick = cxButtonCClick
      end
    end
  end
  object tmr1: TTimer
    Enabled = False
    Interval = 100
  end
  object List: TListeAc
    TColcount = 0
    TColsW = '20,300'
    Conn = DATALAR.ADOConnection2
    Filtercol = 0
    BaslikRenk = clBlack
    DipRenk = clBlack
    Kolonlar.Strings = (
      'kod'
      'tanimi')
    KolonBasliklari.Strings = (
      'Kod'
      'Risk Tanimi')
    Calistir = fgEvet
    BiriktirmeliSecim = False
    SkinName = 'lilian'
    Grup = False
    GrupCol = 0
    Left = 56
  end
  object FineKenny: TcxImageList
    Height = 141
    Width = 24
    FormatVersion = 1
    DesignInfo = 15204704
    ImageInfo = <
      item
        Image.Data = {
          16350000424D16350000000000003600000028000000180000008D0000000100
          200000000000E0340000000000000000000000000000000000000099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0083FFFF0083
          FFFF0083FFFF0083FFFF0083FFFF0083FFFF0083FFFF0083FFFF0083FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF00003AFF0000
          3AFF00003AFF00003AFF00003AFF00003AFF00003AFF00003AFF00003AFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF000000FF0099
          B6FF0099B6FF0099B6FF000000FF0099B6FF0099B6FF0099B6FF000000FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF000000FF0099
          FFFF0099FFFF0099FFFF000000FF0099FFFF0099FFFF0099FFFF000000FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF000000FF0099
          FFFF0099FFFF0099FFFF000000FF0099FFFF0099FFFF0099FFFF000000FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF00563AFF0099
          FFFF0099FFFF0099FFFF008390FF0099FFFF0099FFFF0099FFFF00563AFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF006DFFFF006DFFFF0099FFFF0099FFFF0056DBFF0056DBFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0000
          66FF000000FF000000FF003DB6FF0099FFFF008390FF000000FF002290FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF002290FF0000
          00FF002200FF000000FF000000FF0099FFFF0099FFFF006D66FF000000FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF000000FF0083
          90FF0099DBFF000000FF000000FF0083FFFF0099FFFF0099FFFF000000FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF000000FF0099
          FFFF0099FFFF003D00FF000000FF00003AFF0099FFFF0099FFFF000000FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF000000FF0083
          FFFF0099FFFF0099FFFF000000FF000000FF0056DBFF002290FF000000FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF000000FF0000
          3AFF0083FFFF0099FFFF000000FF000000FF000000FF000000FF008390FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099B6FF006D
          66FF006D90FF0099FFFF008390FF003D00FF002200FF006D66FF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0083DBFF0056DBFF002290FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0056DBFF002290FF00003AFF000000FF000000FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF006D
          FFFF003DB6FF000066FF000000FF000000FF000000FF00563AFF008390FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF000066FF0000
          00FF000000FF002200FF00563AFF008390FF000000FF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF000000FF0000
          00FF006D90FF0099DBFF0099FFFF0099FFFF000000FF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF000000FF0000
          00FF00003AFF002290FF0056DBFF0083FFFF000000FF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099B6FF006D
          66FF003D00FF000000FF000000FF00003AFF000000FF0056DBFF0083FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF008390FF00563AFF002200FF000000FF000000FF00003AFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099DBFF008390FF00563AFF000000FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF006DFFFF006DFFFF0099FFFF0099FFFF0056DBFF0056DBFF0099B6FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0000
          66FF000000FF000000FF003DB6FF0099FFFF008390FF000000FF002290FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF002290FF0000
          00FF002200FF000000FF000000FF0099FFFF0099FFFF006D66FF000000FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF000000FF0083
          90FF0099DBFF000000FF000000FF0083FFFF0099FFFF0099FFFF000000FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF000000FF0099
          FFFF0099FFFF003D00FF000000FF00003AFF0099FFFF0099FFFF000000FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF000000FF0083
          FFFF0099FFFF0099FFFF000000FF000000FF0056DBFF002290FF000000FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF000000FF0000
          3AFF0083FFFF0099FFFF000000FF000000FF000000FF000000FF008390FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099B6FF006D
          66FF006D90FF0099FFFF008390FF003D00FF002200FF006D66FF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099DBFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF000066FF0000
          66FF000066FF000066FF000066FF000066FF000066FF000066FF000066FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF008390FF0083
          90FF008390FF008390FF008390FF008390FF008390FF008390FF000000FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF000000FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF000000FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF002200FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF003DB6FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF003D90FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF000000FF0056
          DBFF0056DBFF0056DBFF0056DBFF0056DBFF0056DBFF0056DBFF000000FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF000000FF0022
          00FF002200FF002200FF002200FF002200FF002200FF002200FF000000FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF000000FF0099
          DBFF0099DBFF0099DBFF0099DBFF0099DBFF0099DBFF0099DBFF000000FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099B6FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099B6FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF000066FF0000
          66FF000066FF000066FF000066FF000066FF000066FF000066FF000066FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF000000FF0083
          90FF008390FF008390FF000000FF008390FF008390FF008390FF008390FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF000000FF0099
          FFFF0099FFFF0099FFFF000000FF0056DBFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF000000FF0056
          DBFF006DFFFF003DB6FF000000FF000000FF002290FF0083FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF000000FF0000
          00FF000000FF000000FF006D66FF002200FF000000FF00003AFF0056DBFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099B6FF0022
          00FF000000FF003D00FF0099FFFF0099DBFF00563AFF000000FF000000FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          DBFF0099B6FF0099FFFF0099FFFF0099FFFF0099FFFF006D66FF000000FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF003DB6FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF003466FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF000000FF0056
          DBFF0056DBFF0056DBFF0056DBFF0056DBFF0056DBFF0056DBFF000000FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF000066FF0099FFFF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF000000FF0099FFFF000000FF0022
          00FF002200FF002200FF002200FF002200FF002200FF002200FF000000FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099B6FF0099FFFF000000FF0099
          DBFF0099DBFF0099DBFF0099DBFF0099DBFF0099DBFF0099DBFF000000FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099B6FF0099
          FFFF006DFFFF006DFFFF0099FFFF0099FFFF0056DBFF0056DBFF0099B6FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0000
          66FF000000FF000000FF003DB6FF0099FFFF008390FF000000FF002290FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF002290FF0000
          00FF002200FF000000FF000000FF0099FFFF0099FFFF006D66FF000000FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF000000FF0083
          90FF0099DBFF000000FF000000FF0083FFFF0099FFFF0099FFFF000000FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF000000FF0099
          FFFF0099FFFF003D00FF000000FF00003AFF0099FFFF0099FFFF000000FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF000000FF0083
          FFFF0099FFFF0099FFFF000000FF000000FF0056DBFF002290FF000000FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF000000FF0000
          3AFF0083FFFF0099FFFF000000FF000000FF000000FF000000FF008390FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099B6FF006D
          66FF006D90FF0099FFFF008390FF003D00FF002200FF006D66FF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0083FFFF0083
          FFFF0083FFFF0083FFFF0083FFFF0083FFFF0083DBFF0083FFFF0083FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF00003AFF0000
          3AFF00003AFF00003AFF00003AFF00003AFF00003AFF00003AFF00003AFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099B6FF0099
          B6FF0099B6FF003D66FF000000FF006DB6FF0099B6FF0099B6FF0099B6FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF006D
          FFFF000066FF000000FF000000FF000000FF003DB6FF0083FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF003DB6FF0000
          00FF000000FF006D66FF0099B6FF003D00FF000000FF00003AFF003DB6FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF000000FF0022
          00FF008390FF0099FFFF0099FFFF0099FFFF006D66FF000000FF000000FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF002200FF0099
          DBFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF008390FF000000FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099DBFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099B6FF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099
          FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF}
      end
      item
        Image.Data = {
          16350000424D16350000000000003600000028000000180000008D0000000100
          200000000000E034000000000000000000000000000000000000FF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFF666DCCFF666DCCFF666DCCFF666DCCFF666DCCFF666DCCFF666D
          CCFF666DCCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFB63D00FFB63D00FF903D00FF000000FF3A2200FFB63D00FFB63D
          00FFB63D00FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFF9083CCFF002273FF000000FF00002EFF3A56AFFFB699
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFF3A56AFFF00002EFF3A0000FFFF6D52FFB63D00FF000000FF0000
          52FF666DCCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFF000000FF902200FFFF8373FFFF99CCFFFF99CCFFFF6D52FF3A00
          00FF000000FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFF660000FFFF99AFFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF83
          73FF3A0000FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF9991FFFF99CCFFFF99CCFFFF99CCFFDB99CCFF9083CCFF3A56
          AFFF00222EFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFB699CCFF3A56AFFF002273FF00002EFF0000
          00FF3A0000FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFF666DCCFF003D91FF000052FF000000FF3A0000FF000000FFDB56
          2EFFFF8373FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFF000000FF000000FF662200FFDB562EFFFF8373FF000000FFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFF000000FF000000FF002252FF3A56AFFF9083CCFF000000FFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF6D52FFB63D00FF3A0000FF000000FF00002EFF000000FF3A56
          AFFF9083CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF8373FFDB562EFF902200FF3A0000FF0000
          00FF00002EFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99AFFFFF8373FFDB56
          2EFF660000FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFF666DCCFF666DCCFF666DCCFF666DCCFF666DCCFF666DCCFF666D
          CCFF666D91FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFF000000FFB63D00FFB63D00FF000000FFB63D00FFB63D00FFB63D
          00FF000000FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFF000000FFFF99CCFFDB99CCFF000000FFFF99CCFFFF99CCFFFF99
          CCFF000000FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFF000000FF003D91FF002273FF000000FF666DCCFF9083CCFF3A56
          AFFF000000FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFF902200FF000000FF3A0000FFB63D00FF000000FF00002EFF0000
          00FF902200FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99AFFFFF6D52FFFF8373FFFF99CCFFB63D00FF902200FFDB56
          2EFFFF99AFFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFF666DCCFF666DCCFF666DCCFF666DCCFF666DCCFF666DAFFFB699
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFF000000FF000000FF000000FF000000FF000000FF000000FF0000
          52FFB699CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFB63D00FFB63D00FFB63D00FFB63D00FFB63D00FFB63D00FF6600
          00FF000052FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFF9083CCFF9083
          CCFF9083CCFF9083CCFF9083CCFF9083CCFF9083CCFF9083CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          91FF000000FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFF00002EFF0000
          2EFF00002EFF00002EFF00002EFF00002EFF00002EFF00002EFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFB699
          CCFF000000FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFF000000FF9022
          00FF902200FF902200FF000000FF902200FF902200FF902200FFFF99CCFFFF99
          CCFFFF99CCFF003D91FF003D91FF003D91FF003D91FF003D91FF003D91FF0000
          52FF3A0000FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFF000000FFFF99
          AFFFFF99AFFFFF99AFFF000000FF9083AFFFFF99AFFFFF99AFFFFF99CCFFFF99
          CCFFFF99CCFF000000FF000000FF000000FF000000FF000000FF000000FF6600
          00FFFF8373FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFF000000FF9083
          CCFFB699CCFF9083CCFF000000FF00002EFF666DCCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF6D52FFFF6D52FFFF6D52FFFF6D52FFFF6D52FFFF6D52FFFF99
          91FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFF3A0000FF0000
          2EFF000052FF00002EFFB63D00FF000000FF000000FF003D91FFFF99CCFFFF99
          CCFFFF99CCFF666DCCFF666DCCFF666DCCFF666DCCFF666DCCFF666DCCFF666D
          CCFF666DCCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF8373FF6600
          00FF660000FFB63D00FFFF99CCFFFF6D52FF3A0000FF000000FFFF99CCFFFF99
          CCFFFF99CCFF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          91FFFF9991FFFF99CCFFFF99CCFFFF99CCFFFF8373FF3A0000FFFF99CCFFFF99
          CCFFFF99CCFFB63D00FFB63D00FFB63D00FFB63D00FFB63D00FFB63D00FFB63D
          00FF000000FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFF003D91FFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFF00222EFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFF000000FFFF99CCFFFF99CCFFFF99CCFF9083CCFFFF99CCFF000000FF666D
          CCFF666DCCFF666DCCFF666DCCFF666DCCFF666DCCFF000000FFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFF000000FFFF99CCFFFF99CCFFFF99CCFF00002EFFFF99CCFF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFF902200FFFF99CCFFFF99CCFFFF99CCFF902200FFFF99CCFF000000FFB63D
          00FFB63D00FFB63D00FFB63D00FFB63D00FFB63D00FF000000FFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99AFFFFF99CCFFFF99CCFFFF99CCFFFF99AFFFFF99CCFF902200FFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFF902200FFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99AFFF666D
          CCFF3A56AFFF666DCCFFFF99CCFFFF99CCFFFF99CCFF003D73FFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFF666DCCFF0000
          00FF000000FF000000FFB699CCFFFF99CCFFFF99CCFF000000FFFF99CCFFFF99
          CCFFFF99CCFF666DCCFF666DCCFF666DCCFF666DCCFF666DCCFF666DCCFF666D
          CCFF666DCCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFF000000FFB63D
          00FFDB562EFF000000FF000052FFFF99CCFFFF99CCFF000000FFFF99CCFFFF99
          CCFFFF99CCFF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFF000000FFFF99
          CCFFFF99CCFF000000FF000000FFFF99CCFFFF99CCFF000000FFFF99CCFFFF99
          CCFFFF99CCFF000000FFB63D00FFB63D00FFB63D00FFB63D00FFB63D00FFB63D
          00FF000000FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFF000000FFFF99
          CCFFFF99CCFF000000FF000000FF9083CCFF666DCCFF000000FFFF99CCFFFF99
          CCFFFF99CCFF000000FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFF000000FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFF000000FFFF99
          CCFFFF99CCFFDB562EFF000000FF00002EFF000000FFDB562EFFFF99CCFFFF99
          CCFFFF99CCFF000000FF9083CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFF9083
          CCFF000000FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFDB562EFFFF99
          CCFFFF99CCFFFF99CCFFB63D00FF902200FFB63D00FFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFF902200FF00002EFF3A56AFFF666DCCFF666DCCFF3A56AFFF0000
          2EFF902200FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFF666DCCFF666D
          CCFF666DCCFF666DCCFF666DCCFF666DAFFF666DCCFF666DCCFFFF99CCFFFF99
          CCFFFF99CCFFFF99AFFF660000FF000000FF000000FF000000FF000000FF9022
          00FFFF99AFFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF9991FFDB562EFFB63D00FFB63D00FFDB562EFFFF99
          AFFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFB63D00FFB63D
          00FF903D00FF000000FF3A2200FFB63D00FFB63D00FFB63D00FFFF99CCFFFF99
          CCFFFF99CCFF003D91FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFF003D91FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFF9083
          CCFF002273FF000000FF00002EFF3A56AFFFB699CCFFFF99CCFFFF99CCFF9083
          CCFFFF99CCFF000000FF666DCCFF666DCCFF666DCCFF666DCCFF666DCCFF666D
          CCFF000000FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFF3A56AFFF0000
          2EFF3A0000FFFF6D52FFB63D00FF000000FF000052FF666DCCFFFF99CCFF0000
          2EFFFF99CCFF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFF000000FF9022
          00FFFF8373FFFF99CCFFFF99CCFFFF6D52FF3A0000FF000000FFFF99CCFF9022
          00FFFF99CCFF000000FFB63D00FFB63D00FFB63D00FFB63D00FFB63D00FFB63D
          00FF000000FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFF660000FFFF99
          AFFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF8373FF660000FFFF99CCFFFF99
          AFFFFF99CCFF902200FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFF902200FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF9991FFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF9991FFFF99CCFFFF99
          CCFFFF99CCFF666DAFFF666DCCFF666DCCFF666DCCFF666DCCFF666DCCFF666D
          CCFF666DAFFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFB63D00FFB63D00FFB63D00FFB63D00FFB63D00FFB63D00FFB63D
          00FF000000FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFF000000FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFF000000FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFF902200FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFF666DCCFF666DCCFF666DCCFF666DCCFF666DCCFF666DCCFF666D
          CCFF666DAFFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFF000000FFB63D00FFB63D00FF000000FFB63D00FFB63D00FFB63D
          00FF000000FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFF000000FFFF99CCFFFF99CCFF000000FFFF99CCFFFF99CCFFFF99
          CCFF000000FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFF000000FFFF99CCFFFF99CCFF3A0000FFFF99CCFFFF99CCFFFF99
          CCFF000000FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFDB562EFFFF99CCFFFF99CCFFFF8373FFFF99CCFFFF99CCFFFF99
          CCFFDB562EFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFF666DCCFF666DCCFF666DCCFF666DCCFF666DCCFF666DCCFF666D
          CCFF666DCCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFF000000FFB63D00FFB63D00FF000000FFB63D00FFB63D00FFB63D
          00FF000000FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFF000000FFFF99CCFFDB99CCFF000000FFFF99CCFFFF99CCFFFF99
          CCFF000000FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFF000000FF003D91FF002273FF000000FF666DCCFF9083CCFF3A56
          AFFF000000FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFF902200FF000000FF3A0000FFB63D00FF000000FF00002EFF0000
          00FF902200FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99AFFFFF6D52FFFF8373FFFF99CCFFB63D00FF902200FFDB56
          2EFFFF99AFFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFF003D91FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99AFFFFF99
          CCFF003D91FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFF9083
          CCFFFF99CCFF000000FF666DCCFF666DCCFF666DCCFF666DCCFF666DCCFF666D
          CCFF000000FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFF0000
          2EFFFF99CCFF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFF9022
          00FFFF99CCFF000000FFB63D00FFB63D00FFB63D00FFB63D00FFB63D00FFB63D
          00FF000000FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          AFFFFF99CCFF902200FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFF902200FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFF666DAFFF666DCCFF666DCCFF666DCCFF666DCCFF666DCCFF666D
          CCFF666DAFFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFB63D00FFB63D00FFB63D00FFB63D00FFB63D00FFB63D00FFB63D
          00FF000000FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFF000000FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFF000000FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFF902200FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFF003D91FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFF003D73FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFF9083
          CCFFFF99CCFF000000FF666DCCFF666DCCFF666DCCFF666DCCFF666DCCFF666D
          CCFF000000FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFF0000
          2EFFFF99CCFF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFF9022
          00FFFF99CCFF000000FFB63D00FFB63D00FFB63D00FFB63D00FFB63D00FFB63D
          00FF000000FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          AFFFFF99CCFF902200FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFF902200FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFF9083AFFF9083CCFF9083CCFF9083CCFF9083CCFF9083CCFF9083
          CCFF9083AFFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFF00002EFF00002EFF00002EFF00002EFF00002EFF00002EFF0000
          2EFF00002EFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFF000000FF902200FF902200FF902200FF000000FF902200FF9022
          00FF902200FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFF000000FFFF99AFFFFF99AFFFFF99AFFF000000FF9083AFFFFF99
          AFFFFF99AFFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFF000000FF9083CCFFB699CCFF9083CCFF000000FF00002EFF666D
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFF3A0000FF00002EFF000052FF00002EFFB63D00FF000000FF0000
          00FF003D91FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF8373FF660000FF660000FFB63D00FFFF99CCFFFF6D52FF3A00
          00FF000000FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF9991FFFF9991FFFF99CCFFFF99CCFFFF99CCFFFF83
          73FF3A0000FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF8373FFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99
          CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFFFF99CCFF}
      end
      item
        Image.Data = {
          16350000424D16350000000000003600000028000000180000008D0000000100
          200000000000E034000000000000000000000000000000000000F5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFD2E7
          CFFF62A5CFFF005C94FF005C94FF005C94FF62A5CFFFD2E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFF0034
          75FF000000FF000000FF000000FF000000FF000000FF003475FFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFF005C94FF0000
          00FF8A3400FFAF5C00FFAF5C00FFAF5C00FF8A3400FF000000FF005C94FFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFF000000FFF5A5
          53FFF5E7B2FFF5E7CFFFF5E7CFFFF5E7CFFFF5E7B2FFF5A553FF000000FFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFF000000FFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFF000000FFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFF000000FF62A5
          CFFFD2E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFD2E7CFFF62A5CFFF000000FFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFAF5C00FF0000
          00FF003475FF005C94FF3881B2FF005C94FF003475FF000000FFAF5C00FFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFF8A34
          00FF000000FF000000FF000000FF000000FF000000FF8A3400FFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          B2FFF5A553FFAF5C00FFAF5C00FFAF5C00FFF5A553FFF5E7B2FFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFAFE7CFFFAFE7
          CFFFAFE7CFFFAFE7CFFFAFE7CFFFAFE7CFFFAFE7CFFFAFE7CFFFAFE7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFF000053FF0000
          53FF000053FF000053FF000053FF000053FF000053FF000053FF000053FFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFF380000FF3800
          00FF380000FF380000FF380000FF380000FF380000FF380000FF000000FFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5C675FFF5C6
          75FFF5C675FFF5C675FFF5C675FFF5C675FFF5C675FFF5C675FF000000FFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFF000000FFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFF000000FFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFF623400FFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFD2E7CFFF8AC6CFFF3881B2FF003453FFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFAFE7CFFF3881B2FF003475FF00002EFF000000FF380000FFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFAFE7CFFF62A5
          CFFF005C94FF000053FF000000FF380000FF000000FFD2812EFFF5C675FFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFF000053FF0000
          00FF380000FF8A3400FFD2812EFFF5C675FF000000FFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFF000000FF0000
          00FF8AA575FFD2E7B2FFF5E7CFFFF5E7CFFF000000FFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFF620000FF0000
          00FF00002EFF003475FF3881B2FF8AC6CFFF000000FFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E794FFF5A5
          53FFAF5C00FF380000FF000000FF00002EFF000000FF3881B2FF8AC6CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5C675FFD2812EFF8A3400FF380000FF000000FF00002EFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7B2FFF5C675FFD2812EFF620000FFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFAFE7
          CFFF62A5CFFF62A5CFFFF5E7CFFFF5E7CFFF6281B2FF3881B2FFD2E794FFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFD2E7CFFF0000
          53FF000000FF000000FF005C94FFF5E7CFFFF5C675FF000000FF003475FFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFF003475FF3800
          00FF8A3400FF000000FF000000FFF5E7CFFFF5E7CFFFF5A553FF000000FFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFF000000FFF5C6
          75FFF5E7B2FF000000FF000000FF8AC6CFFFF5E7CFFFF5E7CFFF000000FFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFF000000FFF5E7
          CFFFF5E7CFFFAF5C00FF000000FF00002EFFF5E7CFFFD2E7CFFF000000FFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFF000000FF8AC6
          CFFFF5E7CFFFF5E7CFFF000000FF000000FF3881B2FF003475FF380000FFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFF620000FF0000
          2EFF8AC6CFFFF5E7CFFF380000FF000000FF000000FF000000FFF5C675FFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E794FFF5A5
          53FFF5A575FFF5E7CFFFF5C675FFAF5C00FF8A3400FFF5A553FFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFF005C94FFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7B2FFF5E7CFFF005C94FFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFF000000FF3881
          B2FF3881B2FF3881B2FF3881B2FF3881B2FF3881B2FF3881B2FF000000FFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFF000000FF8A34
          00FF8A3400FF8A3400FF8A3400FF8A3400FF8A3400FF8A3400FF000000FFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFF620000FFF5E7
          B2FFF5E7B2FFF5E7B2FFF5E7B2FFF5E7B2FFF5E7B2FFF5E7B2FF620000FFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E794FFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E794FFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFAFE7CFFFAFE7
          CFFFAFE7CFFFAFE7CFFFAFE7CFFFAFE7CFFFAFE7CFFFAFE7CFFFAFE7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFF000053FF0000
          53FF000053FF000053FF000053FF000053FF000053FF000053FF000053FFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFF000000FF3800
          00FF380000FF380000FF000000FF380000FF380000FF380000FF380000FFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFF000000FFF5C6
          75FFF5C675FFF5C675FF000000FFF5C675FFF5C675FFF5C675FFF5C675FFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFF000000FFF5E7
          CFFFF5E7CFFFF5E7CFFF000000FF3881B2FFD2E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFF000000FF3881
          B2FF62A5CFFF005C94FF000000FF000000FF003475FF8AC6CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFF620000FF0000
          00FF000000FF000000FFF5A553FF8A3400FF000000FF00002EFF3881B2FFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E794FF8A34
          00FF620000FFAF5C00FFF5E7CFFFF5E7B2FFD2812EFF000000FF000000FFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          B2FFF5E794FFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5A553FF380000FFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFF005C94FFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFF005054FFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFAFE7CFFFF5E7CFFF000000FF3881
          B2FF3881B2FF3881B2FF3881B2FF3881B2FF3881B2FF3881B2FF000000FFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFF000053FFF5E7CFFF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFF620000FFF5E7CFFF000000FF8A34
          00FF8A3400FF8A3400FF8A3400FF8A3400FF8A3400FF8A3400FF000000FFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E794FFF5E7CFFF620000FFF5E7
          B2FFF5E7B2FFF5E7B2FFF5E7B2FFF5E7B2FFF5E7B2FFF5E7B2FF620000FFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E794FFAFE7
          CFFF62A5CFFF62A5CFFFF5E7CFFFF5E7CFFF6281B2FF3881B2FFD2E794FFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFD2E7CFFF0000
          53FF000000FF000000FF005C94FFF5E7CFFFF5C675FF000000FF003475FFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFF003475FF3800
          00FF8A3400FF000000FF000000FFF5E7CFFFF5E7CFFFF5A553FF000000FFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFF000000FFF5C6
          75FFF5E7B2FF000000FF000000FF8AC6CFFFF5E7CFFFF5E7CFFF000000FFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFF000000FFF5E7
          CFFFF5E7CFFFAF5C00FF000000FF00002EFFF5E7CFFFD2E7CFFF000000FFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFF000000FF8AC6
          CFFFF5E7CFFFF5E7CFFF000000FF000000FF3881B2FF003475FF380000FFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFF620000FF0000
          2EFF8AC6CFFFF5E7CFFF380000FF000000FF000000FF000000FFF5C675FFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E794FFF5A5
          53FFF5A575FFF5E7CFFFF5C675FFAF5C00FF8A3400FFF5A553FFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFF8AC6CFFF8AC6
          CFFF8AC6CFFF8AC6CFFF8AC6CFFF8AC6CFFF8AC6B2FF8AC6CFFF8AC6CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFF00002EFF0000
          2EFF00002EFF00002EFF00002EFF00002EFF00002EFF00002EFF00002EFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFF620000FF6200
          00FF620000FF620000FF000000FF620000FF620000FF620000FF620000FFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E794FFF5E7
          94FFAFE794FF005C53FF000000FF62A594FFF5E794FFF5E794FFF5E794FFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFF62A5
          CFFF000053FF000000FF620000FF000000FF005C94FF8AC6CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFF005C94FF0000
          00FF380000FFF5A553FFF5E794FFAF5C00FF000000FF00002EFF005C94FFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFF000000FF8A34
          00FFF5C675FFF5E7CFFFF5E7CFFFF5E7CFFFF5A553FF380000FF000000FFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFF8A3400FFF5E7
          B2FFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5C675FF620000FFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7B2FFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E794FFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7
          CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFFF5E7CFFF}
      end
      item
        Image.Data = {
          16350000424D16350000000000003600000028000000180000008D0000000100
          200000000000E03400000000000000000000000000000000000000FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00B6FFFF0066B6FF0066B6FF0066B6FF00B6FFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF003A90FF000000FF000000FF000000FF000000FF000000FF003A90FF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0090DBFF00FFFFFF0066
          B6FF000000FF003A00FF006600FF006600FF006600FF003A00FF000000FF0066
          B6FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF00FFFFFF0000
          00FF00B666FF00FFDBFF00FFFFFF00FFFFFF00FFFFFF00FFDBFF00B666FF0000
          00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DB90FF00FFFFFF0000
          00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000
          00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003A90FF00FFFFFF0000
          00FF00B6FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B6FFFF0000
          00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF00FFFFFF0066
          00FF000000FF003A90FF0066B6FF0090DBFF0066B6FF003A90FF000000FF0066
          00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFB6FF00FFFFFF00FF
          FFFF003A00FF000000FF000000FF000000FF000000FF000000FF003A00FF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFDBFF00B666FF006600FF006600FF006600FF00B666FF00FFDBFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B6
          FFFF00B6FFFF00B6FFFF00B6FFFF00B6FFFF00B6FFFF00B6FFFF00B6FFFF00B6
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000
          00FF000000FF006600FF006600FF006600FF006600FF006600FF006600FF0066
          00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B6
          66FF006600FF000066FF0066B6FF00B6FFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFB6FF00B666FF003A00FF000066FF0066B6FF00B6FFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0066
          B6FF0066B6FF0066B6FF0066B6FF006690FF003A3AFF000000FF000000FF0000
          66FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B6
          66FF00B666FF00B666FF00B666FF00B666FF00B666FF00B666FF00B666FF00B6
          66FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DB
          FFFF00DBFFFF00DBFFFF00DBFFFF00DBFFFF00DBFFFF00DBFFFF00DBFFFF00DB
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000
          3AFF00003AFF00003AFF00003AFF00003AFF00003AFF00003AFF00003AFF0000
          3AFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000
          00FF00FFB6FF00FFB6FF00FFB6FF000000FF00FFB6FF00FFB6FF00FFB6FF0000
          00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000
          00FF00FFFFFF00FFFFFF00FFFFFF000000FF00FFFFFF00FFFFFF00FFFFFF0000
          00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000
          00FF00FFFFFF00FFFFFF00FFFFFF000000FF00FFFFFF00FFFFFF00FFFFFF0000
          00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0090
          3AFF00FFFFFF00FFFFFF00FFFFFF00DB90FF00FFFFFF00FFFFFF00FFFFFF0090
          3AFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000
          66FF000066FF000066FF000066FF000066FF000066FF000066FF000066FF0000
          66FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0066
          00FF000000FF006666FF00B6B6FF00FFB6FF00FFB6FF00FFB6FF00FFB6FF00FF
          B6FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00DB90FF00903AFF003A00FF000066FF0090DBFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFDBFF006666FF000000FF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00DBFFFF0090DBFF000066FF003A00FF00B666FF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0066
          B6FF00003AFF00663AFF00B690FF00DBDBFF00DBFFFF00DBFFFF00DBFFFF00DB
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000
          00FF000000FF00003AFF00003AFF00003AFF00003AFF00003AFF00003AFF0000
          3AFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          B6FF00FFB6FF00FFB6FF00FFB6FF00FFB6FF00FFB6FF00FFB6FF00FFB6FF00FF
          B6FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000
          66FF000066FF000066FF000066FF000066FF000066FF000066FF000066FF0000
          66FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DB
          90FF00DB90FF00DB90FF00DB90FF00DB90FF00DB90FF00DB90FF00DB90FF0000
          00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000
          00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000
          00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003A
          00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0066
          B6FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0066
          9CFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000
          00FF0090DBFF0090DBFF0090DBFF0090DBFF0090DBFF0090DBFF0090DBFF0000
          00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000066FF00FFFFFF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF00FFFFFF0000
          00FF003A00FF003A00FF003A00FF003A00FF003A00FF003A00FF003A00FF0000
          00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFB6FF00FFFFFF0000
          00FF00FFDBFF00FFDBFF00FFDBFF00FFDBFF00FFDBFF00FFDBFF00FFDBFF0000
          00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          B6FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          B6FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000
          66FF000066FF000066FF000066FF000066FF000066FF000066FF000066FF0000
          66FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000
          00FF00DB90FF00DB90FF00DB90FF000000FF00DB90FF00DB90FF00DB90FF00DB
          90FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000
          00FF00FFFFFF00FFFFFF00FFFFFF000000FF0090DBFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000
          00FF0090DBFF00B6FFFF0066B6FF000000FF000000FF003A90FF00DBFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000
          00FF000000FF000000FF000000FF00B666FF003A00FF000000FF00003AFF0090
          DBFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          B6FF003A00FF000000FF006600FF00FFFFFF00FFDBFF00903AFF000000FF0000
          00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFDBFF00FFB6FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B666FF0000
          00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0066
          B6FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003A
          3AFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000
          00FF0090DBFF0090DBFF0090DBFF0090DBFF0090DBFF0090DBFF0090DBFF0000
          00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000066FF00FFFFFF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF00FFFFFF0000
          00FF003A00FF003A00FF003A00FF003A00FF003A00FF003A00FF003A00FF0000
          00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFB6FF00FFFFFF0000
          00FF00FFDBFF00FFDBFF00FFDBFF00FFDBFF00FFDBFF00FFDBFF00FFDBFF0000
          00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          B6FF00FFFFFF00B6FFFF00B6FFFF00FFFFFF00FFFFFF0090DBFF0090DBFF00FF
          B6FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF000066FF000000FF000000FF0066B6FF00FFFFFF00DB90FF000000FF003A
          90FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003A
          90FF000000FF003A00FF000000FF000000FF00FFFFFF00FFFFFF00B666FF0000
          00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000
          00FF00DB90FF00FFDBFF000000FF000000FF00DBFFFF00FFFFFF00FFFFFF0000
          00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000
          00FF00FFFFFF00FFFFFF006600FF000000FF00003AFF00FFFFFF00FFFFFF0000
          00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000
          00FF00DBFFFF00FFFFFF00FFFFFF000000FF000000FF0090DBFF003A90FF0000
          00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000
          00FF00003AFF00DBFFFF00FFFFFF000000FF000000FF000000FF000000FF00DB
          90FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          B6FF00B666FF00B690FF00FFFFFF00DB90FF006600FF003A00FF00B666FF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DB
          FFFF00DBFFFF00DBFFFF00DBFFFF00DBFFFF00DBFFFF00DBDBFF00DBFFFF00DB
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000
          3AFF00003AFF00003AFF00003AFF00003AFF00003AFF00003AFF00003AFF0000
          3AFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          B6FF00FFB6FF00FFB6FF006666FF000000FF00B6B6FF00FFB6FF00FFB6FF00FF
          B6FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00B6FFFF000066FF000000FF000000FF000000FF0066B6FF00DBFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0066
          B6FF000000FF000000FF00B666FF00FFB6FF006600FF000000FF00003AFF0066
          B6FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000
          00FF003A00FF00DB90FF00FFFFFF00FFFFFF00FFFFFF00B666FF000000FF0000
          00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003A
          00FF00FFDBFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DB90FF0000
          00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          DBFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          B6FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
          FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF}
      end
      item
        Image.Data = {
          16350000424D16350000000000003600000028000000180000008D0000000100
          200000000000E034000000000000000000000000000000000000241CEDFF241C
          EDFF241CEDFF241CEDFFDE98F1FF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFFFFFFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFFFFFFFDE98F1FFDE98F1FFDE98F1FFDE98F1FFDE98
          F1FFDE98F1FF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFFFFFFFBDFFFFFFBDFFFFFFBDFFFFFFBDFFFFFFBDFF
          FFFFBDFFFFFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFFFFFFF241CF3FF241CF3FF241CF3FF241CF3FF241C
          F3FF241CF3FF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFBDFFFFFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CF3FF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF761CEDFFBD72EDFFDE98F1FFBD72EDFF761C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF761CEDFFFFFFF9FFFFFFFFFFDEFFFFFFFFFFFFFFFFFF
          F9FF761CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFFFF9FF9BDDFFFF2472F9FF244AF7FF2472F9FF9BDD
          FFFFFFFFF9FF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFFFFFFF241CF1FF241CEDFF241CEDFF241CEDFF241C
          F1FFFFFFFFFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFFFFFFF501CEDFF241CEDFF241CEDFF241CEDFF501C
          EDFFFFFFFFFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFBDFFFFFFFFDDF7FFBD72EDFF9B4AEDFFBD72EDFFFFDD
          F7FFBDFFFFFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CF3FFBDFFFFFFFFFFFFFFFFFFFCFFFFFFFFFFBDFF
          FFFF241CF3FF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CF3FF2472F9FF5098FCFF2472F9FF241C
          F3FF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF761CEDFF761CEDFF761CEDFF761CEDFF761CEDFF761C
          EDFF761CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFFFF9FFFFFFF9FFFFFFF9FFFFFFF9FFFFFFF9FFFFFF
          F9FFFFFFF9FF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF76BBFFFF76BBFFFF76BBFFFF76BBFFFF76BBFFFF76BB
          FFFFFFFFFFFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFFFFFFFFFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFFFFFFFFFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF9BDDFFFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF9B4AEDFF9B4AEDFF9B4AEDFF9B4AEDFF9B4AEDFF9B4A
          EDFF9B4AF1FF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFFFFCFFFFFFFCFFFFFFFCFFFFFFFCFFFFFFFCFFFFFF
          FCFFFFFFFCFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFFFFFFF5098FCFF5098FCFFFFFFFFFF5098FCFF5098
          FCFFFFFFFFFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFFFFFFF241CEDFF241CEDFFFFFFFFFF241CEDFF241C
          EDFFFFFFFFFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFFFFFFF241CEDFF241CEDFFFFFFFFFF241CEDFF241C
          EDFFFFFFFFFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF76BBFFFF241CEDFF241CEDFF2472F9FF241CEDFF241C
          EDFF76BBFFFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF9B4AEDFF9B4AEDFF9B4AEDFF9B4AEDFF9B4AEDFF9B4A
          EDFF9B4AEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFFFFCFFFFFFFCFFFFFFFCFFFFFFFCFFFFFFFCFFFFFF
          FCFFFFFFFCFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFFFFFFF5098FCFF5098FCFFFFFFFFFF5098FCFF5098
          FCFF5098FCFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFFFFFFF241CEDFF241CEDFFFFFFFFFFBD72EDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFFFFFFFDE98F1FFFFBBF3FFDEFFFFFFFFFFFFFFFFBB
          F3FF761CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF76BBFFFFDEFFFFFFDEFFFFFF244AF7FF5098FCFFDEFF
          FFFFFFFFF9FF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF244AF7FF244AF7FF241CEDFF241CEDFF244A
          F7FFDEFFFFFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF761CEDFFDE98
          F1FFFFDDFCFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF501CEDFF9B4AEDFFFFBBF3FFFFFFF9FFDEFF
          FFFF9BDDFFFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFBD72EDFFFFDDF7FFFFFFFCFFBDFFFFFFFFFFFFFF244A
          F7FF241CF1FF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFFFFFFF76BBFFFF2472F9FF241CF3FFFFFFFFFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFFFFFFFFFBBF3FFBD72EDFF761CEDFFFFFFFFFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF2472F9FF9BDDFFFFDEFFFFFFFFFFF9FFFFFFFFFF9B4A
          EDFF501CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CF1FF244AF7FF76BBFFFFBDFFFFFFFFFF
          FCFFFFDDF7FF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CF3FF5098
          FCFFBDFFFFFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFBD72EDFFBD72EDFFBD72EDFFBD72EDFFBD72EDFFBD72
          EDFFBD72F3FF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFFFFFFFDEFFFFFFDEFFFFFFDEFFFFFFDEFFFFFFDEFF
          FFFFDEFFFFFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF9BDDFFFFFFDDFCFF9B72F7FF504AF7FF244AF7FF244A
          F7FF244AF7FF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CF1FF2472F9FF76BBFCFFDEDDF7FFBD72EDFF761C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF9B4AEDFF9B4AEDFF9B4AEDFF9B72F7FFBDBBFCFFFFFF
          F9FFDE98F1FF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFFFFCFFFFFFFCFFFFFFFCFFFFFFFCFFFFFFFCFFFFFF
          FFFFFFFFFFFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF2472F9FF2472F9FF2472F9FF2472F9FF2472F9FF2472
          F9FF2472F9FF241CEDFF241CEDFF241CEDFF241CEDFF9B4AEDFF9B4AEDFF9B4A
          EDFF9B4AEDFF9B4AEDFF9B4AEDFF9B4AEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFFDE98F1FFDE98F1FF761CEDFF241CEDFFBD98
          F1FFDE98F1FF241CEDFF241CEDFF241CEDFF241CEDFFFFFFFCFFFFFFFCFFFFFF
          FCFFFFFFFCFFFFFFFCFFFFFFFCFFFFFFFCFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFBBF3FFDEFFFFFFFFFFFFFFFFFFF9FF241CEDFF244A
          F7FFFFFFFFFF241CEDFF241CEDFF241CEDFF241CEDFFFFFFFFFF5098FCFF5098
          FCFFFFFFFFFF5098FCFF5098FCFF5098FCFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFFFFFFF244AF7FF76BBFFFFFFFFFFFF241CEDFF241C
          EDFFFFFFFFFF241CEDFF241CEDFF241CEDFF241CEDFFFFFFFFFF241CEDFF241C
          EDFFFFFFFFFFBD72EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFFFFFFF241CEDFF241CEDFFFFFFFFFFBD72EDFF761C
          EDFFFFFFFFFF241CEDFF241CEDFF241CEDFF241CEDFFFFFFFFFFDE98F1FFFFBB
          F3FFDEFFFFFFFFFFFFFFFFBBF3FF761CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFFFFFFF9B4AEDFF241CEDFFFFFFFFFFFFFFFFFFFFFF
          F9FF9BDDFFFF241CEDFF241CEDFF241CEDFF241CEDFF76BBFFFFDEFFFFFFDEFF
          FFFF244AF7FF5098FCFFDEFFFFFFFFFFF9FF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF5098FCFF5098F9FF241CEDFF2472F9FF76BBFFFF76BB
          FFFF241CF1FF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF244AF7FF244A
          F7FF241CEDFF241CEDFF244AF7FFBDFFFFFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFFBD72EDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFFBD72F3FF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF9B4AEDFF241CEDFFFFFFFFFFDE98F1FFDE98
          F1FFDE98F1FFDE98F1FFDE98F1FFFFFFFFFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFFFFFFFCFF241CEDFFFFFFFFFFDEFFFFFFDEFF
          FFFFDEFFFFFFDEFFFFFFDEFFFFFFFFFFFFFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF9B4AEDFFDE98F1FFFFBBF3FFDE98F1FF9B4A
          EDFF241CEDFF241CEDFF241CEDFF5098FCFF241CEDFFDEFFFFFF244AF7FF244A
          F7FF244AF7FF244AF7FF244AF7FFDEFFFFFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF9B4AEDFFFFFFFCFFDEFFFFFFBDFFFFFFDEFFFFFFFFFF
          FCFF9B4AEDFF241CEDFF241CEDFF241CEDFF241CEDFF244AF7FF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF244AF7FF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFFFFCFF76BBFFFF244AF7FF241CF3FF244AF7FF9BDD
          FFFFFFFFFCFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFFDE98F1FFDE98
          F1FF761CEDFF241CEDFFBD98F1FFDE98F1FF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFFFFFFF241CEDFF241CEDFFDE98F1FF241CEDFF241C
          F1FFFFFFFFFF241CEDFF241CEDFF241CEDFF241CEDFFFFBBF3FFDEFFFFFFFFFF
          FFFFFFFFF9FF241CEDFF244AF7FFFFFFFFFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFFFFFFF241CEDFF241CEDFFFFFFFFFFBD72EDFFBD72
          EDFFFFFFFFFF241CEDFF241CEDFF241CEDFF241CEDFFFFFFFFFF244AF7FF76BB
          FFFFFFFFFFFF241CEDFF241CEDFFFFFFFFFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFFFFFFFDE98F1FF241CEDFFFFFFFFFFFFFFFFFFFFFF
          FFFFDEFFFFFF241CEDFF241CEDFF241CEDFF241CEDFFFFFFFFFF241CEDFF241C
          EDFFFFFFFFFFBD72EDFF761CEDFFFFFFFFFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF2472F9FF2472F9FF241CEDFF2472F9FF2472F9FF2472
          F9FF244AF7FF241CEDFF241CEDFF241CEDFF241CEDFFFFFFFFFF9B4AEDFF241C
          EDFFFFFFFFFFFFFFFFFFFFFFF9FF9BDDFFFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF761CEDFFBD72EDFFDE98F1FFBD72EDFF761C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF5098FCFF5098F9FF241C
          EDFF2472F9FF76BBFFFF76BBFFFF241CF1FF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF761CEDFFFFFFF9FFFFFFFFFFDEFFFFFFFFFFFFFFFFFF
          F9FF761CEDFF241CEDFF241CEDFF241CEDFF241CEDFF9B4AEDFF9B4AEDFF9B4A
          EDFF9B4AEDFF9B4AEDFF9B4AEDFF9B4AEDFF241CEDFF241CEDFF241CEDFF241C
          EDFFFFBBF3FF241CEDFFFFFFF9FF9BDDFFFF2472F9FF244AF7FF2472F9FF9BDD
          FFFFFFFFF9FF241CEDFF241CEDFF241CEDFF241CEDFFFFFFFCFFFFFFFCFFFFFF
          FCFFFFFFFCFFFFFFFCFFFFFFFCFFFFFFFCFF241CEDFF241CEDFF241CEDFF241C
          EDFF76BBFFFF241CEDFFFFFFFFFF241CF1FF241CEDFF241CEDFF241CEDFF241C
          F1FFFFFFFFFF241CEDFF241CEDFF241CEDFF241CEDFF5098FCFF5098FCFF7698
          FCFFFFFFFFFF5098FCFF5098FCFF5098FCFF241CEDFF241CEDFF241CEDFF241C
          EDFF9B4AEDFF241CEDFFFFFFFFFF501CEDFF241CEDFF241CEDFF241CEDFF501C
          EDFFFFFFFFFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF761CEDFFFFDD
          F7FFDEFFFFFFBD72EDFF501CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFFDEFFFCFF241CEDFFBDFFFFFFFFDDF7FFBD72EDFF9B4AEDFFBD72EDFFFFDD
          F7FFBDFFFFFF241CEDFF241CEDFF241CEDFF241CEDFFBD72EDFFFFFFF9FF76BB
          FFFF244AF7FFBDFFFFFFFFDDF7FF9B4AEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF244AF7FF241CEDFF241CF3FFBDFFFFFFFFFFFFFFFFFFFCFFFFFFFFFFBDFF
          FFFF241CF3FF241CEDFF241CEDFF241CEDFF241CEDFFFFFFFFFF76BBFFFF241C
          EDFF241CEDFF241CF3FF9BDDFFFFFFFFFCFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CF3FF2472F9FF5098FCFF2472F9FF241C
          F3FF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF9BDDFFFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CF1FFBDFFFFFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFFDE98F1FFDE98F1FF761CEDFF241CEDFFBD98
          F1FFDE98F1FF241CEDFF241CEDFF241CEDFF241CEDFF241CF1FF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CF3FF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFBBF3FFDEFFFFFFFFFFFFFFFFFFF9FF241CEDFF244A
          F7FFFFFFFFFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFFFFFFF244AF7FF76BBFFFFFFFFFFFF241CEDFF241C
          EDFFFFFFFFFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFFFFFFF241CEDFF241CEDFFFFFFFFFFBD72EDFF761C
          EDFFFFFFFFFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFFFFFFF9B4AEDFF241CEDFFFFFFFFFFFFFFFFFFFFFF
          F9FF9BDDFFFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF5098FCFF5098F9FF241CEDFF2472F9FF76BBFFFF76BB
          FFFF241CF1FF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFDE98F1FF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFFFFFFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFFFFFFFDE98F1FFDE98F1FFDE98F1FFDE98F1FFDE98
          F1FFDE98F1FF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFFFFFFFBDFFFFFFBDFFFFFFBDFFFFFFBDFFFFFFBDFF
          FFFFBDFFFFFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFFFFFFF241CF3FF241CF3FF241CF3FF241CF3FF241C
          F3FF241CF3FF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFBDFFFFFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CF3FF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF9B4AEDFF9B4AEDFF9B4AEDFF9B4AEDFF9B4AEDFF9B4A
          EDFF9B4AEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFFFFCFFFFFFFCFFFFFFFCFFFFFFFCFFFFFFFCFFFFFF
          FCFFFFFFFCFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFFFFFFF5098FCFF5098FCFFFFFFFFFF5098FCFF5098
          FCFFFFFFFFFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFFFFFFF241CEDFF241CEDFFFFFFFFFF241CEDFF241C
          EDFFFFFFFFFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFFFFFFF241CEDFF241CEDFFFFFFFFFF241CEDFF241C
          EDFFFFFFFFFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF76BBFFFF241CEDFF241CEDFF2472F9FF241CEDFF241C
          EDFF76BBFFFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF9B4AEDFF9B4AEDFF9B4AEDFF9B4AEDFF9B4AEDFF9B4A
          EDFF9B4AEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFFFFCFFFFFFFCFFFFFFFCFFFFFFFCFFFFFFFCFFFFFF
          FCFFFFFFFCFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFFFFFFF5098FCFF5098FCFFFFFFFFFF5098FCFF5098
          FCFF5098FCFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFFFFFFF241CEDFF241CEDFFFFFFFFFFBD72EDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFFFFFFFDE98F1FFFFBBF3FFDEFFFFFFFFFFFFFFFFBB
          F3FF761CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF76BBFFFFDEFFFFFFDEFFFFFF244AF7FF5098FCFFDEFF
          FFFFFFFFF9FF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF244AF7FF244AF7FF241CEDFF241CEDFF244A
          F7FFBDFFFFFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFBD72EDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFFBD72F3FF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF9B4AEDFF241CEDFFFFFFFFFFDE98F1FFDE98F1FFDE98F1FFDE98F1FFDE98
          F1FFFFFFFFFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFFFFFFFCFF241CEDFFFFFFFFFFDEFFFFFFDEFFFFFFDEFFFFFFDEFFFFFFDEFF
          FFFFFFFFFFFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF5098FCFF241CEDFFDEFFFFFF244AF7FF244AF7FF244AF7FF244AF7FF244A
          F7FFDEFFFFFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF244AF7FF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF244AF7FF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF761CEDFF761CEDFF761CEDFF761CEDFF761CEDFF761C
          EDFF761CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFFFF9FFFFFFF9FFFFFFF9FFFFFFF9FFFFFFF9FFFFFF
          F9FFFFFFF9FF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF76BBFFFF76BBFFFF76BBFFFF76BBFFFF76BBFFFF76BB
          FFFFFFFFFFFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFFFFFFFFFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFFFFFFFFFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF9BDDFFFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF9B4AEDFF9B4AEDFF9B4AEDFF9B4AEDFF9B4AEDFF9B4A
          EDFF9B4AF1FF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFFFFCFFFFFFFCFFFFFFFCFFFFFFFCFFFFFFFCFFFFFF
          FCFFFFFFFCFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFFFFFFF5098FCFF5098FCFFFFFFFFFF5098FCFF5098
          FCFFFFFFFFFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFFFFFFF241CEDFF241CEDFFFFFFFFFF241CEDFF241C
          EDFFFFFFFFFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFFFFFFF241CEDFF241CEDFFFFFFFFFF241CEDFF241C
          EDFFFFFFFFFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF76BBFFFF241CEDFF241CEDFF2472F9FF241CEDFF241C
          EDFF76BBFFFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF9B4AEDFF9B4AEDFF9B4AEDFF9B4AEDFF9B4AEDFF9B4A
          EDFF9B4AEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFFFFCFFFFFFFCFFFFFFFCFFFFFFFCFFFFFFFCFFFFFF
          FCFFFFFFFCFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFBDFFFFFFDEDDFCFF9B98FCFF5098FCFF5098FCFF5098
          FCFF5098FCFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CF3FF5098FCFF9BDDF9FFFFBBF3FF9B4AEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF501CF1FFBDBBF9FFDEFFFCFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF761CEDFFBD72EDFFBDDDF7FF5098FCFF244AF7FF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFFFF9FFDEDDFCFFDE98F7FFDE98F1FFDE98F1FFDE98
          F1FFDE98F1FF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFDEFFFFFFDEFFFFFFDEFFFFFFDEFFFFFFDEFFFFFFDEFF
          FFFFDEFFFFFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF244AF7FF244AF7FF244AF7FF244AF7FF244AF7FF244A
          F7FF244AF7FF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF9B4AEDFF9B4AEDFF9B4AEDFF9B4AEDFF9B4AEDFF9B4A
          EDFF9B4AEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFFFFCFFFFFFFCFFFFFFFCFFFFFFFCFFFFFFFCFFFFFF
          FCFFFFFFFCFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFFFFFFF5098FCFF5098FCFFFFFFFFFF5098FCFF5098
          FCFFFFFFFFFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFFFFFFF241CEDFF241CEDFFFFFFFFFF241CEDFF241C
          EDFFFFFFFFFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFFFFFFF241CEDFF241CEDFFFFFFFFFF241CEDFF241C
          EDFFFFFFFFFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF76BBFFFF241CEDFF241CEDFF2472F9FF241CEDFF241C
          EDFF9BBBFFFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFDE98F1FF241CEDFF241CEDFF241CEDFF241CEDFFBD72
          EDFFFFDDF7FF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFFFFFFF241CEDFF241CEDFF761CEDFFFFBBF3FFFFFF
          FFFFFFFFFFFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFFFFFFF241CEDFFBD72EDFFFFFFF9FFFFFFFFFF76BB
          FFFFFFFFFFFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFFFFFFFFFBBF3FFFFFFFFFFBDFFFFFF2472F9FF241C
          EDFFFFFFFFFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFFFFFFFFFFFFFFFFFF76BBFFFF241CF3FF241CEDFF241C
          EDFFFFFFFFFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF76BBFFFF2472F9FF241CEDFF241CEDFF241CEDFF241C
          EDFF9BDDFFFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CF1FF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
          EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF}
      end>
  end
  object EkRTF1: TEkRTF
    InFile = 'RDP.rtf'
    OutFile = 'RDP.doc'
    TrueValue = 'True'
    FalseValue = 'False'
    UnicodeByDefault = False
    Charset = DEFAULT_CHARSET
    Lang = 0
    Options = [eoGraphicsBinary, eoDotAsColon]
    DisableControls = True
    Left = 40
    Top = 288
    VarDataTypes = {00000000}
  end
  object RTFDialog: TOpenDialog
    Left = 104
    Top = 296
  end
  object Matris: TcxImageList
    Height = 141
    Width = 24
    FormatVersion = 1
    DesignInfo = 15204776
    ImageInfo = <
      item
        Image.Data = {
          16350000424D16350000000000003600000028000000180000008D0000000100
          200000000000E034000000000000000000000000000000000000006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF005620FF004018FF004018FF004018FF004018FF004018FF004018FF0056
          20FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF002B10FF000000FF000000FF000000FF000000FF000000FF000000FF002B
          10FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF005620FF004018FF003915FF000E05FF001508FF003915FF004018FF0056
          20FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF004018FF000703FF000703FF000000FF000E05FF004018FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF003915FF000000FF00240DFF005D23FF004018FF000E05FF000000FF0039
          15FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF003915FF003915FF006B28FF006B28FF006B28FF006425FF003915FF0039
          15FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF004E1DFF003213FF0040
          18FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF004E1DFF003213FF000E05FF000000FF000703FF0039
          15FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF004018FF000E05FF000000FF000703FF00240DFF000000FF005620FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF002B10FF000703FF00240DFF004E1DFF005D23FF000000FF005D23FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF004E1DFF001D0BFF000000FF000000FF001508FF000000FF004E1DFF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF005620FF003915FF001508FF000000FF000000FF0039
          15FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF004E1DFF003213FF0039
          15FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF005620FF004018FF004018FF004018FF004018FF004018FF004018FF0056
          20FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF002B10FF000000FF000000FF000000FF000000FF000000FF000000FF002B
          10FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF002B10FF001D0BFF004018FF001D0BFF001D0BFF004018FF001D0BFF002B
          10FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF002B10FF001508FF004018FF001508FF00240DFF006B28FF00240DFF002B
          10FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF005620FF000703FF000000FF000E05FF000000FF000E05FF000000FF0040
          18FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF005620FF004018FF006425FF003915FF000E05FF002B10FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF005620FF004018FF004018FF004018FF004018FF00471BFF006425FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF002B10FF000000FF000000FF000000FF000000FF000000FF000E05FF0064
          25FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF005620FF004018FF004018FF004018FF004018FF003915FF000703FF0039
          15FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF002B10FF002B
          10FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006425FF005D23FF005D23FF005D23FF005D23FF005620FF000E05FF0032
          13FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF002B10FF000000FF000000FF000000FF000000FF000000FF000703FF005D
          23FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF004018FF002B10FF002B10FF002B10FF002B10FF003213FF005D23FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF005620FF004018FF004018FF004018FF004018FF004018FF004018FF0056
          20FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF002B10FF000000FF000000FF000000FF000000FF000000FF000000FF002B
          10FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF005620FF004018FF004018FF004018FF004018FF004018FF001D0BFF002B
          10FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF002B10FF002B
          10FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF004018FF0040
          18FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF005D23FF004018FF0040
          18FF004018FF004018FF004018FF004018FF00471BFF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF004018FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000E05FF006B28FF006B28FF006B
          28FF005620FF004018FF004018FF004018FF004018FF004018FF004018FF0056
          20FF006B28FF006B28FF006B28FF006B28FF006B28FF004018FF000E05FF0040
          18FF003213FF000E05FF004018FF004018FF00471BFF006B28FF006B28FF006B
          28FF002B10FF000000FF000000FF000000FF000000FF000000FF000000FF002B
          10FF006B28FF006B28FF006B28FF006B28FF006B28FF004018FF000703FF0056
          20FF003213FF000000FF002B10FF004E1DFF006B28FF006B28FF006B28FF006B
          28FF002B10FF001D0BFF004018FF001D0BFF001D0BFF004018FF001D0BFF002B
          10FF006B28FF006B28FF006B28FF006B28FF006B28FF005D23FF000703FF0000
          00FF000000FF00240DFF000703FF000000FF001D0BFF006B28FF006B28FF006B
          28FF002B10FF002B10FF006B28FF002B10FF002B10FF006B28FF002B10FF002B
          10FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF005620FF002B
          10FF004018FF006B28FF005D23FF003915FF001D0BFF006B28FF006B28FF006B
          28FF002B10FF002B10FF006B28FF004018FF004018FF006B28FF002B10FF002B
          10FF006B28FF006B28FF006B28FF006B28FF00471BFF005D23FF004018FF0040
          18FF004018FF004018FF004018FF004018FF00471BFF006B28FF006B28FF006B
          28FF006425FF006425FF006B28FF006B28FF006B28FF006B28FF006425FF0064
          25FF006B28FF006B28FF006B28FF005D23FF000000FF001D0BFF000000FF0000
          00FF000000FF000000FF000000FF000000FF000E05FF006B28FF006B28FF006B
          28FF005620FF004018FF004018FF004018FF004018FF004018FF004018FF0056
          20FF006B28FF006B28FF006B28FF006B28FF00471BFF005D23FF004018FF0040
          18FF004018FF004018FF004018FF004018FF00471BFF006B28FF006B28FF006B
          28FF002B10FF000000FF000000FF000000FF000000FF000000FF000000FF002B
          10FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF003915FF000E
          05FF00240DFF006B28FF006B28FF00240DFF003915FF006B28FF006B28FF006B
          28FF002B10FF001D0BFF004018FF004018FF004018FF004018FF001D0BFF002B
          10FF006B28FF006B28FF006B28FF006B28FF006B28FF005620FF000000FF000E
          05FF000000FF002B10FF006B28FF003915FF001508FF006B28FF006B28FF006B
          28FF002B10FF00240DFF006B28FF006B28FF006B28FF006B28FF00240DFF002B
          10FF006B28FF006B28FF006B28FF006B28FF006B28FF004018FF000E05FF006B
          28FF001D0BFF000703FF005D23FF003915FF000E05FF006B28FF006B28FF006B
          28FF003915FF000703FF003915FF005D23FF005D23FF003915FF000703FF0047
          1BFF006B28FF006B28FF006B28FF006B28FF006B28FF004E1DFF000703FF005D
          23FF004E1DFF000000FF000703FF000703FF002B10FF006B28FF006B28FF006B
          28FF006B28FF00240DFF000000FF000000FF000000FF000000FF00240DFF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF00471BFF005D
          23FF006B28FF003915FF000E05FF002B10FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF003915FF002B10FF002B10FF004018FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF005D23FF004018FF0040
          18FF004018FF004018FF004018FF004018FF00471BFF006B28FF006B28FF0047
          1BFF005620FF004018FF004018FF004018FF004018FF004018FF004018FF0056
          20FF006B28FF006B28FF006B28FF006B28FF006B28FF004018FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000E05FF006B28FF004018FF0000
          00FF001D0BFF000000FF000000FF000000FF000000FF000000FF000000FF002B
          10FF006B28FF006B28FF006B28FF006B28FF006B28FF005D23FF004018FF0040
          18FF001508FF000E05FF003915FF004018FF00471BFF006B28FF006B28FF0047
          1BFF005620FF004018FF004018FF004018FF004018FF004018FF004018FF0056
          20FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF005620FF0015
          08FF000703FF000703FF000703FF003915FF006B28FF006B28FF006B28FF006B
          28FF005620FF004018FF004018FF004018FF004018FF004018FF004018FF0056
          20FF006B28FF006B28FF006B28FF006B28FF006B28FF00471BFF000703FF000E
          05FF005620FF005620FF001D0BFF000000FF001D0BFF006B28FF006B28FF006B
          28FF002B10FF000000FF000000FF000000FF000000FF000000FF000000FF002B
          10FF006B28FF006B28FF006B28FF006B28FF006B28FF00471BFF002B10FF0064
          25FF006B28FF006B28FF006B28FF004018FF00240DFF006B28FF006B28FF006B
          28FF005620FF004018FF004018FF004018FF004018FF004018FF001D0BFF002B
          10FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF002B10FF002B
          10FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF005620FF004018FF004018FF004018FF004018FF004018FF004018FF0039
          15FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF002B10FF000000FF000000FF000000FF000000FF000000FF000000FF002B
          10FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF002B10FF001D0BFF004018FF001D0BFF001D0BFF004018FF001D0BFF002B
          10FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF002B10FF002B10FF006B28FF002B10FF002B10FF006B28FF002B10FF002B
          10FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF002B10FF002B10FF006B28FF004018FF004018FF006B28FF002B10FF002B
          10FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006425FF006425FF006B28FF006B28FF006B28FF006B28FF006425FF0064
          25FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF005620FF004018FF004018FF004018FF004018FF004018FF004018FF0056
          20FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF002B10FF000000FF000000FF000000FF000000FF000000FF000000FF002B
          10FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF002B10FF001D0BFF004018FF001D0BFF001D0BFF004018FF001D0BFF002B
          10FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF002B10FF001508FF004018FF001508FF00240DFF006B28FF00240DFF002B
          10FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF005620FF000703FF000000FF000E05FF000000FF000E05FF000000FF0040
          18FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF005620FF004018FF006425FF003915FF000E05FF002B10FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF0047
          1BFF005620FF004018FF004018FF004018FF004018FF004018FF004018FF0056
          20FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF004018FF0000
          00FF001D0BFF000000FF000000FF000000FF000000FF000000FF000000FF002B
          10FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF0047
          1BFF005620FF004018FF004018FF004018FF004018FF004018FF004018FF0056
          20FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF005620FF004018FF004018FF004018FF004018FF004018FF004018FF0056
          20FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF002B10FF000000FF000000FF000000FF000000FF000000FF000000FF002B
          10FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF005620FF004018FF004018FF004018FF004018FF004018FF001D0BFF002B
          10FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF002B10FF002B
          10FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF0047
          1BFF005620FF004018FF004018FF004018FF004018FF004018FF004018FF0039
          15FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF004018FF0000
          00FF001D0BFF000000FF000000FF000000FF000000FF000000FF000000FF002B
          10FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF0047
          1BFF005620FF004018FF004018FF004018FF004018FF004018FF004018FF0056
          20FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF005620FF004018FF004018FF004018FF004018FF004018FF004018FF0056
          20FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF002B10FF000000FF000000FF000000FF000000FF000000FF000000FF002B
          10FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF002B10FF001D0BFF004018FF001D0BFF001D0BFF004018FF004018FF0056
          20FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF002B10FF001D0BFF005D23FF001D0BFF000703FF003915FF005620FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF004018FF000000FF000000FF000703FF00240DFF000000FF000000FF0039
          15FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF004018FF002B10FF005620FF006B28FF004E1DFF002B10FF0039
          15FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B
          28FF006B28FF006B28FF006B28FF006B28FF006B28FF006B28FF}
      end
      item
        Image.Data = {
          16350000424D16350000000000003600000028000000180000008D0000000100
          200000000000E0340000000000000000000000000000000000000000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF3333FFFF6666FFFF6666FFFF6666FFFF6666FFFF6666FFFF6666FFFF3333
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF9999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9999
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF3333FFFF6666FFFF7777FFFFDDDDFFFFCCCCFFFF7777FFFF6666FFFF3333
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF6666FFFFEEEEFFFFEEEEFFFFFFFFFFFFDDDDFFFF6666FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF7777FFFFFFFFFFFFAAAAFFFF2222FFFF6666FFFFDDDDFFFFFFFFFFFF7777
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF7777FFFF7777FFFF0000FFFF0000FFFF0000FFFF1111FFFF7777FFFF7777
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF4444FFFF8888FFFF6666
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF4444FFFF8888FFFFDDDDFFFFFFFFFFFFEEEEFFFF7777
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF6666FFFFDDDDFFFFFFFFFFFFEEEEFFFFAAAAFFFFFFFFFFFF3333FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF9999FFFFEEEEFFFFAAAAFFFF4444FFFF2222FFFFFFFFFFFF2222FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF4444FFFFBBBBFFFFFFFFFFFFFFFFFFFFCCCCFFFFFFFFFFFF4444FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF3333FFFF7777FFFFCCCCFFFFFFFFFFFFFFFFFFFF7777
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF4444FFFF8888FFFF7777
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF3333FFFF6666FFFF6666FFFF6666FFFF6666FFFF6666FFFF6666FFFF3333
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF9999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9999
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF9999FFFFBBBBFFFF6666FFFFBBBBFFFFBBBBFFFF6666FFFFBBBBFFFF9999
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF9999FFFFCCCCFFFF6666FFFFCCCCFFFFAAAAFFFF0000FFFFAAAAFFFF9999
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF3333FFFFEEEEFFFFFFFFFFFFDDDDFFFFFFFFFFFFDDDDFFFFFFFFFFFF6666
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF3333FFFF6666FFFF1111FFFF7777FFFFDDDDFFFF9999FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF3333FFFF6666FFFF6666FFFF6666FFFF6666FFFF5555FFFF1111FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF9999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDFFFF1111
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF3333FFFF6666FFFF6666FFFF6666FFFF6666FFFF7777FFFFEEEEFFFF7777
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF9999FFFF9999
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF1111FFFF2222FFFF2222FFFF2222FFFF2222FFFF3333FFFFDDDDFFFF8888
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF9999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEFFFF2222
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF6666FFFF9999FFFF9999FFFF9999FFFF9999FFFF8888FFFF2222FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF3333FFFF6666FFFF6666FFFF6666FFFF6666FFFF6666FFFF6666FFFF3333
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF9999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9999
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF3333FFFF6666FFFF6666FFFF6666FFFF6666FFFF6666FFFFBBBBFFFF9999
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF9999FFFF9999
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF6666FFFF6666
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF2222FFFF6666FFFF6666
          FFFF6666FFFF6666FFFF6666FFFF6666FFFF5555FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF6666FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDFFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF6666FFFFDDDDFFFF6666
          FFFF8888FFFFDDDDFFFF6666FFFF6666FFFF5555FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF6666FFFFEEEEFFFF3333
          FFFF8888FFFFFFFFFFFF9999FFFF4444FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF3333FFFF6666FFFF6666FFFF6666FFFF6666FFFF6666FFFF6666FFFF3333
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF2222FFFFEEEEFFFFFFFF
          FFFFFFFFFFFFAAAAFFFFEEEEFFFFFFFFFFFFBBBBFFFF0000FFFF0000FFFF0000
          FFFF9999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9999
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF3333FFFF9999
          FFFF6666FFFF0000FFFF2222FFFF7777FFFFBBBBFFFF0000FFFF0000FFFF0000
          FFFF9999FFFFBBBBFFFF6666FFFFBBBBFFFFBBBBFFFF6666FFFFBBBBFFFF9999
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF5555FFFF2222FFFF6666FFFF6666
          FFFF6666FFFF6666FFFF6666FFFF6666FFFF5555FFFF0000FFFF0000FFFF0000
          FFFF9999FFFF9999FFFF0000FFFF9999FFFF9999FFFF0000FFFF9999FFFF9999
          FFFF0000FFFF0000FFFF0000FFFF2222FFFFFFFFFFFFBBBBFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDFFFF0000FFFF0000FFFF0000
          FFFF9999FFFF9999FFFF0000FFFF6666FFFF6666FFFF0000FFFF9999FFFF9999
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF5555FFFF2222FFFF6666FFFF6666
          FFFF6666FFFF6666FFFF6666FFFF6666FFFF5555FFFF0000FFFF0000FFFF0000
          FFFF3333FFFF7777FFFF6666FFFF6666FFFF6666FFFF6666FFFF7777FFFF3333
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF7777FFFFDDDD
          FFFFAAAAFFFF0000FFFF0000FFFFAAAAFFFF7777FFFF0000FFFF0000FFFF0000
          FFFF9999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9999
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF3333FFFFFFFFFFFFDDDD
          FFFFFFFFFFFF9999FFFF0000FFFF7777FFFFCCCCFFFF0000FFFF0000FFFF0000
          FFFF9999FFFFBBBBFFFF6666FFFF6666FFFF6666FFFF6666FFFFBBBBFFFF9999
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF6666FFFFDDDDFFFF0000
          FFFFBBBBFFFFEEEEFFFF2222FFFF7777FFFFDDDDFFFF0000FFFF0000FFFF0000
          FFFF9999FFFFAAAAFFFF0000FFFF0000FFFF0000FFFF0000FFFFAAAAFFFF9999
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF4444FFFFEEEEFFFF2222
          FFFF4444FFFFFFFFFFFFEEEEFFFFEEEEFFFF9999FFFF0000FFFF0000FFFF0000
          FFFF7777FFFFEEEEFFFF7777FFFF2222FFFF2222FFFF7777FFFFEEEEFFFF5555
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF5555FFFF2222
          FFFF0000FFFF7777FFFFDDDDFFFF9999FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFFAAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAFFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF2222FFFF6666FFFF6666
          FFFF6666FFFF6666FFFF6666FFFF6666FFFF5555FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF7777FFFF9999FFFF9999FFFF6666FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF6666FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDFFFF0000FFFF0000FFFF5555
          FFFF3333FFFF6666FFFF6666FFFF6666FFFF6666FFFF6666FFFF6666FFFF3333
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF2222FFFF6666FFFF6666
          FFFFCCCCFFFFDDDDFFFF7777FFFF6666FFFF5555FFFF0000FFFF6666FFFFFFFF
          FFFFBBBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9999
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF3333FFFFCCCC
          FFFFEEEEFFFFEEEEFFFFEEEEFFFF7777FFFF0000FFFF0000FFFF0000FFFF5555
          FFFF3333FFFF6666FFFF6666FFFF6666FFFF6666FFFF6666FFFF6666FFFF3333
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF5555FFFFEEEEFFFFDDDD
          FFFF3333FFFF3333FFFFBBBBFFFFFFFFFFFFBBBBFFFF0000FFFF0000FFFF0000
          FFFF3333FFFF6666FFFF6666FFFF6666FFFF6666FFFF6666FFFF6666FFFF3333
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF5555FFFF9999FFFF1111
          FFFF0000FFFF0000FFFF0000FFFF6666FFFFAAAAFFFF0000FFFF0000FFFF0000
          FFFF9999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9999
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF3333FFFF6666FFFF6666FFFF6666FFFF6666FFFF6666FFFFBBBBFFFF9999
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF9999FFFF9999
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF3333FFFF6666FFFF6666FFFF6666FFFF6666FFFF6666FFFF6666FFFF7777
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF9999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9999
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF9999FFFFBBBBFFFF6666FFFFBBBBFFFFBBBBFFFF6666FFFFBBBBFFFF9999
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF9999FFFF9999FFFF0000FFFF9999FFFF9999FFFF0000FFFF9999FFFF9999
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF9999FFFF9999FFFF0000FFFF6666FFFF6666FFFF0000FFFF9999FFFF9999
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF1111FFFF1111FFFF0000FFFF0000FFFF0000FFFF0000FFFF1111FFFF1111
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF2222FFFF6666FFFF6666FFFF6666FFFF6666FFFF6666FFFF6666FFFF3333
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF9999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9999
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF9999FFFFFFFFFFFFCCCCFFFF9999FFFF7777FFFF6666FFFF6666FFFF3333
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF2222FFFFAAAAFFFFDDDDFFFFFFFFFFFFEEEEFFFFAAAAFFFF6666FFFF1111
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF4444FFFF9999FFFFEEEEFFFFFFFFFFFF9999
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF1111FFFF7777FFFFBBBBFFFFEEEEFFFFEEEEFFFFCCCCFFFF4444
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF7777FFFFEEEEFFFFEEEEFFFFBBBBFFFF7777FFFF1111FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF9999FFFFEEEEFFFFDDDDFFFFDDDDFFFFDDDDFFFFDDDDFFFFDDDDFFFF7777
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF7777FFFFDDDDFFFFDDDDFFFFDDDDFFFFDDDDFFFFDDDDFFFFDDDDFFFF7777
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF3333FFFF6666FFFF6666FFFF6666FFFF6666FFFF6666FFFF6666FFFF3333
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF9999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9999
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF9999FFFFBBBBFFFF6666FFFFBBBBFFFFBBBBFFFF6666FFFFBBBBFFFF9999
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF9999FFFF9999FFFF0000FFFF9999FFFF9999FFFF0000FFFF9999FFFF9999
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF9999FFFF9999FFFF0000FFFF6666FFFF6666FFFF0000FFFF9999FFFF9999
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF1111FFFF1111FFFF0000FFFF0000FFFF0000FFFF0000FFFF1111FFFF1111
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF7777FFFF7777FFFF0000FFFF0000FFFF0000FFFF4444FFFFCCCCFFFF7777
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF9999FFFF9999FFFF0000FFFF2222FFFF9999FFFFFFFFFFFFFFFFFFFF9999
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF9999FFFF9999FFFF7777FFFFEEEEFFFFFFFFFFFF9999FFFFAAAAFFFF9999
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF9999FFFFEEEEFFFFFFFFFFFFBBBBFFFF4444FFFF0000FFFF9999FFFF9999
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF7777FFFFCCCCFFFF6666FFFF0000FFFF0000FFFF0000FFFF9999FFFF9999
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF1111FFFF1111
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF}
      end
      item
        Image.Data = {
          16350000424D16350000000000003600000028000000180000008D0000000100
          200000000000E03400000000000000000000000000000000000000FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00CCC5FF009994FF009994FF009994FF009994FF009994FF009994FF00CC
          C5FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF006662FF000000FF000000FF000000FF000000FF000000FF000000FF0066
          62FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF006662FF004442FF009994FF009994FF009994FF009994FF004442FF0066
          62FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF006662FF005552FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF005552FF0066
          62FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF008883FF001110FF008883FF00DDD5FF00DDD5FF008883FF001110FF00AA
          A4FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF005552FF000000FF000000FF000000FF000000FF005552FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF008883FF006662FF006662FF009994FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00AA
          A4FF00CCC5FF009994FF009994FF009994FF009994FF009994FF009994FF00CC
          C5FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF009994FF0000
          00FF004442FF000000FF000000FF000000FF000000FF000000FF000000FF0066
          62FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00AA
          A4FF00CCC5FF009994FF009994FF009994FF009994FF009994FF009994FF00CC
          C5FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00CCC5FF009994FF009994FF009994FF009994FF009994FF009994FF00CC
          C5FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF006662FF000000FF000000FF000000FF000000FF000000FF000000FF0066
          62FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00CCC5FF009994FF008883FF002221FF003331FF008883FF009994FF00CC
          C5FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF009994FF001110FF001110FF000000FF002221FF009994FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF008883FF000000FF005552FF00DDD5FF009994FF002221FF000000FF0088
          83FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF008883FF008883FF00FFF6FF00FFF6FF00FFF6FF00EEE6FF008883FF0088
          83FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00CCC5FF009994FF009994FF009994FF009994FF009994FF009994FF00CC
          C5FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF006662FF000000FF000000FF000000FF000000FF000000FF000000FF0066
          62FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00CCC5FF009994FF008883FF002221FF003331FF008883FF009994FF00CC
          C5FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF009994FF001110FF001110FF000000FF002221FF009994FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF008883FF000000FF005552FF00DDD5FF009994FF002221FF000000FF0088
          83FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF008883FF008883FF00FFF6FF00FFF6FF00FFF6FF00EEE6FF008883FF0088
          83FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00BBB4FF007773FF0099
          94FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00BBB4FF007773FF002221FF000000FF001110FF0088
          83FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF009994FF002221FF000000FF001110FF005552FF000000FF00CCC5FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF006662FF001110FF005552FF00BBB4FF00DDD5FF000000FF00DDD5FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00BBB4FF004442FF000000FF000000FF003331FF000000FF00BBB4FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00CCC5FF008883FF003331FF000000FF000000FF0088
          83FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00DDD5FF009994FF0099
          94FF009994FF009994FF009994FF009994FF00AAA4FF00FFF6FF00FFF6FF00FF
          F6FF00EEE6FF00EEE6FF00FFF6FF00FFF6FF00FFF6FF00BBB4FF007773FF0088
          83FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF009994FF000000FF0000
          00FF000000FF000000FF000000FF000000FF002221FF00FFF6FF00FFF6FF00FF
          F6FF006662FF006662FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF009994FF002221FF0099
          94FF007773FF002221FF009994FF009994FF00AAA4FF00FFF6FF00FFF6FF00FF
          F6FF006662FF006662FF00DDD5FF00DDD5FF00DDD5FF00DDD5FF00DDD5FF00EE
          E6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF009994FF001110FF00CC
          C5FF007773FF000000FF006662FF00BBB4FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF006662FF000000FF000000FF000000FF000000FF000000FF000000FF0066
          62FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00DDD5FF001110FF0000
          00FF000000FF005552FF001110FF000000FF004442FF00FFF6FF00FFF6FF00FF
          F6FF006662FF003331FF006662FF006662FF006662FF006662FF006662FF0099
          94FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00CCC5FF0066
          62FF009994FF00FFF6FF00DDD5FF008883FF004442FF00FFF6FF00FFF6FF00FF
          F6FF006662FF006662FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00AAA4FF00DDD5FF009994FF0099
          94FF009994FF009994FF009994FF009994FF00AAA4FF00FFF6FF00FFF6FF00FF
          F6FF008883FF009994FF009994FF009994FF009994FF009994FF009994FF00CC
          C5FF00FFF6FF00FFF6FF00FFF6FF00DDD5FF000000FF004442FF000000FF0000
          00FF000000FF000000FF000000FF000000FF002221FF00FFF6FF00FFF6FF00FF
          F6FF006662FF000000FF000000FF000000FF000000FF000000FF000000FF0066
          62FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00AAA4FF00DDD5FF009994FF0099
          94FF009994FF009994FF009994FF009994FF00AAA4FF00FFF6FF00FFF6FF00FF
          F6FF006662FF004442FF009994FF004442FF004442FF009994FF004442FF0066
          62FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF008883FF0022
          21FF005552FF00FFF6FF00FFF6FF005552FF008883FF00FFF6FF00FFF6FF00FF
          F6FF006662FF006662FF00FFF6FF006662FF006662FF00FFF6FF006662FF0066
          62FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00CCC5FF000000FF0022
          21FF000000FF006662FF00FFF6FF008883FF003331FF00FFF6FF00FFF6FF00FF
          F6FF006662FF006662FF00FFF6FF009994FF009994FF00FFF6FF006662FF0066
          62FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF009994FF002221FF00FF
          F6FF004442FF001110FF00DDD5FF008883FF002221FF00FFF6FF00FFF6FF00FF
          F6FF00EEE6FF00EEE6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00EEE6FF00EE
          E6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00BBB4FF001110FF00DD
          D5FF00BBB4FF000000FF001110FF001110FF006662FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00AAA4FF00DD
          D5FF00FFF6FF008883FF002221FF006662FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00DDD5FF009994FF0099
          94FF009994FF009994FF009994FF009994FF00AAA4FF00FFF6FF00FFF6FF00FF
          F6FF00CCC5FF009994FF009994FF009994FF009994FF009994FF009994FF00CC
          C5FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF009994FF000000FF0000
          00FF000000FF000000FF000000FF000000FF002221FF00FFF6FF00FFF6FF00FF
          F6FF006662FF000000FF000000FF000000FF000000FF000000FF000000FF0066
          62FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00DDD5FF009994FF0099
          94FF003331FF002221FF008883FF009994FF00AAA4FF00FFF6FF00FFF6FF00FF
          F6FF006662FF004442FF009994FF009994FF009994FF009994FF004442FF0066
          62FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00CCC5FF0033
          31FF001110FF001110FF001110FF008883FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF006662FF005552FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF005552FF0066
          62FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00AAA4FF001110FF0022
          21FF00CCC5FF00CCC5FF004442FF000000FF004442FF00FFF6FF00FFF6FF00FF
          F6FF008883FF001110FF008883FF00DDD5FF00DDD5FF008883FF001110FF00AA
          A4FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00AAA4FF006662FF00EE
          E6FF00FFF6FF00FFF6FF00FFF6FF009994FF005552FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF005552FF000000FF000000FF000000FF000000FF005552FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF008883FF006662FF006662FF009994FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00CCC5FF009994FF009994FF009994FF009994FF009994FF009994FF00CC
          C5FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF006662FF000000FF000000FF000000FF000000FF000000FF000000FF0066
          62FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF006662FF004442FF009994FF004442FF004442FF009994FF004442FF0066
          62FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF006662FF006662FF00FFF6FF006662FF006662FF00FFF6FF006662FF0066
          62FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF006662FF006662FF00FFF6FF009994FF009994FF00FFF6FF006662FF0066
          62FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00EEE6FF00EEE6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00EEE6FF00EE
          E6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00AAA4FF006662FF006662FF009994FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00EEE6FF00FF
          F6FF00FFF6FF006662FF000000FF000000FF000000FF000000FF005552FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF004442FF0055
          52FF00AAA4FF000000FF007773FF00DDD5FF00DDD5FF008883FF001110FF00AA
          A4FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF0022
          21FF004442FF004442FF00FFF6FF009994FF009994FF00FFF6FF005552FF0066
          62FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF007773FF0033
          31FF005552FF006662FF00FFF6FF006662FF006662FF00DDD5FF005552FF0066
          62FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00AAA4FF00DD
          D5FF008883FF003331FF00FFF6FF006662FF000000FF000000FF000000FF0088
          83FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00DDD5FF006662FF00EEE6FF009994FF006662FF006662FF006662FF00DD
          D5FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00CCC5FF009994FF009994FF009994FF009994FF009994FF009994FF00CC
          C5FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF006662FF000000FF000000FF000000FF000000FF000000FF000000FF0066
          62FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF006662FF004442FF009994FF004442FF004442FF009994FF004442FF0066
          62FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF006662FF006662FF00FFF6FF006662FF006662FF00FFF6FF006662FF0066
          62FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF006662FF006662FF00FFF6FF009994FF009994FF00FFF6FF006662FF0066
          62FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00CCC5FF008883FF009994FF009994FF009994FF009994FF008883FF00CC
          C5FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF006662FF000000FF000000FF000000FF000000FF000000FF000000FF0066
          62FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF006662FF004442FF009994FF004442FF004442FF009994FF009994FF00CC
          C5FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF006662FF004442FF00DDD5FF004442FF001110FF008883FF00CCC5FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF009994FF000000FF000000FF001110FF005552FF000000FF000000FF0088
          83FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF009994FF006662FF00CCC5FF00FFF6FF00BBB4FF006662FF0088
          83FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FF
          F6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF00FFF6FF}
      end>
  end
end
