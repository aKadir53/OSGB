object frmPortal: TfrmPortal
  Left = 0
  Top = 0
  Caption = 'frmPortal'
  ClientHeight = 421
  ClientWidth = 777
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBrowser: TsPanel
    Left = 0
    Top = 0
    Width = 777
    Height = 421
    Align = alClient
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
    object WebBrowser1: TWebBrowser
      Left = 1
      Top = 28
      Width = 775
      Height = 392
      Align = alClient
      TabOrder = 0
      OnDocumentComplete = WebBrowser1DocumentComplete
      ExplicitLeft = 5
      ExplicitTop = 30
      ExplicitWidth = 863
      ExplicitHeight = 302
      ControlData = {
        4C00000019500000842800000000000000000000000000000000000000000000
        000000004C000000000000000000000001000000E0D057007335CF11AE690800
        2B2E12620F000000000000004C0000000114020000000000C000000000000046
        8000000000000000000000000000000000000000000000000000000000000000
        00000000000000000100000000000000000000000000000000000000}
    end
    object pnlAdres: TPanel
      Left = 1
      Top = 1
      Width = 775
      Height = 27
      Align = alTop
      TabOrder = 1
      Visible = False
      DesignSize = (
        775
        27)
      object Label1: TLabel
        Left = 1
        Top = 1
        Width = 27
        Height = 25
        Align = alLeft
        Caption = 'Adres'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExplicitHeight = 13
      end
      object txtAdres: TEdit
        Left = 33
        Top = 3
        Width = 1059
        Height = 21
        Anchors = [akLeft]
        TabOrder = 0
      end
      object pnlButton: TPanel
        Left = 675
        Top = 1
        Width = 99
        Height = 25
        Align = alRight
        TabOrder = 1
      end
    end
  end
end
