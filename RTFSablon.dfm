object frmRTFSablon: TfrmRTFSablon
  Left = 0
  Top = 0
  Caption = 'frmRTFSablon'
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
    Top = 25
    Width = 790
    Height = 453
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
      object gridDokumanid: TcxGridDBColumn
        Caption = 'ID'
        DataBinding.FieldName = 'id'
        Options.Editing = False
      end
      object gridDokumanRTFSablonKodu: TcxGridDBColumn
        Caption = 'Kodu'
        DataBinding.FieldName = 'RTFKodu'
      end
      object gridDokumanRTFSablonTanim: TcxGridDBColumn
        Caption = 'RTF '#350'ablon Tanim'
        DataBinding.FieldName = 'RTFSablonTanim'
        Width = 311
      end
      object gridDokumanRTFFile: TcxGridDBColumn
        Caption = 'RTF File'
        DataBinding.FieldName = 'RTFFile'
        Width = 118
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
    Caption = 'RTF Sablon Y'#252'kle'
    TabOrder = 1
    Height = 25
    Width = 790
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 640
    Top = 176
    object Y1: TMenuItem
      Caption = 'Yeni RTF '#350'ablon'
      ImageIndex = 30
      OnClick = Y1Click
    end
    object D1: TMenuItem
      Caption = 'RTF '#350'ablon '#304#231'erik Y'#252'kle'
      ImageIndex = 9
      OnClick = D1Click
    end
    object D2: TMenuItem
      Caption = 'Dokuman Sil'
      ImageIndex = 42
      OnClick = D2Click
    end
    object D3: TMenuItem
      Caption = 'RTF '#350'ablon A'#231
      ImageIndex = 98
      OnClick = D3Click
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 48
    Top = 80
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
