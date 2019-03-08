object frmSorgulamalar: TfrmSorgulamalar
  Left = 0
  Top = 0
  Caption = 'frmSorgulamalar'
  ClientHeight = 620
  ClientWidth = 1294
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl2: TcxPageControl
    Left = 0
    Top = 0
    Width = 1294
    Height = 620
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet6
    LookAndFeel.NativeStyle = False
    ClientRectBottom = 613
    ClientRectLeft = 3
    ClientRectRight = 1287
    ClientRectTop = 26
    object cxTabSheet6: TcxTabSheet
      Caption = 'Sorgular'
      ImageIndex = 0
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1284
        Height = 587
        Align = alClient
        TabOrder = 0
        object Splitter1: TSplitter
          Left = 664
          Top = 1
          Width = 4
          Height = 585
          ExplicitLeft = 851
          ExplicitHeight = 595
        end
        object Panel6: TPanel
          Left = 668
          Top = 1
          Width = 615
          Height = 585
          Align = alClient
          Font.Charset = TURKISH_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          Visible = False
          object Label13: TLabel
            Left = 1
            Top = 109
            Width = 613
            Height = 13
            Align = alTop
            Caption = 'Parametreler'
            Font.Charset = TURKISH_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitWidth = 76
          end
          object Label14: TLabel
            Left = 1
            Top = 35
            Width = 613
            Height = 13
            Align = alTop
            Caption = 'Rapor Ad'#305
            Font.Charset = TURKISH_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitWidth = 55
          end
          object Label15: TLabel
            Left = 1
            Top = 69
            Width = 613
            Height = 13
            Align = alTop
            Caption = 'Rapor SQL SP'
            Font.Charset = TURKISH_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitWidth = 75
          end
          object Label18: TLabel
            Left = 1
            Top = 211
            Width = 613
            Height = 13
            Align = alTop
            Caption = 'A'#231#305'klama'
            Font.Charset = TURKISH_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitWidth = 52
          end
          object Label1: TLabel
            Left = 1
            Top = 143
            Width = 613
            Height = 13
            Align = alTop
            Caption = 'Parametre Tipleri'
            Font.Charset = TURKISH_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitWidth = 99
          end
          object Label2: TLabel
            Left = 1
            Top = 177
            Width = 613
            Height = 13
            Align = alTop
            Caption = 'Combo Tip'
            Font.Charset = TURKISH_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitWidth = 59
          end
          object Label3: TLabel
            Left = 1
            Top = 1
            Width = 613
            Height = 13
            Align = alTop
            Caption = 'Rapor Kodu'
            Font.Charset = TURKISH_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitWidth = 65
          end
          object cxDBMemo1: TcxDBMemo
            Left = 1
            Top = 224
            Align = alTop
            DataBinding.DataField = 'Aciklama'
            DataBinding.DataSource = DataSource2
            ParentFont = False
            Style.Color = 16776176
            Style.Font.Charset = TURKISH_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 6
            OnEnter = cxEditEnter
            OnExit = cxEditExit
            Height = 127
            Width = 613
          end
          object txtSP_name_: TcxImageComboKadir
            Left = 6
            Top = 462
            Properties.ClearKey = 46
            Properties.Items = <>
            TabOrder = 5
            Visible = False
            Conn = DATALAR.ADOConnection2
            BosOlamaz = False
            Width = 201
          end
          object txtRaporAdi: TcxTextEdit
            Left = 1
            Top = 48
            Align = alTop
            ParentFont = False
            Style.Color = 16776176
            Style.Font.Charset = TURKISH_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 1
            OnEnter = cxEditEnter
            OnExit = cxEditExit
            OnKeyDown = cxTextEditKeyDown
            Width = 613
          end
          object txtRaporKodu: TcxTextEdit
            Left = 1
            Top = 14
            Align = alTop
            ParentFont = False
            Style.Color = 16776176
            Style.Font.Charset = TURKISH_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 0
            OnEnter = cxEditEnter
            OnExit = cxEditExit
            OnKeyDown = cxTextEditKeyDown
            Width = 613
          end
          object btnSorgulamalarKaydet: TcxButton
            Left = 248
            Top = 366
            Width = 75
            Height = 25
            Caption = 'Ka&ydet'
            TabOrder = 7
            TabStop = False
            OnClick = btnSorgulamalarKaydetClick
          end
          object btnSorgulamalarKapat: TcxButton
            Left = 329
            Top = 366
            Width = 75
            Height = 25
            Caption = '&Kapat'
            TabOrder = 8
            TabStop = False
            OnClick = btnSorgulamalarKapatClick
          end
          object txtParams: TcxTextEdit
            Left = 1
            Top = 122
            Align = alTop
            ParentFont = False
            Style.Color = 16776176
            Style.Font.Charset = TURKISH_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 2
            OnEnter = cxEditEnter
            OnExit = cxEditExit
            OnKeyDown = cxTextEditKeyDown
            Width = 613
          end
          object txtParamsTip: TcxTextEdit
            Left = 1
            Top = 156
            Align = alTop
            ParentFont = False
            Style.Color = 16776176
            Style.Font.Charset = TURKISH_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 3
            OnEnter = cxEditEnter
            OnExit = cxEditExit
            OnKeyDown = cxTextEditKeyDown
            Width = 613
          end
          object txtIC_Params: TcxTextEdit
            Left = 1
            Top = 190
            Align = alTop
            ParentFont = False
            Style.Color = 16776176
            Style.Font.Charset = TURKISH_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 4
            OnEnter = cxEditEnter
            OnExit = cxEditExit
            OnKeyDown = cxTextEditKeyDown
            Width = 613
          end
          object pnlSP: TPanel
            Left = 1
            Top = 82
            Width = 613
            Height = 27
            Align = alTop
            Caption = 'pnlSP'
            TabOrder = 9
            object txtSP_name: TcxComboBox
              Left = 1
              Top = 1
              Align = alLeft
              ParentFont = False
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              Style.Color = 16776176
              Style.Font.Charset = TURKISH_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 1
              Text = 'txtSP_name'
              OnEnter = cxEditEnter
              OnExit = cxEditExit
              Width = 312
            end
            object prm_Yenile: TcxButton
              Left = 313
              Top = 1
              Width = 299
              Height = 25
              Align = alClient
              Caption = 'Parametre Yenile'
              TabOrder = 0
              OnClick = prm_YenileClick
            end
          end
        end
        object gridRaporlar: TDBGridEh
          Left = 1
          Top = 1
          Width = 663
          Height = 585
          Align = alLeft
          DataSource = DataSource2
          DynProps = <>
          Flat = True
          FooterParams.Color = clWindow
          IndicatorOptions = [gioShowRowIndicatorEh]
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          PopupMenu = ToolMenu
          RowHeight = 21
          TabOrder = 1
          TitleParams.MultiTitle = True
          Columns = <
            item
              Alignment = taCenter
              DynProps = <>
              EditButtons = <>
              FieldName = 'raporKodu'
              Footers = <>
              Title.Caption = 'Rapor ID'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 75
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'raporAdi'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Footers = <>
              Title.Caption = 'Rapor Tan'#305'mlamas'#305
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'EklenmeTarihi'
              Footers = <>
              Title.Caption = 'Eklenme Tarihi'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
    end
    object cxTabSheet7: TcxTabSheet
      Caption = 'Sonu'#231
      ImageIndex = 1
      object cxGrid3: TcxGrid
        Left = 0
        Top = 0
        Width = 1284
        Height = 587
        Align = alClient
        Font.Charset = TURKISH_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LevelTabs.ImageBorder = 2
        LevelTabs.Style = 1
        object cxGrid3DBBandedTableView1: TcxGridDBBandedTableView
          PopupMenu = PopupMenu1
          DataController.DataSource = DataSource1
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.InfoText = 'Filtre'
          FilterRow.Visible = True
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.FooterMultiSummaries = True
          Bands = <
            item
            end>
        end
        object cxGridLevel2: TcxGridLevel
          Caption = 'Hastalar'
          GridView = cxGrid3DBBandedTableView1
          Options.DetailFrameColor = clHighlight
        end
      end
    end
    object cxTabSheet8: TcxTabSheet
      Caption = 'SQL'
      ImageIndex = 2
      object SQL_text: TMemo
        Left = 0
        Top = 30
        Width = 1284
        Height = 171
        Align = alTop
        Font.Charset = TURKISH_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Lines.Strings = (
          '')
        ParentFont = False
        TabOrder = 0
      end
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 1284
        Height = 30
        Align = alTop
        TabOrder = 1
        object btnSQLRun: TcxButton
          Left = 3
          Top = 1
          Width = 75
          Height = 25
          Caption = #199'al'#305#351't'#305'r'
          TabOrder = 0
          OnClick = btnSQLRunClick
        end
      end
      object SQL_grid: TDBGridEh
        Left = 0
        Top = 201
        Width = 1284
        Height = 386
        Align = alClient
        DynProps = <>
        Flat = True
        FooterParams.Color = clWindow
        IndicatorOptions = [gioShowRowIndicatorEh]
        TabOrder = 2
        TitleParams.MultiTitle = True
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object ADO_SQL1: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    AfterScroll = ADO_SQL1AfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from OSGB_MASTER.DBO.raporlar1')
    Left = 464
    Top = 254
  end
  object DataSource2: TDataSource
    DataSet = ADO_SQL1
    Left = 544
    Top = 254
  end
  object SaveDialog1: TSaveDialog
    Left = 376
    Top = 195
  end
  object DataSource1: TDataSource
    DataSet = DATALAR.Ado_Sorgulamalar
    Left = 536
    Top = 120
  end
  object ADO_SQL11: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from OSGB_MASTER.DBO.raporlar1')
    Left = 464
    Top = 198
  end
  object DataSource3: TDataSource
    DataSet = ADO_SQL11
    Left = 544
    Top = 192
  end
  object PopupMenu1: TPopupMenu
    Left = 232
    Top = 192
    object T1: TMenuItem
      Caption = 'Toplam'
      OnClick = O1Click
    end
    object O1: TMenuItem
      Tag = 1
      Caption = 'Ortalama'
      OnClick = O1Click
    end
    object E1: TMenuItem
      Tag = 2
      Caption = 'En B'#252'y'#252'k'
      OnClick = O1Click
    end
    object E2: TMenuItem
      Tag = 3
      Caption = 'En K'#252#231#252'k'
      OnClick = O1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object E3: TMenuItem
      Caption = 'Excel'
      OnClick = E3Click
    end
  end
  object ToolMenu: TPopupMenu
    Images = DATALAR.imag24png
    Left = 160
    Top = 192
    object Y1: TMenuItem
      Tag = -1
      Caption = 'Yeni Sorgu'
      ImageIndex = 30
      OnClick = Y1Click
    end
    object R1: TMenuItem
      Tag = -2
      Caption = 'Sorgu D'#252'zenle'
      ImageIndex = 31
      OnClick = Y1Click
    end
    object R2: TMenuItem
      Tag = -3
      Caption = 'Sorguyu Sil'
      ImageIndex = 37
      Visible = False
      OnClick = Y1Click
    end
    object N1: TMenuItem
      Tag = -4
      Caption = #199'al'#305#351't'#305'r'
      ImageIndex = 32
      OnClick = Y1Click
    end
  end
end
