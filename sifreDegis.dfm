object frmSifreDegis: TfrmSifreDegis
  Left = 376
  Top = 316
  BorderStyle = bsToolWindow
  Caption = 'frmSifreDegis'
  ClientHeight = 198
  ClientWidth = 317
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
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    Caption = #350'ifre Tan'#305'mla'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 0
    Height = 198
    Width = 317
    object Label1: TLabel
      Left = 7
      Top = 30
      Width = 53
      Height = 13
      Caption = 'Yeni '#350'ifre'
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 7
      Top = 55
      Width = 94
      Height = 13
      Caption = 'Yeni '#350'ifre Tekrar'
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object txtSifre: TcxTextEdit
      Tag = 106
      Left = 128
      Top = 24
      Hint = 'Tc Kimlik No'
      ParentFont = False
      ParentShowHint = False
      Properties.EchoMode = eemPassword
      Properties.PasswordChar = '*'
      ShowHint = True
      TabOrder = 0
      Width = 141
    end
    object txtTekrar: TcxTextEdit
      Tag = 106
      Left = 128
      Top = 50
      Hint = 'Hasta Ad'#305
      ParentFont = False
      ParentShowHint = False
      Properties.EchoMode = eemPassword
      Properties.PasswordChar = '*'
      ShowHint = True
      TabOrder = 1
      Width = 141
    end
    object btnSend: TcxButtonKadir
      Left = 128
      Top = 86
      Width = 69
      Height = 25
      Caption = 'Kaydet'
      TabOrder = 2
      OnClick = btnSendClick
      NewButtonVisible = False
    end
    object btnVazgec: TcxButtonKadir
      Left = 200
      Top = 86
      Width = 69
      Height = 25
      Caption = 'Kapat'
      TabOrder = 3
      OnClick = btnVazgecClick
      NewButtonVisible = False
    end
  end
end
