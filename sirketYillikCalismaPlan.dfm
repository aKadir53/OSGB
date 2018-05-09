object frmSirketYillikCalismaPlan: TfrmSirketYillikCalismaPlan
  Left = 1
  Top = 1
  Caption = 'Saha G'#246'zetim'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object YillikPlanGrid: TcxGridKadir
    Left = -72
    Top = 24
    Width = 1161
    Height = 297
    TabOrder = 0
    LookAndFeel.NativeStyle = False
    ExceleGonder = False
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
    object YillikPlanSatirlar: TcxGridDBBandedTableView
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
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NewItemRow.SeparatorColor = 8454143
      NewItemRow.Visible = True
      OptionsSelection.InvertSelect = False
      OptionsView.CellAutoHeight = True
      OptionsView.DataRowHeight = 23
      OptionsView.GroupByBox = False
      Styles.NewItemRowInfoText = cxStyle10
      Bands = <
        item
          Caption = 'Planlama'
          Styles.Header = cxStyle7
          Width = 240
        end
        item
          Caption = 'Ger'#231'ekle'#351'me'
          Styles.Background = cxStyle11
          Styles.Header = cxStyle9
          Width = 240
        end
        item
          Caption = 'Y'#305'll'#305'k '#199'al'#305#351'ma Plan'#305' Faaliyetleri'
          FixedKind = fkLeft
          Styles.Header = cxStyle8
          Width = 340
        end
        item
          Caption = 'Sorumluluk'
        end
        item
          Caption = 'Sorumluluk'
        end>
      object YillikPlanSatirlarFirmaYillikCalismaPlanID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FirmaYillikCalismaPlanID'
        Visible = False
        Width = 20
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object YillikPlanSatirlarid: TcxGridDBBandedColumn
        DataBinding.FieldName = 'id'
        Visible = False
        Width = 20
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object YillikPlanSatirlarfaliyetid: TcxGridDBBandedColumn
        Caption = 'Faaliyet Konular'#305
        DataBinding.FieldName = 'faliyetid'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Properties.DropDownRows = 20
        Properties.Items = <
          item
            ImageIndex = 0
          end>
        Properties.MultiLineText = True
        Options.Editing = False
        Styles.Content = cxStyle8
        Width = 282
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object YillikPlanSatirlarperyod: TcxGridDBBandedColumn
        Caption = 'Peryot'
        DataBinding.FieldName = 'peryod'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.DropDownRows = 15
        Properties.ImageAlign = iaRight
        Properties.Items = <
          item
            Description = '3 AY'
            ImageIndex = 0
            Value = 1
          end
          item
            Description = '1 YIL'
            Value = 2
          end
          item
            Description = 'HER YEN'#304' MAK'#304'NA ALIMINDA'
            Value = 3
          end
          item
            Description = 'UYGUN G'#214'R'#220'LD'#220#286#220'NDE'
            Value = 4
          end
          item
            Description = 'M'#304'N.1/ YIL'
            Value = 5
          end
          item
            Description = 'GEREKT'#304#286#304'NDE'
            Value = 6
          end
          item
            Description = 'AC'#304'L DURUM EK'#304'B'#304'N'#304'N DE'#286#304#350'MES'#304' DURUMUNDA'
            Value = 7
          end
          item
            Description = '1 YI VE '#304#350'E YEN'#304' BA'#350'LAYANLAR '#304#199#304'N.'
            Value = 8
          end
          item
            Description = #304#350'E G'#304'R'#304#350' S'#220'REC'#304'NDE'
            Value = 9
          end
          item
            Description = #304'LG'#304'L'#304' MEVZUAT GEREKL'#304'L'#350#304'KLER'#304'NDE'
            Value = 10
          end
          item
            Description = 'R'#304'SK DE'#286'ERLEND'#304'RME SONRASI'
            Value = 11
          end
          item
            Description = 'HER Z'#304'YARETTE'
            Value = 12
          end>
        Width = 58
        Position.BandIndex = 2
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object YillikPlanSatirlarocak: TcxGridDBBandedColumn
        Caption = '01'
        DataBinding.FieldName = 'ocak'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ImageAlign = iaRight
        Properties.Items = <
          item
            Description = 'P'
            Value = 1
          end
          item
            Value = 0
          end>
        Styles.Content = cxStyle7
        Width = 42
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object YillikPlanSatirlarsubat: TcxGridDBBandedColumn
        Caption = '02'
        DataBinding.FieldName = 'subat'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Items = <>
        Styles.Content = cxStyle7
        Width = 20
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object YillikPlanSatirlarmart: TcxGridDBBandedColumn
        Caption = '03'
        DataBinding.FieldName = 'mart'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Items = <>
        Styles.Content = cxStyle7
        Width = 20
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object YillikPlanSatirlarnisan: TcxGridDBBandedColumn
        Caption = '04'
        DataBinding.FieldName = 'nisan'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Items = <>
        Styles.Content = cxStyle7
        Width = 20
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object YillikPlanSatirlarmayis: TcxGridDBBandedColumn
        Caption = '05'
        DataBinding.FieldName = 'mayis'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Items = <>
        Styles.Content = cxStyle7
        Width = 20
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object YillikPlanSatirlarhaziran: TcxGridDBBandedColumn
        Caption = '06'
        DataBinding.FieldName = 'haziran'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Items = <>
        Styles.Content = cxStyle7
        Width = 20
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object YillikPlanSatirlartemmuz: TcxGridDBBandedColumn
        Caption = '07'
        DataBinding.FieldName = 'temmuz'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Items = <>
        Styles.Content = cxStyle7
        Width = 21
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object YillikPlanSatirlaragustos: TcxGridDBBandedColumn
        Caption = '08'
        DataBinding.FieldName = 'agustos'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Items = <>
        Styles.Content = cxStyle7
        Width = 20
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object YillikPlanSatirlareylul: TcxGridDBBandedColumn
        Caption = '09'
        DataBinding.FieldName = 'eylul'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Items = <>
        Styles.Content = cxStyle7
        Width = 20
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object YillikPlanSatirlarekim: TcxGridDBBandedColumn
        Caption = '10'
        DataBinding.FieldName = 'ekim'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Items = <>
        Styles.Content = cxStyle7
        Width = 20
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object YillikPlanSatirlarkasim: TcxGridDBBandedColumn
        Caption = '11'
        DataBinding.FieldName = 'kasim'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Items = <>
        Styles.Content = cxStyle7
        Width = 20
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object YillikPlanSatirlararalik: TcxGridDBBandedColumn
        Caption = '12'
        DataBinding.FieldName = 'aralik'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Items = <>
        Styles.Content = cxStyle7
        Width = 20
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object YillikPlanSatirlarocak_R: TcxGridDBBandedColumn
        Caption = '01'
        DataBinding.FieldName = 'ocak_R'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Items = <
          item
            Description = 'G'
            Value = 1
          end
          item
            Value = 0
          end>
        Styles.Content = cxStyle9
        Width = 20
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object YillikPlanSatirlarsubat_R: TcxGridDBBandedColumn
        Caption = '02'
        DataBinding.FieldName = 'subat_R'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Items = <>
        Styles.Content = cxStyle9
        Width = 20
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object YillikPlanSatirlarmart_R: TcxGridDBBandedColumn
        Caption = '03'
        DataBinding.FieldName = 'mart_R'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Items = <>
        Styles.Content = cxStyle9
        Width = 20
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object YillikPlanSatirlarnisan_R: TcxGridDBBandedColumn
        Caption = '04'
        DataBinding.FieldName = 'nisan_R'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Items = <>
        Styles.Content = cxStyle9
        Width = 20
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object YillikPlanSatirlarmayis_R: TcxGridDBBandedColumn
        Caption = '05'
        DataBinding.FieldName = 'mayis_R'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Items = <>
        Styles.Content = cxStyle9
        Width = 20
        Position.BandIndex = 1
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object YillikPlanSatirlarhaziran_R: TcxGridDBBandedColumn
        Caption = '06'
        DataBinding.FieldName = 'haziran_R'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Items = <>
        Styles.Content = cxStyle9
        Width = 20
        Position.BandIndex = 1
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object YillikPlanSatirlartemmuz_R: TcxGridDBBandedColumn
        Caption = '07'
        DataBinding.FieldName = 'temmuz_R'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Items = <>
        Styles.Content = cxStyle9
        Width = 20
        Position.BandIndex = 1
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object YillikPlanSatirlaragustos_R: TcxGridDBBandedColumn
        Caption = '08'
        DataBinding.FieldName = 'agustos_R'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Items = <>
        Styles.Content = cxStyle9
        Width = 20
        Position.BandIndex = 1
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object YillikPlanSatirlareylul_R: TcxGridDBBandedColumn
        Caption = '09'
        DataBinding.FieldName = 'eylul_R'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Items = <>
        Styles.Content = cxStyle9
        Width = 20
        Position.BandIndex = 1
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object YillikPlanSatirlarekim_R: TcxGridDBBandedColumn
        Caption = '10'
        DataBinding.FieldName = 'ekim_R'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Items = <>
        Styles.Content = cxStyle9
        Width = 20
        Position.BandIndex = 1
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object YillikPlanSatirlarkasim_R: TcxGridDBBandedColumn
        Caption = '11'
        DataBinding.FieldName = 'kasim_R'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Items = <>
        Styles.Content = cxStyle9
        Width = 20
        Position.BandIndex = 1
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object YillikPlanSatirlararalik_R: TcxGridDBBandedColumn
        Caption = '12'
        DataBinding.FieldName = 'aralik_R'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Items = <>
        Styles.Content = cxStyle9
        Width = 20
        Position.BandIndex = 1
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object YillikPlanSatirlarsorumlu1: TcxGridDBBandedColumn
        Caption = 'Sorumlu'
        DataBinding.FieldName = 'sorumlu1'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Items = <
          item
            Description = #304#351'yeri Hekimi'
            ImageIndex = 0
            Value = #304#351'yeri Hekimi'
          end
          item
            Description = #304#351' G'#252'venli'#287'i Uzm.'
            Value = #304#351' G'#252'venli'#287'i Uzm.'
          end
          item
            Description = #304#350' G'#220'VENL'#304#286#304' UZMANI/'#304#350' YER'#304' HEK'#304'M'#304
            Value = #304#350' G'#220'VENL'#304#286#304' UZMANI/'#304#350' YER'#304' HEK'#304'M'#304
          end
          item
            Description = #304#350'VEREN'
            Value = #304#350'VEREN'
          end
          item
            Description = #304#350' G'#220'VENL'#304#286#304' UZMANI/'#304#350'VEREN '
            Value = #304#350' G'#220'VENL'#304#286#304' UZMANI/'#304#350'VEREN'
          end>
        HeaderAlignmentHorz = taCenter
        Width = 82
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object YillikPlanSatirlarsorumlu1Konu: TcxGridDBBandedColumn
        Caption = 'Konu'
        DataBinding.FieldName = 'sorumlu1Konu'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Items = <
          item
            Description = 'TAK'#304'P'
            ImageIndex = 0
            Value = 'TAK'#304'P'
          end
          item
            Description = 'KATILIM'
            Value = 'KATILIM'
          end
          item
            Description = 'TESP'#304'T'
            Value = 'TESP'#304'T'
          end
          item
            Description = #214'NER'#304
            Value = #214'NER'#304
          end
          item
            Description = 'KATILIM VE '#214'NER'#304
            Value = 'KATILIM VE '#214'NER'#304
          end
          item
            Description = 'PLANLAMAVE TAK'#304'B'#304
            Value = 'PLANLAMAVE TAK'#304'B'#304
          end
          item
            Description = 'UYGULAMA'
            Value = 'UYGULAMA'
          end
          item
            Description = #214'NER'#304' VE PLANLAMA'
            Value = #214'NER'#304' VE PLANLAMA'
          end
          item
            Description = 'E'#286#304'T'#304'M '#214'NER'#304
            Value = 'E'#286#304'T'#304'M '#214'NER'#304
          end
          item
            Description = 'KONTROL VE HAZIRLIK'
            Value = 'KONTROL VE HAZIRLIK'
          end
          item
            Description = 'E'#286#304'T'#304'M ALINMASI'
            Value = 'E'#286#304'T'#304'M ALINMASI'
          end
          item
            Description = 'E'#286#304'T'#304'M UYGULAMASI'
            Value = 'E'#286#304'T'#304'M UYGULAMASI'
          end>
        HeaderAlignmentHorz = taCenter
        Width = 83
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object YillikPlanSatirlarsorumlu2: TcxGridDBBandedColumn
        Caption = 'Sorumlu'
        DataBinding.FieldName = 'sorumlu2'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Items = <>
        HeaderAlignmentHorz = taCenter
        Width = 80
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object YillikPlanSatirlarsorumlu2Konu: TcxGridDBBandedColumn
        Caption = 'Konu'
        DataBinding.FieldName = 'sorumlu2Konu'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Items = <>
        HeaderAlignmentHorz = taCenter
        Width = 82
        Position.BandIndex = 4
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
    end
    object YillikPlanGridLevel1: TcxGridLevel
      GridView = YillikPlanSatirlar
    end
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
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlue
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
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clGreen
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 16
    Top = 32
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
    object N1: TMenuItem
      Tag = -30
      Caption = #304#351'veren Bilgilendir'
      ImageIndex = 10
      OnClick = cxButtonCClick
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
  object cxImageList1: TcxImageList
    Height = 141
    Width = 24
    FormatVersion = 1
    DesignInfo = 24641952
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
  object cxStyleRepository3: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle10: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clYellow
      TextColor = clBlack
    end
  end
  object cxStyleRepository4: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle11: TcxStyle
      AssignedValues = [svColor]
      Color = clLime
    end
  end
end
