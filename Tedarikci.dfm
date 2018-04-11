object frmTedarikci: TfrmTedarikci
  Left = 0
  Top = 0
  Caption = 'frmTedarikci'
  ClientHeight = 307
  ClientWidth = 585
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  PixelsPerInch = 96
  TextHeight = 13
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 48
    Top = 64
    object E1: TMenuItem
      Tag = -1
      Caption = #214'deme Ekle'
      ImageIndex = 15
      OnClick = cxButtonCClick
    end
    object T1: TMenuItem
      Tag = -2
      Caption = 'Tahsilat Ekle'
      ImageIndex = 13
      OnClick = cxButtonCClick
    end
  end
end
