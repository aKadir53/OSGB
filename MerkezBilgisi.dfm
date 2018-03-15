object frmMerkezBilgisi: TfrmMerkezBilgisi
  Tag = 90
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'frmMerkezBilgisi'
  ClientHeight = 614
  ClientWidth = 806
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  OnCreate = FormCreate
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 176
    Top = 200
    object lemler1: TMenuItem
      Tag = -20
      Caption = #304#351'lemler'
      ImageIndex = 81
      object MenucxKaydet: TMenuItem
        Caption = 'Kaydet'
        ImageIndex = 31
        OnClick = cxKaydetClick
      end
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 144
    Top = 48
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = 8404992
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clMaroon
    end
  end
end
