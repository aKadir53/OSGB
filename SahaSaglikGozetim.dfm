object frmSahaSaglikGozetim: TfrmSahaSaglikGozetim
  Left = 1
  Top = 1
  Caption = 'Saha G'#246'zetim'
  ClientHeight = 675
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
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 672
    Height = 675
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet1
    Properties.TabPosition = tpBottom
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'McSkin'
    ExplicitWidth = 1284
    ClientRectBottom = 650
    ClientRectLeft = 4
    ClientRectRight = 668
    ClientRectTop = 5
    object cxTabSheet1: TcxTabSheet
      ImageIndex = 0
      ExplicitWidth = 1276
      object cxGridKadir1: TcxGridKadir
        Left = 0
        Top = 121
        Width = 664
        Height = 524
        Align = alClient
        TabOrder = 0
        ExcelFileName = 'TahlilSonuclar'#305
        ExceleGonder = True
        ExplicitLeft = 27
        ExplicitTop = 139
        ExplicitWidth = 1276
        ExplicitHeight = 645
        object gridRapor: TcxGridDBBandedTableView
          DataController.DataSource = DataSource2
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 33
          Bands = <
            item
              Caption = 'Saha G'#246'zetim Formu'
              FixedKind = fkLeft
              Styles.Content = cxStyle8
              Styles.Header = cxStyle3
              Width = 737
            end>
          object gridRaporRaporlarID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'RaporlarID'
            Width = 69
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gridRaporKonu_Sira: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Konu_Sira'
            Width = 80
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gridRaporUygunmu: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Uygunmu'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            Width = 50
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gridRaporTespitler: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Tespitler'
            Width = 270
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gridRaporOneriler: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Oneriler'
            Width = 268
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
        end
        object cxGridKadir1Level1: TcxGridLevel
          GridView = gridRapor
        end
      end
      object cxGridKadir2: TcxGridKadir
        Left = 0
        Top = 0
        Width = 664
        Height = 121
        Align = alTop
        TabOrder = 1
        ExcelFileName = 'TahlilSonuclar'#305
        ExceleGonder = True
        object gridRaporlar: TcxGridDBTableView
          DataController.DataSource = DataSource1
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object gridRaporlarID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
          end
          object gridRaporlarFirmaKodu: TcxGridDBColumn
            DataBinding.FieldName = 'FirmaKodu'
          end
          object gridRaporlarDenetimiYapanKullanici: TcxGridDBColumn
            DataBinding.FieldName = 'DenetimiYapanKullanici'
          end
          object gridRaporlarDenetimTarihi: TcxGridDBColumn
            DataBinding.FieldName = 'DenetimTarihi'
          end
          object gridRaporlarDate_Create: TcxGridDBColumn
            DataBinding.FieldName = 'Date_Create'
          end
          object gridRaporlarGozetimDefterNo: TcxGridDBColumn
            DataBinding.FieldName = 'GozetimDefterNo'
          end
          object gridRaporlarImage: TcxGridDBColumn
            DataBinding.FieldName = 'Image'
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = gridRaporlar
        end
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = ADO_SahaGozetim
    Left = 104
    Top = 242
  end
  object ADO_SahaGozetim: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      'select * from SahaGozlemRaporlari')
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
  object SaveDialog1: TSaveDialog
    Left = 336
    Top = 256
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 408
    Top = 256
    object T1: TMenuItem
      Tag = -9
      Caption = 'Yeni G'#246'zetim'
      ImageIndex = 30
      OnClick = cxButtonCClick
    end
    object G1: TMenuItem
      Caption = 'G'#246'zetim Sil'
      ImageIndex = 43
    end
    object Y1: TMenuItem
      Caption = 'Yazd'#305'r'
      ImageIndex = 28
    end
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery1
    Left = 144
    Top = 338
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      'select * from SahaGozlemRaporu')
    Left = 104
    Top = 336
  end
end
