object frmDokumanYonetim: TfrmDokumanYonetim
  Left = 0
  Top = 0
  Caption = 'frmDokumanYonetim'
  ClientHeight = 478
  ClientWidth = 790
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DokumList: TcxGridKadir
    Left = 0
    Top = 49
    Width = 790
    Height = 429
    Align = alClient
    TabOrder = 0
    ExceleGonder = False
    object gridDokuman: TcxGridDBTableView
      PopupMenu = PopupMenu1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      Styles.Group = cxStyle1
      Styles.GroupByBox = cxStyle1
      object gridDokumanSirketKod: TcxGridDBColumn
        DataBinding.FieldName = 'SirketKod'
        Visible = False
      end
      object gridDokumanID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Options.Editing = False
      end
      object gridDokumanDate_Create: TcxGridDBColumn
        Caption = 'Olu'#351'turma Zaman'#305
        DataBinding.FieldName = 'Date_Create'
        Options.Editing = False
        Width = 127
      end
      object gridDokumanDokumanNo: TcxGridDBColumn
        DataBinding.FieldName = 'DokumanNo'
      end
      object gridDokumanDokumanTanimi: TcxGridDBColumn
        DataBinding.FieldName = 'DokumanTanimi'
        Width = 200
      end
      object gridDokumanDokumanTip: TcxGridDBColumn
        Caption = 'Dokuman Tipi'
        DataBinding.FieldName = 'DokumanTip'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <>
        Width = 114
      end
      object gridDokumanDokuman: TcxGridDBColumn
        DataBinding.FieldName = 'Dokuman'
        Width = 49
      end
      object gridDokumanDosyaTip: TcxGridDBColumn
        Caption = 'Dosya Tipi'
        DataBinding.FieldName = 'DosyaTip'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Options.Editing = False
        Width = 53
      end
      object gridDokumanDokumanGrup: TcxGridDBColumn
        DataBinding.FieldName = 'DokumanGrup'
        Visible = False
        IsCaptionAssigned = True
      end
      object gridDokumanDG: TcxGridDBColumn
        DataBinding.FieldName = 'DG'
        Visible = False
        GroupIndex = 0
        Width = 120
        IsCaptionAssigned = True
      end
      object gridDokumanDT: TcxGridDBColumn
        Caption = 'D'#246'k'#252'man Tipi'
        DataBinding.FieldName = 'DT'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <>
        Visible = False
        Width = 120
      end
      object gridDokumanColumn1: TcxGridDBColumn
        Caption = 'Yukleyen'
        DataBinding.FieldName = 'YukleyenUser'
        Width = 100
      end
    end
    object DokumListLevel1: TcxGridLevel
      GridView = gridDokuman
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    Caption = #350'irket ve D'#246'k'#252'man Se'#231'imi'
    TabOrder = 1
    Height = 49
    Width = 790
    object txtSirket: TcxImageComboKadir
      Left = 46
      Top = 15
      Align = alLeft
      Properties.ClearKey = 46
      Properties.Items = <>
      Properties.OnChange = txtSirketPropertiesChange
      TabOrder = 0
      BosOlamaz = False
      Width = 243
    end
    object cxLabel1: TcxLabel
      Left = 3
      Top = 15
      Align = alLeft
      Caption = #350'irketler'
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorX = 25
      AnchorY = 27
    end
    object cxLabel2: TcxLabel
      Left = 289
      Top = 15
      Align = alLeft
      Caption = 'D'#246'k'#252'man Grup'
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorX = 326
      AnchorY = 27
    end
    object txtDokumanGrup: TcxImageComboKadir
      Left = 363
      Top = 15
      Align = alLeft
      Properties.ClearKey = 46
      Properties.Items = <>
      Properties.OnChange = txtSirketPropertiesChange
      TabOrder = 3
      BosOlamaz = False
      Width = 166
    end
    object txtDosyaTip: TcxImageComboKadir
      Left = 529
      Top = 15
      Align = alLeft
      Properties.ClearKey = 46
      Properties.Items = <>
      Properties.OnChange = txtSirketPropertiesChange
      TabOrder = 4
      Visible = False
      TableName = 'DokumanTip'
      Conn = DATALAR.ADOConnection2
      ValueField = 'DokumanTipID'
      DisplayField = 'tanimi'
      BosOlamaz = False
      Width = 166
    end
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 640
    Top = 176
    object Y1: TMenuItem
      Caption = 'Yeni D'#246'k'#252'man'
      ImageIndex = 30
      OnClick = Y1Click
    end
    object D1: TMenuItem
      Caption = 'Dokuman '#304#231'erik Y'#252'kle'
      ImageIndex = 9
      OnClick = D1Click
    end
    object D2: TMenuItem
      Caption = 'Dokuman Sil'
      ImageIndex = 42
      OnClick = D2Click
    end
    object D3: TMenuItem
      Caption = 'Dokuman A'#231
      ImageIndex = 98
      OnClick = D3Click
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16772055
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
  end
end
