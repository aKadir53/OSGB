object frmReceteSablon: TfrmReceteSablon
  Left = 350
  Top = 81
  BorderStyle = bsDialog
  Caption = 'frmReceteSablon'
  ClientHeight = 489
  ClientWidth = 743
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 265
    Height = 489
    Align = alLeft
    TabOrder = 0
    object DBGridEh3: TDBGridEh
      Left = 1
      Top = 1
      Width = 263
      Height = 487
      Align = alClient
      DataSource = DataSource1
      DynProps = <>
      EvenRowColor = clInactiveBorder
      Flat = True
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      FooterParams.Color = clWindow
      IndicatorOptions = [gioShowRowIndicatorEh]
      ParentFont = False
      RowHeight = 18
      TabOrder = 0
      TreeViewParams.GlyphStyle = tvgsClassicEh
      TreeViewParams.ShowTreeLines = False
      Columns = <
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'id'
          Footers = <>
          Title.Caption = 'S'#305'ra'
          Width = 24
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'sablonAdi'
          Footers = <>
          Title.Caption = #350'ablon Ad'#305
          Width = 181
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object Panel2: TPanel
    Left = 265
    Top = 0
    Width = 478
    Height = 489
    Align = alClient
    TabOrder = 1
    object cxGroupBox1: TcxGroupBox
      Left = 1
      Top = 1
      Align = alTop
      Caption = '  '#304'la'#231'lar  '
      TabOrder = 0
      Height = 145
      Width = 476
      object DBGridEh1: TDBGridEh
        Left = 3
        Top = 15
        Width = 470
        Height = 120
        Align = alClient
        DataSource = DataSource2
        DynProps = <>
        Flat = True
        Font.Charset = TURKISH_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        FooterParams.Color = clWindow
        IndicatorOptions = [gioShowRowIndicatorEh]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        RowHeight = 18
        TabOrder = 0
        Columns = <
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'ilacKodu'
            Footers = <>
            Title.Caption = #304'la'#231' Kodu'
            Width = 83
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'ilacAdi'
            Footers = <>
            Title.Caption = #304'la'#231' Ad'#305
            Width = 180
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'EtkenMadde'
            Footers = <>
            Width = 27
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'kullanimZaman'
            Footers = <>
            Width = 30
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'kullanimAdet'
            Footers = <>
            Width = 28
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'kullanZamanUnit'
            Footers = <>
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'kullanimSekli'
            Footers = <>
            Width = 37
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'kullanimYolu'
            Footers = <>
            Width = 93
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'kullanimAdet2'
            Footers = <>
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'adet'
            Footers = <>
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object cxGroupBox2: TcxGroupBox
      Left = 1
      Top = 146
      Align = alTop
      Caption = #304'la'#231' A'#231#305'klama'
      TabOrder = 1
      Height = 85
      Width = 476
      object DBGridEh2: TDBGridEh
        Left = 3
        Top = 15
        Width = 470
        Height = 60
        Align = alClient
        DataSource = DataSource3
        DynProps = <>
        Flat = True
        Font.Charset = TURKISH_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        FooterParams.Color = clWindow
        IndicatorOptions = [gioShowRowIndicatorEh]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        RowHeight = 18
        TabOrder = 0
        Columns = <
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'aciklamaTip'
            Footers = <>
            Title.Caption = 'AciklamaTip'
            Width = 28
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'aciklama'
            Footers = <>
            Title.Caption = 'Aciklama'
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'id'
            Footers = <>
            Title.Caption = 'Id'
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object cxGroupBox3: TcxGroupBox
      Left = 1
      Top = 231
      Align = alTop
      Caption = 'A'#231#305'klama'
      TabOrder = 2
      Height = 80
      Width = 476
      object DBGridEh4: TDBGridEh
        Left = 3
        Top = 15
        Width = 470
        Height = 55
        Align = alClient
        DataSource = DataSource4
        DynProps = <>
        Flat = True
        Font.Charset = TURKISH_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        FooterParams.Color = clWindow
        IndicatorOptions = [gioShowRowIndicatorEh]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        RowHeight = 18
        TabOrder = 0
        Columns = <
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'aciklamaTip'
            Footers = <>
            Title.Caption = 'AciklamaTip'
            Width = 28
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'aciklama'
            Footers = <>
            Title.Caption = 'Aciklama'
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'id'
            Footers = <>
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object cxGroupBox4: TcxGroupBox
      Left = 1
      Top = 311
      Align = alClient
      Caption = 'Tan'#305
      TabOrder = 3
      Height = 177
      Width = 476
      object DBGridEh5: TDBGridEh
        Left = 3
        Top = 15
        Width = 470
        Height = 152
        Align = alClient
        DataSource = DataSource5
        DynProps = <>
        Flat = True
        Font.Charset = TURKISH_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        FooterParams.Color = clWindow
        IndicatorOptions = [gioShowRowIndicatorEh]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        RowHeight = 18
        TabOrder = 0
        Columns = <
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'receteId'
            Footers = <>
            Title.Caption = 'ReceteId'
            Width = 22
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'taniKodu'
            Footers = <>
            Title.Caption = 'TaniKodu'
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'tani'
            Footers = <>
            Title.Caption = 'Tani'
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'id'
            Footers = <>
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object Sablonlar: TADOTable
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    TableName = 'ReceteSablon'
    Left = 88
    Top = 161
  end
  object SablonDetay: TADOTable
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    IndexFieldNames = 'ReceteID'
    MasterFields = 'id'
    MasterSource = DataSource1
    TableName = 'ReceteDetaySablon'
    Left = 88
    Top = 201
  end
  object DataSource1: TDataSource
    DataSet = Sablonlar
    Left = 128
    Top = 161
  end
  object DataSource2: TDataSource
    DataSet = SablonDetay
    Left = 128
    Top = 201
  end
  object IlacAciklama: TADOTable
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    IndexFieldNames = 'receteDetayId'
    MasterFields = 'id'
    MasterSource = DataSource1
    TableName = 'ReceteIlacAciklamaSablon'
    Left = 88
    Top = 241
  end
  object DataSource3: TDataSource
    DataSet = IlacAciklama
    Left = 128
    Top = 241
  end
  object Aciklama: TADOTable
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    IndexFieldNames = 'receteId'
    MasterFields = 'id'
    MasterSource = DataSource1
    TableName = 'ReceteAciklamaSablon'
    Left = 88
    Top = 273
  end
  object DataSource4: TDataSource
    DataSet = Aciklama
    Left = 128
    Top = 273
  end
  object Tani: TADOTable
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    IndexFieldNames = 'receteId'
    MasterFields = 'id'
    MasterSource = DataSource1
    TableName = 'ReceteTaniSablon'
    Left = 88
    Top = 305
  end
  object DataSource5: TDataSource
    DataSet = Tani
    Left = 128
    Top = 305
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 200
    Top = 112
    object K1: TMenuItem
      Tag = 9999
      Caption = 'Kapat'
      ImageIndex = 18
      OnClick = cxKaydetClick
    end
    object S1: TMenuItem
      Tag = -1
      Caption = 'Sil'
      ImageIndex = 42
      OnClick = S1Click
    end
  end
end
