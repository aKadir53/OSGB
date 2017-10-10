object frmLabTest: TfrmLabTest
  Left = 0
  Top = 0
  Caption = 'frmLabTest'
  ClientHeight = 307
  ClientWidth = 585
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxImageComboBox1: TcxImageComboBox
    Left = 456
    Top = 24
    EditValue = '2'
    Properties.Images = AnaForm.cxImageList3
    Properties.Items = <
      item
        Description = 'Laboratuvar'
        ImageIndex = 1
        Value = '2'
      end
      item
        Description = 'Radyoloji'
        ImageIndex = 0
        Value = '3'
      end>
    TabOrder = 0
    Width = 121
  end
  object cxImageComboBox2: TcxImageComboBox
    Left = 456
    Top = 51
    Properties.Items = <
      item
        Description = 'Ayl'#305'k'
        ImageIndex = 0
        Value = '1'
      end
      item
        Description = '3 Ayl'#305'k'
        Value = '3'
      end
      item
        Description = '6 Ayl'#305'k'
        Value = '6'
      end
      item
        Description = 'Grup D'#305#351#305
        Value = '-1'
      end>
    TabOrder = 1
    Width = 121
  end
  object cxGrid1: TcxGrid
    Left = 24
    Top = 105
    Width = 401
    Height = 103
    TabOrder = 2
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NewItemRow.InfoText = 'Yeni Sat'#305'r'
      NewItemRow.SeparatorWidth = 4
      NewItemRow.Visible = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1ndSira: TcxGridDBColumn
        Caption = 'S'#305'ra'
        DataBinding.FieldName = 'ndSira'
        Width = 30
      end
      object cxGrid1DBTableView1cinsiyet: TcxGridDBColumn
        Caption = 'Cinsiyet'
        DataBinding.FieldName = 'cinsiyet'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.Items.Strings = (
          '0 - Erkek'
          '1 - Kad'#305'n'
          '2 - Herkes')
        Width = 60
      end
      object cxGrid1DBTableView1yas1: TcxGridDBColumn
        Caption = 'Ya'#351' >'
        DataBinding.FieldName = 'yas1'
        Width = 36
      end
      object cxGrid1DBTableView1yas2: TcxGridDBColumn
        Caption = '<Ya'#351
        DataBinding.FieldName = 'yas2'
        Width = 35
      end
      object cxGrid1DBTableView1normal1: TcxGridDBColumn
        Caption = 'Normal >'
        DataBinding.FieldName = 'normal1'
        Width = 50
      end
      object cxGrid1DBTableView1normal2: TcxGridDBColumn
        Caption = '< Normal'
        DataBinding.FieldName = 'normal2'
        Width = 50
      end
      object cxGrid1DBTableView1aciklama: TcxGridDBColumn
        Caption = 'A'#231#305'klama'
        DataBinding.FieldName = 'aciklama'
        Width = 123
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxButtonEditKadir1: TcxButtonEditKadir
    Left = 456
    Top = 78
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.OnButtonClick = cxButtonEditPropertiesButtonClick
    TabOrder = 3
    Text = 'cxButtonEditKadir1'
    Visible = False
    OnEnter = cxEditEnter
    OnExit = cxEditExit
    OnKeyDown = cxTextEditBKeyDown
    indexField = False
    ListeAcTus = 0
    Width = 121
  end
  object cxImageComboBox3: TcxImageComboBox
    Left = 456
    Top = 105
    Properties.Items = <
      item
        Description = 'STRING'
        ImageIndex = 0
        Value = 'S'
      end
      item
        Description = 'NUMERIC'
        Value = 'N'
      end
      item
        Description = 'BOOLEN'
        Value = 'B'
      end>
    TabOrder = 4
    Width = 121
  end
  object NormalDeger: TADOTable
    CursorType = ctStatic
    BeforePost = NormalDegerBeforePost
    TableName = 'lab_normaldeger'
    Left = 368
    Top = 208
    object NormalDegerndSira: TIntegerField
      FieldName = 'ndSira'
    end
    object NormalDegercinsiyet: TStringField
      FieldName = 'cinsiyet'
      Size = 10
    end
    object NormalDegeryas1: TIntegerField
      FieldName = 'yas1'
    end
    object NormalDegeryas2: TIntegerField
      FieldName = 'yas2'
    end
    object NormalDegernormal1: TFloatField
      FieldName = 'normal1'
    end
    object NormalDegernormal2: TFloatField
      FieldName = 'normal2'
    end
    object NormalDegeraciklama: TWideStringField
      FieldName = 'aciklama'
      Size = 255
    end
    object NormalDegertestkodu: TWideStringField
      FieldName = 'testkodu'
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = NormalDeger
    Left = 408
    Top = 208
  end
end
