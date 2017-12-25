object frmKurumBilgi: TfrmKurumBilgi
  Left = 432
  Top = 234
  BorderStyle = bsToolWindow
  Caption = 'frmKurumBilgi'
  ClientHeight = 526
  ClientWidth = 544
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGridKadir1: TcxGridKadir
    Left = 0
    Top = 0
    Width = 544
    Height = 526
    Align = alClient
    TabOrder = 0
    ExceleGonder = False
    object GridList: TcxGridDBBandedTableView
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnSorting = False
      OptionsView.GroupByBox = False
      Styles.Inactive = cxStyle1
      Styles.Group = cxStyle1
      Bands = <
        item
          Caption = 'WebServisler Eri'#351'im ve Tan'#305'mlama Bilgileri'
          Width = 497
        end>
      object GridListSLK: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SLK'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object GridListid: TcxGridDBBandedColumn
        DataBinding.FieldName = 'id'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object GridListSLK_Tanimi: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Erisim_Tanimi'
        Visible = False
        GroupIndex = 0
        Options.Editing = False
        Options.ShowCaption = False
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object GridListSLB: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SLB'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object GridListSLB_Tanimi: TcxGridDBBandedColumn
        Caption = 'Eri'#351'im Tanimi'
        DataBinding.FieldName = 'SLB_Tanimi'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Styles.Content = cxStyle2
        Width = 217
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object GridListValue: TcxGridDBBandedColumn
        Caption = 'Eri'#351'im De'#287'eri'
        DataBinding.FieldName = 'Value'
        PropertiesClassName = 'TcxTextEditProperties'
        HeaderAlignmentHorz = taCenter
        Width = 265
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
    end
    object cxGridKadir1Level1: TcxGridLevel
      GridView = GridList
    end
  end
  object DataSource1: TDataSource
    DataSet = ADO_WebServisErisim
    Left = 32
    Top = 64
  end
  object ADO_WebServisErisim: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    AfterPost = ADO_WebServisErisimAfterPost
    AfterScroll = ADO_WebServisErisimAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from WebServisErisimBilgileri'
      'order by Sira')
    Left = 96
    Top = 64
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = 4194432
    end
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 80
    Top = 168
    object HastaKabulifreBilgileriniDeitir1: TMenuItem
      Tag = -1
      Caption = 'Hasta Kabul '#350'ifre Bilgilerini De'#287'i'#351'tir'
      ImageIndex = 69
      OnClick = cxButtonCClick
    end
    object DnemSonlandrmaifremiDei1: TMenuItem
      Tag = -2
      Caption = 'D'#246'nem Sonland'#305'rma '#350'ifremi De'#287'i'#351
      ImageIndex = 70
      OnClick = cxButtonCClick
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 8454143
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
end
