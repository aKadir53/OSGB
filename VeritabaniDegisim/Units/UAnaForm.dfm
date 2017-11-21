object AnaForm: TAnaForm
  Left = 0
  Top = 0
  Caption = 'AnaForm'
  ClientHeight = 242
  ClientWidth = 527
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    527
    242)
  PixelsPerInch = 96
  TextHeight = 13
  object btnIslemYap: TSpeedButton
    Left = 432
    Top = 212
    Width = 81
    Height = 22
    Anchors = [akRight, akBottom]
    Caption = #304#351'lem Yap...'
    OnClick = btnIslemYapClick
  end
  object xTran: TCheckBox
    Left = 32
    Top = 40
    Width = 174
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Transaction Kodlar'#305'n'#305' Ekle'
    TabOrder = 0
  end
  object xCreate: TCheckBox
    Left = 32
    Top = 58
    Width = 174
    Height = 17
    Alignment = taLeftJustify
    Caption = '"ALTER" yerine "CREATE" '#220'ret'
    TabOrder = 1
  end
  object xUpdateLines: TCheckBox
    Left = 32
    Top = 76
    Width = 174
    Height = 17
    Alignment = taLeftJustify
    Caption = 'G'#252'ncelleme Kayd'#305' Sat'#305'rlar'#305'n'#305' Ekle'
    TabOrder = 2
  end
  object xSadeceYeni: TCheckBox
    Left = 32
    Top = 94
    Width = 174
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Sadece Yeni H'#226'lini '#220'ret'
    TabOrder = 3
  end
  object xTxtUzanti: TCheckBox
    Left = 32
    Top = 112
    Width = 174
    Height = 17
    Alignment = taLeftJustify
    Caption = '.TXT Uzant'#305'l'#305' Olarak Kaydet'
    TabOrder = 4
  end
  object xSadeceDegisenler: TCheckBox
    Left = 32
    Top = 130
    Width = 174
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Sadece De'#287'i'#351'enlerin Kodunu '#220'ret'
    TabOrder = 5
  end
  object xAraDegisiklikler: TCheckBox
    Left = 32
    Top = 148
    Width = 174
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Ara De'#287'ii'#351'iklikleri de Tara'
    TabOrder = 6
  end
  object xOtomatikGuncelleme: TCheckBox
    Left = 32
    Top = 166
    Width = 174
    Height = 17
    Alignment = taLeftJustify
    Caption = 'G'#252'ncellemeyi Otomatik Yap'
    TabOrder = 7
  end
end
