object frmUserSettings: TfrmUserSettings
  Left = 192
  Top = 107
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'frmUserSettings'
  ClientHeight = 542
  ClientWidth = 797
  Color = clSilver
  Font.Charset = TURKISH_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl
    Left = 404
    Top = 16
    Width = 681
    Height = 464
    TabOrder = 0
    Properties.ActivePage = cxTabSheet1
    ClientRectBottom = 461
    ClientRectLeft = 3
    ClientRectRight = 678
    ClientRectTop = 26
    object cxTabSheet1: TcxTabSheet
      Caption = #304#351'lem Yetkiler'
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 675
        Height = 435
        Align = alClient
        TabOrder = 0
        object cxGridUserSet: TcxGridDBTableView
          DataController.DataModeController.DetailInSQLMode = True
          DataController.DataSource = DataSource2
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Inserting = False
          object cxGridUserSetModul: TcxGridDBColumn
            DataBinding.FieldName = 'Modul'
            Visible = False
            GroupIndex = 0
          end
          object cxGridUserSetIslem: TcxGridDBColumn
            DataBinding.FieldName = 'Islem'
          end
          object cxGridUserSetIzin: TcxGridDBColumn
            DataBinding.FieldName = 'Izin'
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridUserSet
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Men'#252' Yetkileri'
      ImageIndex = 1
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 675
        Height = 435
        Align = alClient
        TabOrder = 0
        object cxGridMenuSet: TcxGridDBTableView
          DataController.DataModeController.DetailInSQLMode = True
          DataController.DataSource = DataSource1
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          object cxGridMenuSetCOLUMN1: TcxGridDBColumn
            DataBinding.FieldName = 'COLUMN1'
            Visible = False
          end
          object cxGridMenuSetMainMenu: TcxGridDBColumn
            Caption = 'Men'#252
            DataBinding.FieldName = 'MainMenu'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
          end
          object cxGridMenuSetKAYITID: TcxGridDBColumn
            DataBinding.FieldName = 'KAYITID'
            Visible = False
          end
          object cxGridMenuSetCOLUMN2: TcxGridDBColumn
            Caption = 'G'#246'ster / Gizle'
            DataBinding.FieldName = 'Izin'
            PropertiesClassName = 'TcxRadioGroupProperties'
            Properties.Columns = 2
            Properties.Items = <
              item
                Caption = 'G'#246'ster'
                Value = '1'
              end
              item
                Caption = 'Gizle'
                Value = '0'
              end>
            Properties.OnEditValueChanged = cxGrid1DBTableView1COLUMN2PropertiesEditValueChanged
            HeaderAlignmentHorz = taCenter
            Width = 126
          end
          object cxGridMenuSetColumn3: TcxGridDBColumn
            DataBinding.FieldName = 'KApsam'
            Visible = False
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGridMenuSet
        end
      end
    end
  end
  object Q_Pw: TADOQuery
    Active = True
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Usersettings where kullanici = '#39'Admin'#39)
    Left = 24
    Top = 312
  end
  object ADO_menu: TADOQuery
    Connection = DATALAR.ADOConnection2
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      '')
    Left = 24
    Top = 376
  end
  object DataSource1: TDataSource
    DataSet = ADO_menu
    Left = 24
    Top = 432
  end
  object DataSource2: TDataSource
    DataSet = Q_Pw
    Left = 24
    Top = 272
  end
end
