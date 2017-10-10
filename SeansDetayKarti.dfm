object frmSeansDetayKart: TfrmSeansDetayKart
  Tag = 90
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'frmSeansDetayKart'
  ClientHeight = 585
  ClientWidth = 800
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 32
    Top = 88
    object Kapat1: TMenuItem
      Tag = 9999
      Caption = 'Kapat'
      ImageIndex = 18
      OnClick = cxKaydetClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object H1: TMenuItem
      Tag = 270
      Caption = 'Hem'#351'ire '#304'zlem'
      ImageIndex = 53
      OnClick = cxButtonCClick
    end
  end
  object DataSource1: TDataSource
    DataSet = ADO_Gelisler
    Left = 24
    Top = 208
  end
  object cxStyleRepository1: TcxStyleRepository
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
  object ADO_Gelisler: TADOQuery
    Connection = DATALAR.ADOConnection2
    Parameters = <>
    Left = 24
    Top = 152
  end
end
