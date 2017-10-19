object frmYv: TfrmYv
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Mavi Nokta Bilgi Teknolojileri Ltd.'#350'ti.'
  ClientHeight = 100
  ClientWidth = 453
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Progress: TcxProgressBar
    Left = 33
    Top = 39
    Properties.Max = 6.000000000000000000
    Properties.OverloadValue = 6.000000000000000000
    Properties.PeakValue = 2.000000000000000000
    TabOrder = 0
    Width = 384
  end
  object txtinfo: TcxLabel
    Left = 33
    Top = 13
    Caption = 'Gerekli '#304#351'lemler Yap'#305'l'#305'yor L'#252'tfen Bekleyiniz...'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
  end
  object cxButton1: TcxButton
    Left = 320
    Top = 8
    Width = 75
    Height = 25
    Caption = 'cxButton1'
    TabOrder = 2
    Visible = False
    OnClick = cxButton1Click
  end
  object dxStatusBar1: TdxStatusBar
    Left = 0
    Top = 80
    Width = 453
    Height = 20
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Text = '...'
      end>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ExplicitLeft = 240
    ExplicitTop = 88
    ExplicitWidth = 0
  end
  object HTTP1: TIdHTTP
    OnWork = HTTP1Work
    OnWorkBegin = HTTP1WorkBegin
    OnWorkEnd = HTTP1WorkEnd
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 408
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 408
    Top = 48
  end
end
