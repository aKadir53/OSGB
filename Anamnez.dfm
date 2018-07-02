object frmAnamnez: TfrmAnamnez
  Left = 0
  Top = 0
  Caption = 'frmAnamnez'
  ClientHeight = 307
  ClientWidth = 585
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object IseGirisMuayene: TcxGridKadir
    Left = -16
    Top = 70
    Width = 513
    Height = 219
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExceleGonder = False
    object GridList: TcxGridDBBandedTableView
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnSorting = False
      OptionsView.GridLines = glHorizontal
      OptionsView.GroupByBox = False
      OptionsView.GroupByHeaderLayout = ghlHorizontal
      Bands = <
        item
          Caption = #304#351'e Giri'#351' Muayene Bilgileri'
          Width = 667
        end>
      object GridListMuayeneSoru: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MuayeneSoru'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Properties.ReadOnly = True
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 286
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object GridListGrupKod: TcxGridDBBandedColumn
        DataBinding.FieldName = 'GrupKod'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object GridListaltGrupKod: TcxGridDBBandedColumn
        DataBinding.FieldName = 'altGrupKod'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object GridListGrupTanimi: TcxGridDBBandedColumn
        DataBinding.FieldName = 'GrupTanimi'
        Visible = False
        GroupIndex = 0
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object GridListaltGrupTanimi: TcxGridDBBandedColumn
        DataBinding.FieldName = 'altGrupTanimi'
        Visible = False
        GroupIndex = 1
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object GridListvalue: TcxGridDBBandedColumn
        Caption = 'Cevap'
        DataBinding.FieldName = 'value'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Styles.Content = cxStyle1
        Width = 62
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object GridListtarih: TcxGridDBBandedColumn
        Caption = 'Tarih'
        DataBinding.FieldName = 'tarih'
        HeaderAlignmentHorz = taCenter
        Width = 55
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object GridListvalueObjevalues: TcxGridDBBandedColumn
        DataBinding.FieldName = 'valueObjevalues'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object GridListvalueTip: TcxGridDBBandedColumn
        DataBinding.FieldName = 'valueTip'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object GridListDesc: TcxGridDBBandedColumn
        Caption = 'A'#231#305'klama'
        DataBinding.FieldName = 'aciklama'
        HeaderAlignmentHorz = taCenter
        Styles.Content = cxStyle2
        Width = 234
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
    end
    object IseGirisMuayeneLevel1: TcxGridLevel
      GridView = GridList
    end
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 256
    Top = 72
    object T1: TMenuItem
      Tag = -1
      Caption = 'Tanilar'
      ImageIndex = 71
      OnClick = cxButtonCClick
    end
    object T2: TMenuItem
      Tag = -3
      Caption = 'Tetkik Ekle - Sonu'#231' G'#246'r'
      ImageIndex = 47
      OnClick = cxButtonCClick
    end
    object M1: TMenuItem
      Tag = -26
      Caption = 'Muayene Formunu Yazd'#305'r'
      ImageIndex = 28
      OnClick = ButtonClick
    end
    object R2: TMenuItem
      Caption = 'Re'#231'ete'
      ImageIndex = 97
      object Y1: TMenuItem
        Tag = -2
        Caption = 'Yeni'
        ImageIndex = 62
        OnClick = cxButtonCClick
      end
      object R3: TMenuItem
        Tag = -26
        Caption = 'Re'#231'eteler'
        ImageIndex = 98
        OnClick = cxButtonCClick
      end
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = 8454143
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = 16777088
    end
  end
end
