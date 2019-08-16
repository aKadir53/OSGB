object frmSCH_FirmaSozlesme: TfrmSCH_FirmaSozlesme
  Left = 1
  Top = 1
  Caption = 'Schindler SCM S'#246'zle'#351'meler'
  ClientHeight = 361
  ClientWidth = 684
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object SozlesmeGrid: TcxGridKadir
    Left = 8
    Top = 8
    Width = 670
    Height = 340
    TabOrder = 0
    ExceleGonder = False
    object SozlesmeSatirlar: TcxGridDBTableView
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = ',0.00'
          Kind = skSum
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.NoDataToDisplayInfoText = 'Sat'#305'r Yok'
      OptionsView.FooterMultiSummaries = True
      OptionsView.GroupByBox = False
      OptionsView.GroupFooterMultiSummaries = True
      object SozlesmeSatirlarid: TcxGridDBColumn
        DataBinding.FieldName = 'id'
        Visible = False
      end
      object SozlesmeSatirlarHizmetKodu: TcxGridDBColumn
        Caption = 'S'#246'zle'#351'me Kodu'
        DataBinding.FieldName = 'sozlesmeKod'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Width = 106
      end
      object SozlesmeSatirlarColumn1: TcxGridDBColumn
        Caption = 'S'#246'zl'#351'eme'
        DataBinding.FieldName = 'sozlesmeTanimi'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Styles.Content = cxStyle8
        Width = 357
      end
      object SozlesmeSatirlarColumn2: TcxGridDBColumn
        Caption = #304#351'lem Tarihi'
        DataBinding.FieldName = 'islemTarihi'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 100
      end
      object SozlesmeSatirlarBirimFiyat: TcxGridDBColumn
        Caption = 'Ge'#231'erlilik Tarihi'
        DataBinding.FieldName = 'gecerlilikTarihi'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 100
      end
      object SozlesmeSatirlarTip: TcxGridDBColumn
        Caption = 'D'#246'k'#252'man'
        DataBinding.FieldName = 'DokumanTip'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ImageAlign = iaRight
        Properties.Images = DATALAR.imag24png
        Properties.Items = <
          item
            ImageIndex = 110
            Value = 'pdf'
          end>
        Properties.PopupAlignment = taCenter
        Properties.ShowDescriptions = False
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 53
      end
    end
    object SozlesmeGridLevel1: TcxGridLevel
      GridView = SozlesmeSatirlar
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 104
    Top = 8
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
    Left = 48
    Top = 16
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
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 592
    Top = 48
    object miYeniGozetim: TMenuItem
      Tag = -9
      Caption = 'S'#246'zle'#351'me Dosya Y'#252'kle'
      ImageIndex = 9
      OnClick = cxButtonCClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object S1: TMenuItem
      Tag = -10
      Caption = 'S'#246'zle'#351'me Dosya Temizle'
      ImageIndex = 43
      OnClick = cxButtonCClick
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object S2: TMenuItem
      Tag = -11
      Caption = 'S'#246'zle'#351'meyi A'#231
      ImageIndex = 110
      OnClick = cxButtonCClick
    end
  end
  object tmr1: TTimer
    Enabled = False
    Interval = 100
  end
end
