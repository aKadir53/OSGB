object frmLisansBilgisi: TfrmLisansBilgisi
  Left = 495
  Top = 213
  BorderStyle = bsToolWindow
  Caption = 'frmLisansBilgisi'
  ClientHeight = 138
  ClientWidth = 324
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object txtLisans: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    Caption = '  Mevcut Lisans Bilgisi  '
    Style.BorderStyle = ebsOffice11
    TabOrder = 0
    Height = 106
    Width = 324
    object Label1: TLabel
      Left = 119
      Top = 60
      Width = 4
      Height = 15
      Caption = '-'
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object txtLisansCaption: TLabel
      Left = 12
      Top = 31
      Width = 3
      Height = 13
      Caption = '.'
      Font.Charset = TURKISH_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 12
      Top = 17
      Width = 76
      Height = 13
      Caption = 'Lisans Ge'#231'erlilik'
    end
    object txtBitis: TEdit
      Left = 125
      Top = 53
      Width = 114
      Height = 27
      Color = clRed
      Enabled = False
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Visible = False
    end
    object txtBasla: TEdit
      Left = 5
      Top = 50
      Width = 300
      Height = 27
      Alignment = taCenter
      Color = clLime
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 8
    Top = 141
    Caption = '  Yeni Lisans Bilgisi  '
    Style.BorderStyle = ebsOffice11
    TabOrder = 1
    Visible = False
    Height = 30
    Width = 309
    object txtYeniBasla: TEdit
      Left = 5
      Top = 22
      Width = 301
      Height = 27
      Color = clGreen
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
  end
  object PnlBottom: TcxGroupBox
    Left = 0
    Top = 106
    Align = alBottom
    PanelStyle.Active = True
    TabOrder = 2
    Height = 32
    Width = 324
    object btnVazgec: TcxButton
      Left = 247
      Top = 2
      Width = 75
      Height = 28
      Align = alRight
      Caption = 'Vazge'#231
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnVazgecClick
    end
    object btnLisans: TcxButton
      Left = 172
      Top = 2
      Width = 75
      Height = 28
      Align = alRight
      Caption = 'Lisans Al'
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnLisansClick
    end
    object btnUygula: TcxButton
      Left = 98
      Top = 10
      Width = 41
      Height = 25
      Caption = 'Uygula'
      TabOrder = 2
      Visible = False
      OnClick = btnUygulaClick
    end
  end
  object LisansAl: THTTPRIO
    WSDLLocation = 'http://www.noktayazilim.net/noktaservice.asmx?WSDL'
    Service = 'NoktaService'
    Port = 'NoktaServiceSoap'
    HTTPWebNode.Agent = 'Borland SOAP 1.2'
    HTTPWebNode.UseUTF8InHeader = True
    HTTPWebNode.InvokeOptions = [soIgnoreInvalidCerts, soAutoCheckAccessPointViaUDDI]
    HTTPWebNode.WebNodeOptions = []
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soCacheMimeResponse, soUTF8EncodeXML]
    Left = 320
    Top = 14
  end
end
