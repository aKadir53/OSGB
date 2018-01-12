object frmAnamnez: TfrmAnamnez
  Left = 0
  Top = 0
  Caption = 'frmAnamnez'
  ClientHeight = 307
  ClientWidth = 585
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 256
    Top = 72
    object T1: TMenuItem
      Tag = -1
      Caption = 'Tanilar'
      ImageIndex = 71
      OnClick = cxButtonCClick
    end
    object R1: TMenuItem
      Tag = -2
      Caption = 'Re'#231'ete'
      ImageIndex = 97
      OnClick = cxButtonCClick
    end
    object T2: TMenuItem
      Tag = -3
      Caption = 'Tetkik Ekle - Sonu'#231' G'#246'r'
      ImageIndex = 47
      OnClick = cxButtonCClick
    end
  end
end
