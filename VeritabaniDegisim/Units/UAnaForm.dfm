object AnaForm: TAnaForm
  Left = 0
  Top = 0
  Caption = 'AnaForm'
  ClientHeight = 376
  ClientWidth = 448
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
    448
    376)
  PixelsPerInch = 96
  TextHeight = 13
  object btnIslemYap: TSpeedButton
    Left = 359
    Top = 217
    Width = 81
    Height = 22
    Anchors = [akTop, akRight]
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
    Left = 101
    Top = 217
    Width = 117
    Height = 22
    Caption = 'Ba'#287'lant'#305'y'#305' Test Et...'
    OnClick = btnTestConnectionClick
  end
  object lblLocalFolder: TLabel
    Left = 8
    Top = 202
    Width = 82
    Height = 13
    AutoSize = False
    Caption = 'Dosya Yolu'
    FocusControl = txtLocalFolder
  end
  object btnLocalFolder: TSpeedButton
    Left = 196
    Top = 195
    Width = 22
    Height = 22
    Caption = '...'
    OnClick = btnLocalFolderClick
  end
  object xTran: TCheckBox
    Left = 240
    Top = 32
    Width = 184
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Transaction Kodlar'#305'n'#305' Ekle'
    TabOrder = 0
  end
  object xCreate: TCheckBox
    Left = 240
    Top = 50
    Width = 184
    Height = 17
    Alignment = taLeftJustify
    Caption = '"ALTER" yerine "CREATE" '#220'ret'
    TabOrder = 1
  end
  object xUpdateLines: TCheckBox
    Left = 240
    Top = 68
    Width = 184
    Height = 17
    Alignment = taLeftJustify
    Caption = 'G'#252'ncelleme Kayd'#305' Sat'#305'rlar'#305'n'#305' Ekle'
    TabOrder = 2
  end
  object xSadeceYeni: TCheckBox
    Left = 240
    Top = 86
    Width = 184
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Sadece Yeni H'#226'lini '#220'ret'
    TabOrder = 3
  end
  object xTxtUzanti: TCheckBox
    Left = 240
    Top = 104
    Width = 184
    Height = 17
    Alignment = taLeftJustify
    Caption = '.TXT Uzant'#305'l'#305' Olarak Kaydet'
    TabOrder = 4
  end
  object xSadeceDegisenler: TCheckBox
    Left = 240
    Top = 122
    Width = 184
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Sadece De'#287'i'#351'enlerin Kodunu '#220'ret'
    TabOrder = 5
  end
  object xAraDegisiklikler: TCheckBox
    Left = 240
    Top = 140
    Width = 184
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Ara De'#287'ii'#351'iklikleri de Tara'
    TabOrder = 6
  end
  object xDosyaTarihleriniAta: TCheckBox
    Left = 240
    Top = 176
    Width = 184
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Dosya Tarihlerini Script Tarihi Yap'
    TabOrder = 8
  end
  object xOtomatikGuncelleme: TCheckBox
    Left = 240
    Top = 158
    Width = 184
    Height = 17
    Alignment = taLeftJustify
    Caption = 'G'#252'ncellemeyi Otomatik Yap'
    TabOrder = 7
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
  object xDosyaIsimleriniKlasoreYedir: TCheckBox
    Left = 240
    Top = 194
    Width = 184
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Dosya '#304'simlerini Klas'#246're Yedir'
    TabOrder = 14
  end
  object txtLocalFolder: TEdit
    Left = 96
    Top = 195
    Width = 98
    Height = 21
    ReadOnly = True
    TabOrder = 15
  end
  object memo1: TMemo
    Left = 0
    Top = 246
    Width = 448
    Height = 130
    Align = alBottom
    ScrollBars = ssBoth
    TabOrder = 16
    ExplicitLeft = 8
    ExplicitTop = 237
  end
  object aTimer: TTimer
    OnTimer = aTimerTimer
    Left = 224
    Top = 8
  end
end
