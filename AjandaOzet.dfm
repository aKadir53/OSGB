object frmAjandaOzet: TfrmAjandaOzet
  Left = 1
  Top = 1
  Caption = 'Ajanda '#214'zet'
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
  object AjandaGrid: TcxGridKadir
    Left = 16
    Top = 168
    Width = 753
    Height = 225
    TabOrder = 0
    ExceleGonder = False
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
    object AjandaGridSatirlar: TcxGridDBBandedTableView
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
      OptionsView.CellAutoHeight = True
      Styles.Group = cxStyle5
      Bands = <
        item
          FixedKind = fkLeft
          Styles.Header = cxStyle8
        end>
      object AjandaGridSatirlarLocation: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Location'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object AjandaGridSatirlartanimi: TcxGridDBBandedColumn
        DataBinding.FieldName = 'tanimi'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object AjandaGridSatirlarILCE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ILCE'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object AjandaGridSatirlarHizmetSure: TcxGridDBBandedColumn
        DataBinding.FieldName = 'HizmetSure'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object AjandaGridSatirlarGirisSaat: TcxGridDBBandedColumn
        DataBinding.FieldName = 'GirisSaat'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object AjandaGridSatirlarCikisSaat: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CikisSaat'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object AjandaGridSatirlarPlanlananTarih: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PlanlananTarih'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 75
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object AjandaGridSatirlarResourceId: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ResourceId'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object AjandaGridSatirlarADISOYADI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ADISOYADI'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Visible = False
        GroupIndex = 0
        HeaderAlignmentHorz = taCenter
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object AjandaGridSatirlarColumn1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Message'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.Alignment = taCenter
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object AjandaGridSatirlarColumn2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Caption'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.Alignment = taCenter
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
    end
    object AjandaGridLevel1: TcxGridLevel
      GridView = AjandaGridSatirlar
    end
  end
  object DataSource1: TDataSource
    DataSet = ADO_RiskDetay
    Left = 104
    Top = 82
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
    Top = 24
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 16
    Top = 104
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
    Left = 176
    Top = 80
    object E1: TMenuItem
      Tag = -20
      Caption = 'Yazd'#305'r'
      ImageIndex = 28
      OnClick = cxButtonCClick
    end
  end
end
