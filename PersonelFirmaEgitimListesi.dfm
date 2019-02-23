object frmPersonelFirmaEgitimListe: TfrmPersonelFirmaEgitimListe
  Left = 680
  Top = 81
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'frmPersonelFirmaEgitimListe'
  ClientHeight = 601
  ClientWidth = 1167
  Color = 13750737
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxListPanel: TcxGroupBox
    Left = 0
    Top = 38
    Align = alClient
    PanelStyle.Active = True
    TabOrder = 0
    Height = 563
    Width = 1167
    object EgitimGrid: TcxGridKadir
      Left = 2
      Top = 2
      Width = 1163
      Height = 559
      Align = alClient
      TabOrder = 0
      ExceleGonder = False
      object EgitimGridSatirlar: TcxGridDBBandedTableView
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.InfoText = 'Filitre Sat'#305'r'#305
        FilterRow.Visible = True
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnSorting = False
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsView.CellAutoHeight = True
        OptionsView.GridLines = glHorizontal
        OptionsView.GroupByBox = False
        OptionsView.GroupByHeaderLayout = ghlHorizontal
        Styles.Group = cxStyle2
        Bands = <
          item
            Caption = 'E'#287'itimler'
            Width = 1173
          end>
        object EgitimGridSatirlarid: TcxGridDBBandedColumn
          Caption = 'E'#287'itim No.'
          DataBinding.FieldName = 'id'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 75
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object EgitimGridSatirlarBaslamaTarihi: TcxGridDBBandedColumn
          DataBinding.FieldName = 'BaslamaTarihi'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 143
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object EgitimGridSatirlarBitisTarihi: TcxGridDBBandedColumn
          DataBinding.FieldName = 'BitisTarihi'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 140
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object EgitimGridSatirlartanimi: TcxGridDBBandedColumn
          Caption = 'T'#252'r'#252
          DataBinding.FieldName = 'tanimi'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 75
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object EgitimGridSatirlarSirketTanimi: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SirketTanimi'
          Visible = False
          GroupIndex = 0
          HeaderAlignmentHorz = taCenter
          Width = 208
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
          IsCaptionAssigned = True
        end
        object EgitimGridSatirlarEgitimBilgi: TcxGridDBBandedColumn
          DataBinding.FieldName = 'EgitimBilgi'
          Width = 249
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object personelTCKolon: TcxGridDBBandedColumn
          Caption = 'Personel Tc'
          DataBinding.FieldName = 'personelTc'
          Styles.Content = cxStyle3
          Width = 88
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object personelKolon: TcxGridDBBandedColumn
          Caption = 'Personel'
          DataBinding.FieldName = 'personelAdi'
          Styles.Content = cxStyle3
          Width = 134
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object EgitimGridSatirlarEgitimCSGBGonderimSonuc: TcxGridDBBandedColumn
          Caption = 'Gonderim Sonuc'
          DataBinding.FieldName = 'EgitimCSGBGonderimSonuc'
          HeaderAlignmentHorz = taCenter
          Width = 130
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object EgitimGridSatirlarColumn1: TcxGridDBBandedColumn
          Caption = 'Sorgu No'
          DataBinding.FieldName = 'sorguNo'
          HeaderAlignmentHorz = taCenter
          Width = 99
          Position.BandIndex = 0
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object EgitimGridSatirlarColumn2: TcxGridDBBandedColumn
          Caption = 'Sorgu Sonucu'
          DataBinding.FieldName = 'sorguSonuc'
          PropertiesClassName = 'TcxMemoProperties'
          HeaderAlignmentHorz = taCenter
          Styles.Content = cxStyle4
          Width = 99
          Position.BandIndex = 0
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object EgitimGridSatirlarColumn3: TcxGridDBBandedColumn
          Caption = 'isgProf'
          DataBinding.FieldName = 'IGU'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Styles.Content = cxStyle3
          Width = 86
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object EgitimGridSatirlarColumn4: TcxGridDBBandedColumn
          Caption = 'E'#287'itimi Veren'
          DataBinding.FieldName = 'egitimci'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Styles.Content = cxStyle3
          Width = 89
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
      end
      object cxGridLevel2: TcxGridLevel
        GridView = EgitimGridSatirlar
      end
    end
  end
  object cxHastaListePanelBaslik: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    PanelStyle.Active = True
    TabOrder = 1
    Visible = False
    Height = 38
    Width = 1167
    object DiyalizTip: TcxRadioGroup
      Left = 4
      Top = 4
      Alignment = alCenterCenter
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = 'Hemodiyaliz'
          Value = 'H'
        end
        item
          Caption = 'Periton Ayaktan'
          Value = 'P'
        end
        item
          Caption = 'Periton Aletli'
          Value = 'A'
        end>
      ItemIndex = 0
      TabOrder = 0
      Height = 32
      Width = 201
    end
    object Tip: TcxRadioGroup
      Left = 207
      Top = 4
      Alignment = alCenterCenter
      Properties.Items = <
        item
          Caption = 'Aktif'
          Value = '1'
        end
        item
          Caption = 'Pasif'
          Value = '0'
        end>
      ItemIndex = 0
      TabOrder = 1
      Height = 32
      Width = 74
    end
    object ktip: TcxComboBox
      Left = 283
      Top = 4
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownRows = 12
      Properties.Items.Strings = (
        '1 - SGK'
        '99 - Yurt D'#305#351#305' Sigortal'#305'lar'
        '8 - '#220'cretli'
        '98 - '#214'zel Kurum - Sigorta')
      Style.Font.Charset = TURKISH_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      TabOrder = 2
      Text = '1 - SGK'
      Width = 104
    end
    object txtay: TcxComboBox
      Left = 400
      Top = 3
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
      Style.Font.Charset = TURKISH_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      TabOrder = 3
      Width = 37
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 496
    Top = 136
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16777088
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object ikazRed: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object ikazYellow: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
    end
  end
  object popupYil: TPopupMenu
    Left = 384
    Top = 216
    object N1: TMenuItem
      Caption = 'T'#252'm Gruplar'#305' A'#231
      OnClick = N1Click
    end
    object K1: TMenuItem
      Tag = 1
      Caption = 'Gruplar'#305' Kapat'
      OnClick = N1Click
    end
  end
  object ADOTable1: TADOTable
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    TableName = 'ILACLAR'
    Left = 176
    Top = 128
  end
  object DataSource2: TDataSource
    DataSet = ADOTable1
    Left = 176
    Top = 176
  end
end
