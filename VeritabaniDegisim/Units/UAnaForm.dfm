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
  OnClose = FormClose
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
  object lblServerName: TLabel
    Left = 8
    Top = 118
    Width = 82
    Height = 13
    AutoSize = False
    Caption = 'Sunucu Ad'#305':'
    FocusControl = txtServerName
  end
  object lblUserName: TLabel
    Left = 8
    Top = 139
    Width = 82
    Height = 13
    AutoSize = False
    Caption = 'Kullan'#305'c'#305' Ad'#305
    FocusControl = txtUserName
  end
  object lblPassword: TLabel
    Left = 8
    Top = 160
    Width = 82
    Height = 13
    AutoSize = False
    Caption = #350'ifre'
    FocusControl = txtPassword
  end
  object lblDBName: TLabel
    Left = 8
    Top = 181
    Width = 82
    Height = 13
    AutoSize = False
    Caption = 'Veritaban'#305
    FocusControl = txtDBName
  end
  object btnTestConnection: TSpeedButton
    Left = 100
    Top = 201
    Width = 117
    Height = 22
    Caption = 'Ba'#287'lant'#305'y'#305' Test Et...'
    OnClick = btnTestConnectionClick
  end
  object LabelConnection: TLabel
    Left = 231
    Top = 8
    Width = 75
    Height = 226
    AutoSize = False
    Caption = 'Ba'#287'lant'#305' Bilgileri'
    WordWrap = True
  end
  object xTran: TCheckBox
    Left = 312
    Top = 40
    Width = 184
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Transaction Kodlar'#305'n'#305' Ekle'
    TabOrder = 0
  end
  object xCreate: TCheckBox
    Left = 312
    Top = 58
    Width = 184
    Height = 17
    Alignment = taLeftJustify
    Caption = '"ALTER" yerine "CREATE" '#220'ret'
    TabOrder = 1
  end
  object xUpdateLines: TCheckBox
    Left = 312
    Top = 76
    Width = 184
    Height = 17
    Alignment = taLeftJustify
    Caption = 'G'#252'ncelleme Kayd'#305' Sat'#305'rlar'#305'n'#305' Ekle'
    TabOrder = 2
  end
  object xSadeceYeni: TCheckBox
    Left = 312
    Top = 94
    Width = 184
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Sadece Yeni H'#226'lini '#220'ret'
    TabOrder = 3
  end
  object xTxtUzanti: TCheckBox
    Left = 312
    Top = 112
    Width = 184
    Height = 17
    Alignment = taLeftJustify
    Caption = '.TXT Uzant'#305'l'#305' Olarak Kaydet'
    TabOrder = 4
  end
  object xSadeceDegisenler: TCheckBox
    Left = 312
    Top = 130
    Width = 184
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Sadece De'#287'i'#351'enlerin Kodunu '#220'ret'
    TabOrder = 5
  end
  object xAraDegisiklikler: TCheckBox
    Left = 312
    Top = 148
    Width = 184
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Ara De'#287'ii'#351'iklikleri de Tara'
    TabOrder = 6
  end
  object xDosyaTarihleriniAta: TCheckBox
    Left = 312
    Top = 184
    Width = 184
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Dosya Tarihlerini Script Tarihi Yap'
    TabOrder = 7
  end
  object xOtomatikGuncelleme: TCheckBox
    Left = 312
    Top = 166
    Width = 184
    Height = 17
    Alignment = taLeftJustify
    Caption = 'G'#252'ncellemeyi Otomatik Yap'
    TabOrder = 8
  end
  object clbSunucu: TCheckListBox
    Left = 8
    Top = 8
    Width = 209
    Height = 97
    ItemHeight = 13
    TabOrder = 9
    OnClick = clbSunucuClick
  end
  object txtServerName: TEdit
    Left = 96
    Top = 111
    Width = 121
    Height = 21
    TabOrder = 10
  end
  object txtUserName: TEdit
    Left = 96
    Top = 132
    Width = 121
    Height = 21
    TabOrder = 11
  end
  object txtPassword: TEdit
    Left = 96
    Top = 153
    Width = 121
    Height = 21
    TabOrder = 12
  end
  object txtDBName: TEdit
    Left = 96
    Top = 174
    Width = 121
    Height = 21
    TabOrder = 13
  end
  object aTimer: TTimer
    OnTimer = aTimerTimer
    Left = 224
    Top = 8
  end
end
