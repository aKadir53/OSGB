object frmFatura: TfrmFatura
  Left = 212
  Top = 137
  Align = alClient
  BorderStyle = bsNone
  Caption = 'frmFatura'
  ClientHeight = 664
  ClientWidth = 1200
  Color = 13750737
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTitle: TPanel
    Left = 0
    Top = 0
    Width = 1200
    Height = 1
    Align = alTop
    Caption = 'Fatura Kesilecek Kay'#305'tlar'
    Color = clBlack
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object pnlOnay: TPanel
    Left = 0
    Top = 659
    Width = 1200
    Height = 5
    Align = alBottom
    Color = clBackground
    TabOrder = 1
    object txtinfo: TLabel
      Left = 7
      Top = 11
      Width = 3
      Height = 13
      Caption = '.'
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 1
    Width = 1200
    Height = 658
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Faturalar'
      object Splitter1: TSplitter
        Left = 881
        Top = 0
        Height = 630
        ExplicitLeft = 912
        ExplicitTop = 168
        ExplicitHeight = 100
      end
      object gridBransKodlari: TDBAdvGrid
        Left = 469
        Top = 3
        Width = 36
        Height = 73
        Cursor = crDefault
        ColCount = 19
        Ctl3D = False
        DrawingStyle = gdsClassic
        FixedCols = 0
        RowCount = 2
        FixedRows = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goRowSelect]
        ParentCtl3D = False
        ParentFont = False
        PopupMenu = PopupMenu1
        ScrollBars = ssBoth
        TabOrder = 0
        OnDblClick = gridBransKodlariDblClick
        OnKeyDown = gridBransKodlariKeyDown
        HoverRowCells = [hcNormal, hcSelected]
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ControlLook.FixedGradientHoverFrom = clGray
        ControlLook.FixedGradientHoverTo = clWhite
        ControlLook.FixedGradientDownFrom = clGray
        ControlLook.FixedGradientDownTo = clSilver
        ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
        ControlLook.DropDownHeader.Font.Color = clWindowText
        ControlLook.DropDownHeader.Font.Height = -11
        ControlLook.DropDownHeader.Font.Name = 'Tahoma'
        ControlLook.DropDownHeader.Font.Style = []
        ControlLook.DropDownHeader.Visible = True
        ControlLook.DropDownHeader.Buttons = <>
        ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
        ControlLook.DropDownFooter.Font.Color = clWindowText
        ControlLook.DropDownFooter.Font.Height = -11
        ControlLook.DropDownFooter.Font.Name = 'Tahoma'
        ControlLook.DropDownFooter.Font.Style = []
        ControlLook.DropDownFooter.Visible = True
        ControlLook.DropDownFooter.Buttons = <>
        Filter = <>
        FilterDropDown.Font.Charset = DEFAULT_CHARSET
        FilterDropDown.Font.Color = clWindowText
        FilterDropDown.Font.Height = -11
        FilterDropDown.Font.Name = 'Tahoma'
        FilterDropDown.Font.Style = []
        FilterDropDownClear = '(All)'
        FixedColWidth = 18
        FixedRowHeight = 22
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = [fsBold]
        Flat = True
        FloatFormat = '%.2f'
        PrintSettings.DateFormat = 'dd/mm/yyyy'
        PrintSettings.Font.Charset = DEFAULT_CHARSET
        PrintSettings.Font.Color = clWindowText
        PrintSettings.Font.Height = -11
        PrintSettings.Font.Name = 'Tahoma'
        PrintSettings.Font.Style = []
        PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
        PrintSettings.FixedFont.Color = clWindowText
        PrintSettings.FixedFont.Height = -11
        PrintSettings.FixedFont.Name = 'Tahoma'
        PrintSettings.FixedFont.Style = []
        PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
        PrintSettings.HeaderFont.Color = clWindowText
        PrintSettings.HeaderFont.Height = -11
        PrintSettings.HeaderFont.Name = 'Tahoma'
        PrintSettings.HeaderFont.Style = []
        PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
        PrintSettings.FooterFont.Color = clWindowText
        PrintSettings.FooterFont.Height = -11
        PrintSettings.FooterFont.Name = 'Tahoma'
        PrintSettings.FooterFont.Style = []
        PrintSettings.PageNumSep = '/'
        SearchFooter.FindNextCaption = 'Find &next'
        SearchFooter.FindPrevCaption = 'Find &previous'
        SearchFooter.Font.Charset = DEFAULT_CHARSET
        SearchFooter.Font.Color = clWindowText
        SearchFooter.Font.Height = -11
        SearchFooter.Font.Name = 'Tahoma'
        SearchFooter.Font.Style = []
        SearchFooter.HighLightCaption = 'Highlight'
        SearchFooter.HintClose = 'Close'
        SearchFooter.HintFindNext = 'Find next occurrence'
        SearchFooter.HintFindPrev = 'Find previous occurrence'
        SearchFooter.HintHighlight = 'Highlight occurrences'
        SearchFooter.MatchCaseCaption = 'Match case'
        Version = '2.3.4.0'
        AutoCreateColumns = True
        AutoRemoveColumns = True
        Columns = <
          item
            Borders = []
            BorderPen.Color = clSilver
            CheckFalse = 'N'
            CheckTrue = 'Y'
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header = '*'
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clWindowText
            PrintFont.Height = -11
            PrintFont.Name = 'Tahoma'
            PrintFont.Style = []
            Width = 18
          end
          item
            Borders = []
            BorderPen.Color = clSilver
            CheckFalse = 'N'
            CheckTrue = 'Y'
            Color = clWindow
            FieldName = 'dosyaNo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header = 'DosyaNo'
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clWindowText
            PrintFont.Height = -11
            PrintFont.Name = 'Tahoma'
            PrintFont.Style = []
            Width = 64
          end
          item
            Borders = []
            BorderPen.Color = clSilver
            CheckFalse = 'N'
            CheckTrue = 'Y'
            Color = clWindow
            FieldName = 'gelisNo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header = 'Gelis'
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clWindowText
            PrintFont.Height = -11
            PrintFont.Name = 'Tahoma'
            PrintFont.Style = []
            Width = 30
          end
          item
            Borders = []
            BorderPen.Color = clSilver
            CheckFalse = 'N'
            CheckTrue = 'Y'
            Color = clWindow
            FieldName = 'HASTA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header = 'Hasta'
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clWindowText
            PrintFont.Height = -11
            PrintFont.Name = 'Tahoma'
            PrintFont.Style = []
            Width = 130
          end
          item
            Borders = []
            BorderPen.Color = clSilver
            CheckFalse = 'N'
            CheckTrue = 'Y'
            Color = clWindow
            FieldName = 'Tarih'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clWindowText
            PrintFont.Height = -11
            PrintFont.Name = 'Tahoma'
            PrintFont.Style = []
            Width = 64
          end
          item
            Borders = []
            BorderPen.Color = clSilver
            CheckFalse = 'N'
            CheckTrue = 'Y'
            Color = clWindow
            FieldName = 'ButKodu'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clWindowText
            PrintFont.Height = -11
            PrintFont.Name = 'Tahoma'
            PrintFont.Style = []
            Width = 51
          end
          item
            Borders = []
            BorderPen.Color = clSilver
            CheckFalse = 'N'
            CheckTrue = 'Y'
            Color = clWindow
            FieldName = 'aciklama'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clWindowText
            PrintFont.Height = -11
            PrintFont.Name = 'Tahoma'
            PrintFont.Style = []
            Width = 64
          end
          item
            Borders = []
            BorderPen.Color = clSilver
            CheckFalse = 'N'
            CheckTrue = 'Y'
            Color = clWindow
            FieldName = 'adet'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header = 'Adet'
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clWindowText
            PrintFont.Height = -11
            PrintFont.Name = 'Tahoma'
            PrintFont.Style = []
            Width = 29
          end
          item
            Borders = []
            BorderPen.Color = clSilver
            CheckFalse = 'N'
            CheckTrue = 'Y'
            Color = clWindow
            FieldName = 'birimFiyat'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header = 'Birim Fiyat'
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clWindowText
            PrintFont.Height = -11
            PrintFont.Name = 'Tahoma'
            PrintFont.Style = []
            Width = 64
          end
          item
            Borders = []
            BorderPen.Color = clSilver
            CheckFalse = 'N'
            CheckTrue = 'Y'
            Color = clWindow
            FieldName = 'kdv'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header = 'Kdv'
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clWindowText
            PrintFont.Height = -11
            PrintFont.Name = 'Tahoma'
            PrintFont.Style = []
            Width = 28
          end
          item
            Borders = []
            BorderPen.Color = clSilver
            CheckFalse = 'N'
            CheckTrue = 'Y'
            Color = clWindow
            FieldName = 'tutar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header = 'Tutar'
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clWindowText
            PrintFont.Height = -11
            PrintFont.Name = 'Tahoma'
            PrintFont.Style = []
            Width = 64
          end
          item
            Borders = []
            BorderPen.Color = clSilver
            CheckFalse = 'N'
            CheckTrue = 'Y'
            Color = clWindow
            FieldName = 'kdvTutar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header = 'Kdv Tutar'
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clWindowText
            PrintFont.Height = -11
            PrintFont.Name = 'Tahoma'
            PrintFont.Style = []
            Width = 64
          end
          item
            Borders = []
            BorderPen.Color = clSilver
            CheckFalse = 'N'
            CheckTrue = 'Y'
            Color = clWindow
            FieldName = 'faturaTutar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header = 'F.Tutar'
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clWindowText
            PrintFont.Height = -11
            PrintFont.Name = 'Tahoma'
            PrintFont.Style = []
            Width = 64
          end
          item
            Borders = []
            BorderPen.Color = clSilver
            CheckFalse = 'N'
            CheckTrue = 'Y'
            Color = clWindow
            FieldName = 'faturaNo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header = 'FaturaNo'
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clWindowText
            PrintFont.Height = -11
            PrintFont.Name = 'Tahoma'
            PrintFont.Style = []
            Width = 64
          end
          item
            Borders = []
            BorderPen.Color = clSilver
            CheckFalse = 'N'
            CheckTrue = 'Y'
            Color = clWindow
            FieldName = 'takipNo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header = 'TakipNo'
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clWindowText
            PrintFont.Height = -11
            PrintFont.Name = 'Tahoma'
            PrintFont.Style = []
            Width = 64
          end
          item
            Borders = []
            BorderPen.Color = clSilver
            CheckFalse = 'N'
            CheckTrue = 'Y'
            Color = clWindow
            FieldName = 'GSSFaturaTeslimNo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clWindowText
            PrintFont.Height = -11
            PrintFont.Name = 'Tahoma'
            PrintFont.Style = []
            Width = 64
          end
          item
            Borders = []
            BorderPen.Color = clSilver
            CheckFalse = 'N'
            CheckTrue = 'Y'
            Color = clWindow
            FieldName = 'kurum'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clWindowText
            PrintFont.Height = -11
            PrintFont.Name = 'Tahoma'
            PrintFont.Style = []
            Width = 0
          end
          item
            Borders = []
            BorderPen.Color = clSilver
            CheckFalse = 'N'
            CheckTrue = 'Y'
            Color = clWindow
            FieldName = 'Faturay'#305'OdeyenKurum'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clWindowText
            PrintFont.Height = -11
            PrintFont.Name = 'Tahoma'
            PrintFont.Style = []
            Width = 0
          end
          item
            Borders = []
            BorderPen.Color = clSilver
            CheckFalse = 'N'
            CheckTrue = 'Y'
            Color = clWindow
            FieldName = 'basvuruNo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clWindowText
            PrintFont.Height = -11
            PrintFont.Name = 'Tahoma'
            PrintFont.Style = []
            Width = 64
          end>
        InvalidPicture.Data = {
          055449636F6E0000010001002020200000000000A81000001600000028000000
          2000000040000000010020000000000000100000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000006A6A6B256A6A6B606A6A6B946A6A6BC06A6A6BE1
          6A6A6BF86A6A6BF86A6A6BE16A6A6BC06A6A6B946A6A6B606A6A6B2500000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000006A6A6B407575769E787879F19F9F9FF6C0C0C0FDDADADAFFEDEDEEFF
          FBFBFBFFFBFBFBFFEDEDEEFFDADADAFFC0C0C0FD9F9F9FF6787879F17575769E
          6A6A6B4000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000006A6A6B22
          7C7C7C98888889F0BDBDBDFCE9E9EBFED9D9E9FEB5B5DDFE8B8BCDFE595AB7FF
          3739A8FF2B2CA4FF4A49B1FF7171C1FFA1A2D7FFD3D3E8FFEAEAEBFEBEBEBFFC
          888889F07C7C7C986A6A6B220000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000006A6A6B43838383D8
          B7B7B8FAECECEFFEC0C0DFFF7977C4FF2221A0FF12129BFF1010A4FF0C0CA8FF
          0A0AACFF0A0AB4FF0A0AB9FF0D0DBEFF0F0FB1FF1111A6FF5656B8FFAEADDCFF
          ECECEFFEB7B7B8FA838383D86A6A6B4300000000000000000000000000000000
          00000000000000000000000000000000000000006A6A6B4E878788EAD3D3D3FE
          CACAE8FF4443B0FF171799FF11119CFF0C0C98FF0B0B9BFF0B0BA0FF0A0AA6FF
          0909ACFF0909B2FF0808BAFF0707BFFF0B09C8FF0D0DCEFF1111CCFF1010AFFF
          4A49B2FFCFCFEBFFD3D3D3FE878788EA6A6A6B4E000000000000000000000000
          000000000000000000000000000000006A6A6B43878788EAE1E1E1FFA8A8DAFF
          2323A0FF15159CFF0D0D92FF0C0C95FF0C0C99FF0B0B9EFF0B0BA0FF0A0AA6FF
          0909ACFF0909B2FF0808B8FF0808BCFF0808C3FF0C0CC9FF0C0CD0FF0D0DD6FF
          1313CFFF2222A9FFAFAFDEFFE1E1E1FF878788EA6A6A6B430000000000000000
          0000000000000000000000006A6A6B22838383D8D3D3D3FEA8A8D9FF2020A4FF
          13139BFF0C0C92FF0C0C95FF0C0C97FF0C0C99FF0B0B9EFF0B0BA0FF0A0AA4FF
          0A0AA9FF0909B0FF0808B4FF0808BBFF0707C0FF0A0AC6FF0909CCFF0C0CD3FF
          0D0DD8FF1313D3FF1A1AA8FFAEADDEFFD4D4D4FE838383D86A6A6B2200000000
          0000000000000000000000007C7C7C98B7B7B8FACACAE8FF2524A3FF13139FFF
          0C0C97FF0C0C95FF0C0C95FF0C0C91FF0C0C95FF0B0B9EFF0B0BA0FF0A0AA4FF
          0A0AA8FF0909ADFF0909B2FF0808B8FF0808BCFF0707C0FF0808BCFF0707C5FF
          0C0CD3FF0D0DD7FF1212D1FF2020A7FFCDCDEBFFB8B8B9FA7C7C7C9800000000
          00000000000000006A6A6B40888889F0ECECEFFE4545B1FF1616A4FF0B0B9BFF
          0C0C99FF0C0C96FF3333A2FFB9B9D0FF393A9BFF0C0C95FF0B0BA1FF0A0AA4FF
          0A0AA7FF0A0AABFF0909B0FF0808B4FF0808B7FF2F2FC2FFAEAEE2FF4B4BBFFF
          0707BEFF0B0BD1FF0C0CD3FF1413CCFF4848B1FFECECEFFE888889F06A6A6B40
          00000000000000007575769EBFBFBFFD9B9BD5FF1C1CA6FF0C0CA1FF0B0B9FFF
          0B0B9AFF3535A7FFB5B5BEFFE6E6DFFFEDEDEFFF3C3C9CFF0C0C97FF0A0AA4FF
          0A0AA6FF0A0AA9FF0909ADFF0909B0FF2626B5FFCECEDEFFFFFFFBFFEEEEF1FF
          4848BAFF0808BCFF0A0ACDFF0B0BCEFF1111ABFFBEC0E0FFBFC0BFFD7575769E
          000000006A6A6B25787879F1E3E3E5FE4646B2FF1414A8FF0A0AA4FF0B0BA0FF
          2121A9FFBDBDCAFFD0D0C8FFC5C5C5FFE3E3E1FFEDEDEFFF3E3E9EFF0C0C98FF
          0A0AA6FF0A0AA8FF0A0AA9FF2B2BB0FFC0C0CDFFEAEAE2FFEBEBEBFFFEFEF8FF
          EDEDEEFF2828BDFF0707C4FF0809C7FF0F0FC4FF8788CBFFEBEBECFE79797AF1
          6A6A6B256A6A6B609D9E9DF6D6D7E4FF3A3AB3FF1212ADFF0A0AA8FF0A0AA4FF
          1313AAFFABABCFFFD6D6CBFFCACACAFFC6C6C6FFE4E4E0FFEEEEEFFF3F3FA0FF
          0C0C99FF0A0AA6FF2828ABFFB2B2BFFFD8D8CEFFD6D6D8FFE0E0E0FFF6F5EDFF
          D1D1EDFF1E1CC0FF0707BEFF0707BFFF0707C0FF2120AAFFD3D5E9FE9FA0A0F6
          6A6A6B606A6A6B94BDBDBDFBBABBDCFF3A39B7FF2F2FB8FF0909ADFF0A0AA9FF
          0A0AA6FF1515ACFFADADCFFFD6D6CBFFCBCBCAFFC6C6C6FFE4E4E1FFEEEEEFFF
          3838A1FF2222A2FFACABB8FFC8C8C0FFC7C7C8FFCDCDCDFFE1E1D9FFC8CAE1FF
          2424BCFF0808B4FF0808B9FF0808BAFF0808BBFF0F0EABFFA1A2D5FEC0C0C0FC
          6A6A6B946A6A6BC0D9D8D7FE9999D1FF3838BBFF3636BCFF2C2CB7FF0909ADFF
          0A0AA9FF0A0AA4FF1C1CAFFFB1B1CFFFD6D6CBFFCCCCCBFFC7C7C7FFE4E4E1FF
          ECECEEFFACACB7FFC2C2BCFFBEBEBFFFC0C0C0FFCFCFC6FFC1C1D5FF2727B8FF
          0909ACFF0909B2FF0909B2FF0909B4FF0808B4FF0E0EB5FF6E6EBFFFD9D9D9FE
          6A6A6BC06A6A6BE1EBEAEBFF7D7CC7FF3838BFFF3434BEFF3536BEFF2A2AB8FF
          0909B0FF0909ACFF0A0AA8FF1C1CB1FFB2B2D0FFD7D7CCFFCBCBCBFFC7C7C8FF
          C8C8C3FFC6C6C3FFBFBFC1FFBDBDBDFFC5C5BCFFB8B8CEFF2929B5FF0A0AA8FF
          0909ACFF0909ADFF0909AFFF0909AFFF0909AFFF0C0CB0FF4747AFFFECECEDFF
          6A6A6BE16A6A6BF8F9F9F9FF6666C1FF3838C4FF3535C2FF3434C0FF3535BEFF
          3030BCFF1313B4FF0909ADFF0A0AA8FF1E1EB3FFAAAAD0FFD3D3CDFFCCCCCCFF
          C8C8C8FFC3C3C3FFC2C2C1FFC4C4BFFFB2B2CBFF2B2BB4FF0A0AA4FF0A0AA8FF
          0A0AA8FF0A0AA9FF0A0AA9FF0A0AA9FF0A0AA9FF0B0BA9FF3131A6FFFAFAFAFF
          6A6A6BF86A6A6BF8FBFBFBFF5959BEFF3B3BCAFF3A3AC8FF3737C4FF3535C2FF
          3636C0FF3636BEFF2323B8FF0909B1FF0A0AA7FF4949BEFFD6D6D4FFD3D3D1FF
          CDCDCDFFC8C8C8FFC4C4C3FFEDEDEDFF5F5FB3FF0C0C98FF0A0AA7FF0A0AA6FF
          0A0AA6FF0A0AA6FF0A0AA4FF0A0AA6FF0A0AA4FF0B0BA4FF2D2DA6FFFBFBFBFF
          6A6A6BF86A6A6BE1EDEDEEFF7F80CBFF4041CCFF3C3CCAFF3A3AC8FF383AC8FF
          3838C4FF3636C2FF3939C0FF2123B7FF4A4AC2FFCBCBDEFFE0E0DCFFD6D6D6FF
          D2D2D3FFCDCDCEFFC9C9C9FFE2E2E1FFF1F1F2FF4242A3FF0C0C99FF0A0AA4FF
          0A0AA4FF0A0AA4FF0B0BA3FF0B0BA3FF0B0BA1FF0E0EA1FF4443B0FFEDEDEEFF
          6A6A6BE16A6A6BC0DADADAFF9C9BD5FE4949CDFF3E3DD0FF3C3DCEFF3C3CCAFF
          3A3AC8FF3B39C7FF2828BDFF5C5CCCFFE5E5EDFFF4F4EDFFE5E5E6FFDEDEDEFF
          DCDCD9FFD9D9D3FFCDCDCDFFC8C8C8FFE5E5E1FFF1F1F3FF3F3FA0FF0C0C99FF
          0A0AA4FF0B0BA1FF0B0BA0FF0B0BA0FF0B0B9FFF1313A2FF6B6BC0FFDADADAFF
          6A6A6BC06A6A6B94C0C0C0FDBDBAE1FE5655CFFF4141D4FF3F3FD2FF3F3FCEFF
          3D3DCCFF2C2AC3FF5E5ED3FFEBEBF6FFFFFFFAFFF1F1F1FFEDEDEEFFF0F0E9FF
          D2D2E6FFBDBDD6FFDADAD3FFCFCFCFFFC9C9CAFFE5E5E2FFF1F1F3FF3A3AA0FF
          0C0C98FF0B0BA3FF0B0B9FFF0B0B9EFF0B0B9EFF1C1CA4FF9C9CD3FFC1C1C1FD
          6A6A6B946A6A6B609F9F9FF6DAD9EAFF6B6BCFFF4444D7FF4143D6FF4242D3FF
          3434CDFF6464DBFFEFEFFFFFFFFFFFFFFCFCFCFFF6F6F6FFFCFCF4FFE2E1F0FF
          5050CCFF4040C1FFC3C3DBFFE1E1D8FFD4D4D5FFCFCFCFFFE8E8E5FFF2F2F4FF
          4040A2FF0C0C99FF0F0FA2FF0F0FA0FF0F0F9DFF302FA9FFD1D1E8FEA0A0A0F6
          6A6A6B606A6A6B25787879F1E9E9EBFEA7A7DAFF6060DBFF4547DBFF3C3CD6FF
          5857DEFFF2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E8F8FF5B5BD4FF
          2828BDFF2A2BBDFF4949C5FFC3C3DBFFE4E4DAFFD5D5D5FFCECED0FFE8E8E5FF
          F4F4F4FF4949AFFF2121A6FF2A2AA6FF2C2BA9FF5557B8FFEAEAECFE787879F1
          6A6A6B25000000007575769EBEBEBEFDC9CAE6FF7A79DBFF4C4CDFFF4141DBFF
          5757E0FFEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E7FFFF5B5BD7FF2E2EC6FF
          3E3EC9FF3A3AC5FF2C2EC1FF4A49C8FFC2C2DDFFE3E3DAFFD5D5D4FFDADAD3FF
          CACBD9FF4747BBFF2525ADFF2C2BACFF3332AEFFA5A4D8FFBFBFBFFD7575769E
          00000000000000006A6A6B40888889F0ECECEFFE9696D6FF7B7BE3FF4D4BE0FF
          4141DBFF5F5FE6FFE7E7FFFFFFFFFFFFE9E9FFFF5A5ADCFF3333CAFF4242CFFF
          4040CBFF3D3DC9FF3D3EC8FF3030C2FF4848C9FFC0C0DDFFECEEDEFFD0D0E0FF
          5554C7FF2828B3FF3232B4FF3434B1FF5453B7FFECECEFFE888889F06A6A6B40
          0000000000000000000000007C7C7C98B7B7B8FAD0D0ECFF8F8FDBFF6868E3FF
          4E4EE2FF3E40DBFF6565E9FFB2B2F7FF6565E4FF393BD2FF4646D7FF4343D4FF
          4343D1FF4242CFFF4040CBFF3F3FCAFF3333C4FF4E4ECBFF9E9EE2FF5C5BCFFF
          292ABAFF3636BCFF3938B8FF3F3EB1FFCBCBE9FFB7B7B8FA7C7C7C9800000000
          0000000000000000000000006A6A6B22838383D8D3D3D3FEB5B5E2FF9E9EE4FF
          6766E2FF4E50E6FF4646E0FF3D3DDAFF4444DCFF4B4BDCFF4848DBFF4847D9FF
          4646D5FF4443D3FF4343D1FF4242CFFF4143CDFF3A3AC8FF312FC5FF3535C3FF
          3C3CC3FF3D3DBEFF403FB5FFACACDCFFD3D3D3FE838383D86A6A6B2200000000
          000000000000000000000000000000006A6A6B43878788EAE1E1E1FFB5B5E2FF
          A7A6E4FF7877E5FF5151E5FF4F4FE4FF4E4EE2FF4D4DE0FF4C4CDEFF4B4BDCFF
          4949DBFF4848D7FF4747D5FF4545D3FF4545D1FF4343CFFF4242CCFF3F3FCBFF
          4343C2FF4645B6FFADADDCFFE1E1E1FF878788EA6A6A6B430000000000000000
          00000000000000000000000000000000000000006A6A6B4E878788EAD3D3D3FE
          D0D0ECFFAAA9DFFFA2A2ECFF6565E3FF5151E6FF4F4FE4FF4F4DE4FF4D4DE0FF
          4D4DDFFF4D4DDCFF4C49DBFF4A4AD8FF4749D6FF4747D4FF4949CBFF4B4BC3FF
          8E8ED0FFCDCCE8FFD3D3D3FE878788EA6A6A6B4E000000000000000000000000
          0000000000000000000000000000000000000000000000006A6A6B43838383D8
          B7B7B8FAECECEFFEC3C2E5FFADAEE1FF9E9DE8FF6F6FE0FF5C5CE1FF5452E2FF
          5051E1FF4F4FDFFF4F4FDBFF5150D6FF5151CFFF5F5FC8FFA1A1D3FEC7C8E0FE
          E4E4E7FEB7B7B8FA838383D86A6A6B4300000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000006A6A6B22
          7C7C7C98888889F0BFBFBFFDEBEBECFED8D9EBFEBDBDE4FEA8A7DCFF9695D7FF
          8886D4FF7F7DCEFF8C8BD2FFA1A2D9FFC0BEE1FED9D9EAFEEAEAECFEBFBFBFFD
          888889F07C7C7C986A6A6B220000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000006A6A6B407575769E787879F19F9F9FF6C0C0C0FDDADADAFFEDEDEEFF
          FBFBFBFFFBFBFBFFEDEDEEFFDADADAFFC0C0C0FD9F9F9FF6787879F17575769E
          6A6A6B4000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000006A6A6B256A6A6B606A6A6B946A6A6BC06A6A6BE1
          6A6A6BF86A6A6BF86A6A6BE16A6A6BC06A6A6B946A6A6B606A6A6B2500000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000FFC003FFFF0000FFFC00003FF800001FF000000FE0000007C0000003
          C000000380000001800000010000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000080000001
          80000001C0000003C0000003E0000007F000000FF800001FFC00003FFF0000FF
          FFC003FF}
        ShowUnicode = False
        ColWidths = (
          18
          64
          30
          130
          64
          51
          64
          29
          64
          28
          64
          64
          64
          64
          64
          64
          0
          0
          64)
      end
      object pnlFaturaList: TPanel
        Left = 0
        Top = 0
        Width = 881
        Height = 630
        Align = alLeft
        Caption = 'pnlFaturaList'
        TabOrder = 1
        object DBMemo1: TDBMemo
          Left = 1
          Top = 602
          Width = 879
          Height = 27
          Align = alBottom
          Color = clWhite
          DataField = 'MedulaEpikriz'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object cxGrid4: TFScxGrid
          Left = 1
          Top = 1
          Width = 879
          Height = 601
          Align = alClient
          Font.Charset = TURKISH_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 1
          LevelTabs.ImageBorder = 2
          LevelTabs.Style = 1
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          ExportFileName = 'FaturaList'
          DefaultPopup = False
          object FaturaList: TcxGridDBTableView
            Navigator.Buttons.First.Visible = True
            Navigator.Buttons.PriorPage.Visible = True
            Navigator.Buttons.Prior.Visible = True
            Navigator.Buttons.Next.Visible = True
            Navigator.Buttons.NextPage.Visible = True
            Navigator.Buttons.Last.Visible = True
            Navigator.Buttons.Insert.Visible = True
            Navigator.Buttons.Append.Visible = False
            Navigator.Buttons.Delete.Visible = True
            Navigator.Buttons.Edit.Visible = True
            Navigator.Buttons.Post.Visible = True
            Navigator.Buttons.Cancel.Visible = True
            Navigator.Buttons.Refresh.Visible = True
            Navigator.Buttons.SaveBookmark.Visible = True
            Navigator.Buttons.GotoBookmark.Visible = True
            Navigator.Buttons.Filter.Visible = True
            FilterBox.CustomizeDialog = False
            OnFocusedRecordChanged = FaturaListFocusedRecordChanged
            DataController.DataModeController.DetailInSQLMode = True
            DataController.Filter.Active = True
            DataController.Filter.TranslateBetween = True
            DataController.Filter.TranslateLike = True
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,###.#0'
                Kind = skSum
                FieldName = 'adet'
                Column = FaturaListadet
              end
              item
                Format = '#,###.#0'
                Kind = skSum
                FieldName = 'tutar'
                Column = FaturaListtutar
              end
              item
                Format = '#,###.#0'
                Kind = skSum
                FieldName = 'kdvTutar'
                Column = FaturaListkdvTutar
              end
              item
                Format = '#,###.#0'
                Kind = skSum
                FieldName = 'faturaTutar'
                Column = FaturaListfaturaTutar
              end
              item
                Kind = skCount
                Column = FaturaListdosyaNo
                DisplayText = 'Listelenen Kay'#305't'
              end>
            DataController.Summary.SummaryGroups = <>
            Filtering.MRUItemsList = False
            Filtering.ColumnMRUItemsList = False
            FilterRow.InfoText = 'Arama Sat'#305'r'#305
            FilterRow.SeparatorWidth = 2
            FilterRow.Visible = True
            FilterRow.ApplyChanges = fracImmediately
            OptionsBehavior.AlwaysShowEditor = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnHidingOnGrouping = False
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsSelection.MultiSelect = True
            OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
            OptionsView.CellAutoHeight = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 35
            OptionsView.Indicator = True
            OptionsView.RowSeparatorColor = clBlack
            Styles.ContentEven = cxStyle1
            Styles.OnGetContentStyle = cxGridDBTableView2StylesGetContentStyle
            object FaturaListdosyaNo: TcxGridDBColumn
              Caption = 'Dosya No'
              DataBinding.FieldName = 'dosyaNo'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 45
            end
            object FaturaListgelisNo: TcxGridDBColumn
              Caption = 'Gelis'
              DataBinding.FieldName = 'gelisNo'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 30
            end
            object FaturaListHASTA: TcxGridDBColumn
              Caption = 'Hasta'
              DataBinding.FieldName = 'HASTA'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 134
            end
            object FaturaListTarih: TcxGridDBColumn
              DataBinding.FieldName = 'Tarih'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 68
            end
            object FaturaListButKodu: TcxGridDBColumn
              DataBinding.FieldName = 'ButKodu'
              Visible = False
              Width = 48
            end
            object FaturaListaciklama: TcxGridDBColumn
              Caption = 'Aciklama'
              DataBinding.FieldName = 'aciklama'
              Visible = False
              Width = 71
            end
            object FaturaListadet: TcxGridDBColumn
              Caption = 'Seans Adet'
              DataBinding.FieldName = 'adet'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 34
            end
            object FaturaListbirimFiyat: TcxGridDBColumn
              Caption = 'Birim Fiyat'
              DataBinding.FieldName = 'birimFiyat'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = '#,###.00'
              Visible = False
              Width = 56
            end
            object FaturaListtutar: TcxGridDBColumn
              Caption = 'Takip Tutar'
              DataBinding.FieldName = 'tutar'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.DisplayFormat = ',0.00;-,0.00'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 65
            end
            object FaturaListkdv: TcxGridDBColumn
              Caption = 'Kdv'
              DataBinding.FieldName = 'kdv'
              Visible = False
              Width = 29
            end
            object FaturaListkdvTutar: TcxGridDBColumn
              Caption = 'Kdv Tutar'
              DataBinding.FieldName = 'kdvTutar'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.DisplayFormat = ',0.00;-,0.00'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 65
            end
            object FaturaListfaturaTutar: TcxGridDBColumn
              Caption = 'Fatura Tutar'
              DataBinding.FieldName = 'faturaTutar'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.DisplayFormat = ',0.00;-,0.00'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 66
            end
            object FaturaListfaturaNo: TcxGridDBColumn
              Caption = 'Fatura No'
              DataBinding.FieldName = 'faturaNo'
              Visible = False
              Width = 55
            end
            object FaturaListtakipNo: TcxGridDBColumn
              Caption = 'TakipNo'
              DataBinding.FieldName = 'takipNo'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 65
            end
            object FaturaListGSSFaturaTeslimNo: TcxGridDBColumn
              Caption = 'Fatura Teslim No'
              DataBinding.FieldName = 'GSSFaturaTeslimNo'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 85
            end
            object FaturaListbasvuruNo: TcxGridDBColumn
              Caption = 'Basvuru No'
              DataBinding.FieldName = 'basvuruNo'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 65
            end
            object FaturaListKontrol: TcxGridDBColumn
              Caption = 'Onay'
              DataBinding.FieldName = 'Kontrol'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Images = DATALAR.imag24png
              Properties.Items = <
                item
                  ImageIndex = 31
                  Value = '1'
                end
                item
                  Value = '0'
                end
                item
                end>
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 33
            end
            object FaturaListfaturaTarihi: TcxGridDBColumn
              Caption = 'Fatura Tarihi'
              DataBinding.FieldName = 'faturaTarihi'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 67
            end
            object FaturaListrefNo: TcxGridDBColumn
              DataBinding.FieldName = 'refNo'
              Visible = False
            end
            object FaturaListchk: TcxGridDBColumn
              DataBinding.FieldName = 'chk'
              Visible = False
            end
            object FaturaListCOLUMN1: TcxGridDBColumn
              DataBinding.FieldName = 'COLUMN1'
              Visible = False
            end
            object FaturaListADI1: TcxGridDBColumn
              DataBinding.FieldName = 'ADI1'
              Visible = False
            end
            object FaturaListIlIlce: TcxGridDBColumn
              DataBinding.FieldName = 'IlIlce'
              Visible = False
            end
            object FaturaListTCKIMLIKNO: TcxGridDBColumn
              DataBinding.FieldName = 'TCKIMLIKNO'
              Visible = False
            end
            object FaturaListKARNENO: TcxGridDBColumn
              DataBinding.FieldName = 'KARNENO'
              Visible = False
            end
            object FaturaListSicilNo: TcxGridDBColumn
              DataBinding.FieldName = 'SicilNo'
              Visible = False
            end
            object FaturaListilkTarih: TcxGridDBColumn
              DataBinding.FieldName = 'ilkTarih'
              Visible = False
            end
            object FaturaListbitisTarih: TcxGridDBColumn
              DataBinding.FieldName = 'bitisTarih'
              Visible = False
            end
          end
          object cxGridLevel4: TcxGridLevel
            Caption = 'Hastalar'
            GridView = FaturaList
            Options.DetailFrameColor = clHighlight
          end
        end
      end
      object Panel2: TPanel
        Left = 884
        Top = 0
        Width = 308
        Height = 630
        Align = alClient
        TabOrder = 2
        object cxPageControl1: TcxPageControl
          Left = 1
          Top = 1
          Width = 306
          Height = 628
          Align = alClient
          TabOrder = 0
          Properties.ActivePage = fatura_sayfa1
          ClientRectBottom = 624
          ClientRectLeft = 4
          ClientRectRight = 302
          ClientRectTop = 24
          object fatura_sayfa1: TcxTabSheet
            Caption = 'Hizmet Detay'
            ImageIndex = 0
            object chkTutarTip: TcxCheckBoxKadir
              Left = 0
              Top = 0
              Align = alTop
              Caption = 'Tutar'#305' S'#305'f'#305'rdan B'#252'y'#252'k Olanlar'
              TabOrder = 0
              OnClick = chkTutarTipClick
              BosOlamaz = False
              Width = 298
            end
            object cxGrid2: TcxGrid
              Left = 0
              Top = 21
              Width = 298
              Height = 579
              Align = alClient
              Font.Charset = TURKISH_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              LevelTabs.ImageBorder = 2
              LevelTabs.Style = 1
              LookAndFeel.Kind = lfOffice11
              LookAndFeel.NativeStyle = False
              object cxGridDBTableView3: TcxGridDBTableView
                PopupMenu = PopupMenu1
                Navigator.Buttons.First.Visible = True
                Navigator.Buttons.PriorPage.Visible = True
                Navigator.Buttons.Prior.Visible = True
                Navigator.Buttons.Next.Visible = True
                Navigator.Buttons.NextPage.Visible = True
                Navigator.Buttons.Last.Visible = True
                Navigator.Buttons.Insert.Visible = True
                Navigator.Buttons.Append.Visible = False
                Navigator.Buttons.Delete.Visible = True
                Navigator.Buttons.Edit.Visible = True
                Navigator.Buttons.Post.Visible = True
                Navigator.Buttons.Cancel.Visible = True
                Navigator.Buttons.Refresh.Visible = True
                Navigator.Buttons.SaveBookmark.Visible = True
                Navigator.Buttons.GotoBookmark.Visible = True
                Navigator.Buttons.Filter.Visible = True
                FilterBox.CustomizeDialog = False
                DataController.DataSource = DataSource2
                DataController.Filter.Active = True
                DataController.Filter.TranslateBetween = True
                DataController.Filter.TranslateLike = True
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Format = '#,###.#0'
                    Kind = skSum
                    FieldName = 'tutar'
                    Column = cxGridDBColumn5
                  end
                  item
                    Kind = skCount
                    FieldName = 'islemsiraNo'
                    Column = cxGridDBColumn3
                  end>
                DataController.Summary.SummaryGroups = <>
                Filtering.MRUItemsList = False
                Filtering.ColumnMRUItemsList = False
                FilterRow.InfoText = 'Arama Sat'#305'r'#305
                FilterRow.SeparatorWidth = 2
                FilterRow.Visible = True
                FilterRow.ApplyChanges = fracImmediately
                OptionsBehavior.AlwaysShowEditor = True
                OptionsBehavior.FocusCellOnTab = True
                OptionsCustomize.ColumnGrouping = False
                OptionsCustomize.ColumnHidingOnGrouping = False
                OptionsCustomize.ColumnsQuickCustomization = True
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsSelection.CellSelect = False
                OptionsSelection.MultiSelect = True
                OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
                OptionsView.CellAutoHeight = True
                OptionsView.Footer = True
                OptionsView.GroupByBox = False
                OptionsView.Indicator = True
                OptionsView.RowSeparatorColor = clBlack
                Styles.ContentEven = cxStyle1
                Styles.OnGetContentStyle = cxGridDBTableView2StylesGetContentStyle
                object cxGridDBColumn1: TcxGridDBColumn
                  DataBinding.FieldName = 'takipNo'
                  Visible = False
                end
                object cxGridDBTableView3Column1: TcxGridDBColumn
                  DataBinding.FieldName = 'Code'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderAlignmentVert = vaCenter
                  Width = 70
                end
                object cxGridDBColumn2: TcxGridDBColumn
                  Caption = 'Hizmet'
                  DataBinding.FieldName = 'name'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderAlignmentVert = vaCenter
                  Width = 90
                end
                object cxGridDBColumn4: TcxGridDBColumn
                  Caption = 'Tarih'
                  DataBinding.FieldName = 'UTarih'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderAlignmentVert = vaCenter
                  Width = 65
                end
                object cxGridDBColumn5: TcxGridDBColumn
                  Caption = 'Tutar'
                  DataBinding.FieldName = 'tutar'
                  Visible = False
                end
                object cxGridDBTableView3Column2: TcxGridDBColumn
                  Caption = 'Tutar'
                  DataBinding.FieldName = 'tutar'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DisplayFormat = ',0.00;-,0.00'
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Width = 55
                end
                object cxGridDBColumn3: TcxGridDBColumn
                  DataBinding.FieldName = 'islemsiraNo'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderAlignmentVert = vaCenter
                  Width = 69
                end
              end
              object cxGridDBBandedTableView5: TcxGridDBBandedTableView
                DataController.DataModeController.DetailInSQLMode = True
                DataController.DataModeController.GridMode = True
                DataController.DataModeController.SmartRefresh = True
                DataController.DetailKeyFieldNames = 'Tan'#305'm'
                DataController.Filter.Active = True
                DataController.Filter.AutoDataSetFilter = True
                DataController.Filter.TranslateBetween = True
                DataController.Filter.TranslateIn = True
                DataController.Filter.TranslateLike = True
                DataController.KeyFieldNames = 'Tan'#305'm'
                DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText, dcoFocusTopRowAfterSorting, dcoImmediatePost]
                DataController.Summary.DefaultGroupSummaryItems = <
                  item
                    Kind = skSum
                    Position = spFooter
                    Column = cxGridDBBandedColumn18
                  end
                  item
                    Kind = skSum
                    Column = cxGridDBBandedColumn18
                  end>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                Filtering.ColumnFilteredItemsList = True
                FilterRow.InfoText = 'Arama Sat'#305'r'#305
                FilterRow.ApplyChanges = fracImmediately
                OptionsBehavior.AlwaysShowEditor = True
                OptionsBehavior.DragDropText = True
                OptionsBehavior.FocusCellOnTab = True
                OptionsBehavior.FocusFirstCellOnNewRecord = True
                OptionsBehavior.GoToNextCellOnEnter = True
                OptionsBehavior.FocusCellOnCycle = True
                OptionsBehavior.PullFocusing = True
                OptionsData.Deleting = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
                OptionsView.Footer = True
                OptionsView.FooterMultiSummaries = True
                OptionsView.GroupByBox = False
                OptionsView.GroupFooterMultiSummaries = True
                OptionsView.GroupFooters = gfVisibleWhenExpanded
                OptionsView.BandCaptionsInColumnAlternateCaption = True
                OptionsView.BandHeaderEndEllipsis = True
                Bands = <
                  item
                    Caption = 'Geli'#351'ler'
                  end>
                object cxGridDBBandedColumn14: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'Tan'#305'm'
                  Width = 90
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn15: TcxGridDBBandedColumn
                  Caption = 'Tan'#305'm Ad'#305
                  DataBinding.FieldName = 'ad'
                  Width = 150
                  Position.BandIndex = 0
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn16: TcxGridDBBandedColumn
                  Caption = 'Toplam'
                  DataBinding.FieldName = 'adet'
                  Width = 70
                  Position.BandIndex = 0
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn17: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'kurumT'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DisplayFormat = '#,###.#0'
                  Width = 80
                  Position.BandIndex = 0
                  Position.ColIndex = 3
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn18: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'hastaT'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DisplayFormat = '#,###.#0'
                  Width = 80
                  Position.BandIndex = 0
                  Position.ColIndex = 4
                  Position.RowIndex = 0
                end
              end
              object cxGridDBBandedTableView6: TcxGridDBBandedTableView
                DataController.DetailKeyFieldNames = 'gelisNo'
                DataController.KeyFieldNames = 'gelisNo'
                DataController.MasterKeyFieldNames = 'gelisNo'
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsBehavior.AlwaysShowEditor = True
                OptionsView.GroupByBox = False
                Bands = <
                  item
                    Caption = 'Hareketler'
                  end>
                object cxGridDBBandedColumn19: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'NAME1'
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn20: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'SATISF'
                  Position.BandIndex = 0
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
              end
              object cxGridDBBandedTableView7: TcxGridDBBandedTableView
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                Bands = <
                  item
                    Caption = 'i'#351'lemler'
                  end>
              end
              object cxGridDBBandedTableView8: TcxGridDBBandedTableView
                DataController.DataModeController.DetailInSQLMode = True
                DataController.DataModeController.GridMode = True
                DataController.Filter.Active = True
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsView.GroupByBox = False
                OptionsView.BandCaptionsInColumnAlternateCaption = True
                Bands = <
                  item
                  end>
                object cxGridDBBandedColumn21: TcxGridDBBandedColumn
                  Caption = 'Tanim'
                  DataBinding.FieldName = 'TANIM'
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn22: TcxGridDBBandedColumn
                  Caption = 'Hasta Ad'#305
                  DataBinding.FieldName = 'HASTAADI'
                  Position.BandIndex = 0
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn23: TcxGridDBBandedColumn
                  Caption = 'Soyad'#305
                  DataBinding.FieldName = 'HASTASOYADI'
                  Position.BandIndex = 0
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn24: TcxGridDBBandedColumn
                  Caption = 'Hizmet Ad'#305
                  DataBinding.FieldName = 'NAME1'
                  Width = 80
                  Position.BandIndex = 0
                  Position.ColIndex = 3
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn25: TcxGridDBBandedColumn
                  Caption = 'Kurum F'
                  DataBinding.FieldName = 'KSATISF'
                  Position.BandIndex = 0
                  Position.ColIndex = 4
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn26: TcxGridDBBandedColumn
                  Caption = 'Hasta F'
                  DataBinding.FieldName = 'SATISF'
                  Position.BandIndex = 0
                  Position.ColIndex = 5
                  Position.RowIndex = 0
                end
              end
              object cxGridLevel2: TcxGridLevel
                Caption = 'Hastalar'
                GridView = cxGridDBTableView3
                Options.DetailFrameColor = clHighlight
              end
            end
          end
          object fatura_sayfa2: TcxTabSheet
            Caption = 'Hizmet Kodu Toplamlar'#305
            ImageIndex = 1
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object cxGrid1: TcxGrid
              Left = 0
              Top = 0
              Width = 296
              Height = 595
              Align = alClient
              Font.Charset = TURKISH_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              LevelTabs.ImageBorder = 2
              LevelTabs.Style = 1
              LookAndFeel.Kind = lfOffice11
              LookAndFeel.NativeStyle = False
              object cxGridDBTableView1: TcxGridDBTableView
                PopupMenu = PopupMenu1
                Navigator.Buttons.First.Visible = True
                Navigator.Buttons.PriorPage.Visible = True
                Navigator.Buttons.Prior.Visible = True
                Navigator.Buttons.Next.Visible = True
                Navigator.Buttons.NextPage.Visible = True
                Navigator.Buttons.Last.Visible = True
                Navigator.Buttons.Insert.Visible = True
                Navigator.Buttons.Append.Visible = False
                Navigator.Buttons.Delete.Visible = True
                Navigator.Buttons.Edit.Visible = True
                Navigator.Buttons.Post.Visible = True
                Navigator.Buttons.Cancel.Visible = True
                Navigator.Buttons.Refresh.Visible = True
                Navigator.Buttons.SaveBookmark.Visible = True
                Navigator.Buttons.GotoBookmark.Visible = True
                Navigator.Buttons.Filter.Visible = True
                FilterBox.CustomizeDialog = False
                DataController.DataSource = DataSource3
                DataController.Filter.Active = True
                DataController.Filter.TranslateBetween = True
                DataController.Filter.TranslateLike = True
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Kind = skSum
                    Column = cxGridDBTableView1Adet
                  end
                  item
                    Kind = skSum
                    Column = cxGridDBTableView1Tutar
                  end>
                DataController.Summary.SummaryGroups = <>
                Filtering.MRUItemsList = False
                Filtering.ColumnMRUItemsList = False
                FilterRow.InfoText = 'Arama Sat'#305'r'#305
                FilterRow.SeparatorWidth = 2
                FilterRow.ApplyChanges = fracImmediately
                OptionsBehavior.AlwaysShowEditor = True
                OptionsBehavior.FocusCellOnTab = True
                OptionsCustomize.ColumnGrouping = False
                OptionsCustomize.ColumnHidingOnGrouping = False
                OptionsCustomize.ColumnsQuickCustomization = True
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsSelection.CellSelect = False
                OptionsSelection.MultiSelect = True
                OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
                OptionsView.CellAutoHeight = True
                OptionsView.Footer = True
                OptionsView.GroupByBox = False
                OptionsView.Indicator = True
                OptionsView.RowSeparatorColor = clBlack
                Styles.ContentEven = cxStyle1
                Styles.OnGetContentStyle = cxGridDBTableView2StylesGetContentStyle
                object cxGridDBTableView1HizmetKodu: TcxGridDBColumn
                  DataBinding.FieldName = 'HizmetKodu'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderAlignmentVert = vaCenter
                  Width = 88
                end
                object cxGridDBTableView1Tutar: TcxGridDBColumn
                  DataBinding.FieldName = 'Tutar'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DisplayFormat = ',0.00;-,0.00'
                  HeaderAlignmentHorz = taCenter
                  Width = 88
                end
                object cxGridDBTableView1Adet: TcxGridDBColumn
                  DataBinding.FieldName = 'Adet'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderAlignmentVert = vaCenter
                  Width = 73
                end
              end
              object cxGridDBBandedTableView1: TcxGridDBBandedTableView
                DataController.DataModeController.DetailInSQLMode = True
                DataController.DataModeController.GridMode = True
                DataController.DataModeController.SmartRefresh = True
                DataController.DetailKeyFieldNames = 'Tan'#305'm'
                DataController.Filter.Active = True
                DataController.Filter.AutoDataSetFilter = True
                DataController.Filter.TranslateBetween = True
                DataController.Filter.TranslateIn = True
                DataController.Filter.TranslateLike = True
                DataController.KeyFieldNames = 'Tan'#305'm'
                DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText, dcoFocusTopRowAfterSorting, dcoImmediatePost]
                DataController.Summary.DefaultGroupSummaryItems = <
                  item
                    Kind = skSum
                    Position = spFooter
                    Column = cxGridDBBandedColumn5
                  end
                  item
                    Kind = skSum
                    Column = cxGridDBBandedColumn5
                  end>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                Filtering.ColumnFilteredItemsList = True
                FilterRow.InfoText = 'Arama Sat'#305'r'#305
                FilterRow.ApplyChanges = fracImmediately
                OptionsBehavior.AlwaysShowEditor = True
                OptionsBehavior.DragDropText = True
                OptionsBehavior.FocusCellOnTab = True
                OptionsBehavior.FocusFirstCellOnNewRecord = True
                OptionsBehavior.GoToNextCellOnEnter = True
                OptionsBehavior.FocusCellOnCycle = True
                OptionsBehavior.PullFocusing = True
                OptionsData.Deleting = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
                OptionsView.Footer = True
                OptionsView.FooterMultiSummaries = True
                OptionsView.GroupByBox = False
                OptionsView.GroupFooterMultiSummaries = True
                OptionsView.GroupFooters = gfVisibleWhenExpanded
                OptionsView.BandCaptionsInColumnAlternateCaption = True
                OptionsView.BandHeaderEndEllipsis = True
                Bands = <
                  item
                    Caption = 'Geli'#351'ler'
                  end>
                object cxGridDBBandedColumn1: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'Tan'#305'm'
                  Width = 90
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn2: TcxGridDBBandedColumn
                  Caption = 'Tan'#305'm Ad'#305
                  DataBinding.FieldName = 'ad'
                  Width = 150
                  Position.BandIndex = 0
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn3: TcxGridDBBandedColumn
                  Caption = 'Toplam'
                  DataBinding.FieldName = 'adet'
                  Width = 70
                  Position.BandIndex = 0
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn4: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'kurumT'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DisplayFormat = '#,###.#0'
                  Width = 80
                  Position.BandIndex = 0
                  Position.ColIndex = 3
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn5: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'hastaT'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DisplayFormat = '#,###.#0'
                  Width = 80
                  Position.BandIndex = 0
                  Position.ColIndex = 4
                  Position.RowIndex = 0
                end
              end
              object cxGridDBBandedTableView2: TcxGridDBBandedTableView
                DataController.DetailKeyFieldNames = 'gelisNo'
                DataController.KeyFieldNames = 'gelisNo'
                DataController.MasterKeyFieldNames = 'gelisNo'
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsBehavior.AlwaysShowEditor = True
                OptionsView.GroupByBox = False
                Bands = <
                  item
                    Caption = 'Hareketler'
                  end>
                object cxGridDBBandedColumn6: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'NAME1'
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn7: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'SATISF'
                  Position.BandIndex = 0
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
              end
              object cxGridDBBandedTableView3: TcxGridDBBandedTableView
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                Bands = <
                  item
                    Caption = 'i'#351'lemler'
                  end>
              end
              object cxGridDBBandedTableView4: TcxGridDBBandedTableView
                DataController.DataModeController.DetailInSQLMode = True
                DataController.DataModeController.GridMode = True
                DataController.Filter.Active = True
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsView.GroupByBox = False
                OptionsView.BandCaptionsInColumnAlternateCaption = True
                Bands = <
                  item
                  end>
                object cxGridDBBandedColumn8: TcxGridDBBandedColumn
                  Caption = 'Tanim'
                  DataBinding.FieldName = 'TANIM'
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn9: TcxGridDBBandedColumn
                  Caption = 'Hasta Ad'#305
                  DataBinding.FieldName = 'HASTAADI'
                  Position.BandIndex = 0
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn10: TcxGridDBBandedColumn
                  Caption = 'Soyad'#305
                  DataBinding.FieldName = 'HASTASOYADI'
                  Position.BandIndex = 0
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn11: TcxGridDBBandedColumn
                  Caption = 'Hizmet Ad'#305
                  DataBinding.FieldName = 'NAME1'
                  Width = 80
                  Position.BandIndex = 0
                  Position.ColIndex = 3
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn12: TcxGridDBBandedColumn
                  Caption = 'Kurum F'
                  DataBinding.FieldName = 'KSATISF'
                  Position.BandIndex = 0
                  Position.ColIndex = 4
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn13: TcxGridDBBandedColumn
                  Caption = 'Hasta F'
                  DataBinding.FieldName = 'SATISF'
                  Position.BandIndex = 0
                  Position.ColIndex = 5
                  Position.RowIndex = 0
                end
              end
              object cxGridLevel1: TcxGridLevel
                Caption = 'Hastalar'
                GridView = cxGridDBTableView1
                Options.DetailFrameColor = clHighlight
              end
            end
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Fatura Kay'#305't LOG'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object txtLog: TMemo
        Left = 0
        Top = 0
        Width = 1192
        Height = 630
        Align = alClient
        Lines.Strings = (
          '')
        TabOrder = 0
        OnKeyDown = txtLogKeyDown
      end
      object Button1: TButton
        Left = 16
        Top = 328
        Width = 75
        Height = 25
        Caption = 'Button1'
        TabOrder = 1
        Visible = False
        OnClick = Button1Click
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 152
    Top = 312
    object eyitNoKontrolYap1: TMenuItem
      Tag = -16
      Caption = 'Teyit No Kontrol Yap'
      ImageIndex = 7
      OnClick = eyitNoKontrolYap1Click
    end
    object F4: TMenuItem
      Tag = -3
      Caption = 'Fatura Detay Oku (TeslimNo)'
      ImageIndex = 35
      OnClick = cxButtonCClick
    end
    object T2: TMenuItem
      Tag = -2
      Caption = 'Tutar Oku'
      ImageIndex = 68
      OnClick = cxButtonCClick
    end
    object F3: TMenuItem
      Tag = -1
      Caption = 'Fatura Teslim'
      ImageIndex = 76
      OnClick = cxButtonCClick
    end
    object FaturaOkuTm1: TMenuItem
      Tag = -4
      Caption = 'Fatura Oku'
      ImageIndex = 6
      OnClick = FaturaOkuTm1Click
    end
    object HizmetleriOku1: TMenuItem
      Tag = -5
      Caption = 'Hizmetleri Oku'
      ImageIndex = 9
      OnClick = HizmetleriOku1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Faturaptal1: TMenuItem
      Tag = -6
      Caption = 'Fatura '#304'ptal'
      Visible = False
      OnClick = Faturaptal1Click
    end
    object FaturaptalTm1: TMenuItem
      Tag = -7
      Caption = 'Fatura '#304'ptal'
      ImageIndex = 13
      OnClick = FaturaptalTm1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Onay1: TMenuItem
      Tag = -8
      Caption = 'Tutar Onay'
      ImageIndex = 31
      Visible = False
      OnClick = Onay1Click
    end
    object utarOnayTm1: TMenuItem
      Tag = -9
      Caption = 'Tutar Onay'
      ImageIndex = 31
      OnClick = utarOnayTm1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object mnSe1: TMenuItem
      Tag = -10
      Caption = 'T'#252'm'#252'n'#252' Se'#231
      ImageIndex = 0
      Visible = False
      OnClick = cxButtonCClick
    end
    object mSeme1: TMenuItem
      Tag = 131
      Caption = 'T'#252'm'#252' Se'#231'me'
      ImageIndex = 131
      Visible = False
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object T1: TMenuItem
      Tag = -12
      Caption = 'Toplu Epikriz Ekran'#305
      ImageIndex = 98
      OnClick = T1Click
    end
    object H1: TMenuItem
      Tag = -13
      Caption = 'Hizmet Detay (Takip Bilgisi)'
      ImageIndex = 4
      OnClick = H1Click
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object F1: TMenuItem
      Tag = -14
      Caption = 'Tutar Oku Detay Bilgisi'
      ImageIndex = 68
      OnClick = F1Click
    end
    object F2: TMenuItem
      Tag = -15
      Caption = 'Faturadan '#199#305'kar'
      ImageIndex = 43
      OnClick = cxButtonCClick
    end
    object E1: TMenuItem
      Tag = 9998
      Caption = 'Excele G'#246'nder'
      ImageIndex = 75
      OnClick = cxButtonCClick
    end
    object F5: TMenuItem
      Caption = 'Fatura Kes'
      ImageIndex = 81
      object K1: TMenuItem
        Tag = -18
        Caption = 'Kurum Fatura '#304'cmali'
        OnClick = cxButtonCClick
      end
      object K2: TMenuItem
        Tag = -19
        Caption = 'Kurum Fatura'
        OnClick = cxButtonCClick
      end
    end
    object S1: TMenuItem
      Tag = -20
      Caption = 'Seans Hakedi'#351' '#304'cmali'
      ImageIndex = 80
      OnClick = cxButtonCClick
    end
    object H2: TMenuItem
      Tag = -25
      Caption = 'Hasta Kart'#305
      ImageIndex = 44
      OnClick = cxButtonCClick
    end
    object T3: TMenuItem
      Tag = -26
      Caption = 'Tetkik Tedavi Kart'#305
      ImageIndex = 45
      OnClick = cxButtonCClick
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 56
    Top = 206
    object KurumFaturacmali1: TMenuItem
      Caption = 'Kurum Fatura '#304'cmali'
    end
    object KurumFatura1: TMenuItem
      Caption = 'Kurum Fatura'
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 64
    Top = 256
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = clBtnFace
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = clYellow
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 728
    Top = 104
  end
  object ADO_Detay: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    Parameters = <
      item
        Name = '@t'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'select F.*,isnull(h.code,SLVV) Code,'
      'isnull(h.Name1,'#39'Seans'#39') name,g.UTarih '
      'from FaturaHizmetDetayTutarOku F'
      'left join gelisDetay g on g.TalepSira = F.islemSiraNo'
      'left join hareketler h on h.islemSiraNo = F.islemSiraNo'
      'left join SeansSutKodlari Sk on Sk.SLB = g.HemodiyalizTip'
      'where F.takipNo =:@t'
      'order by g.RTarih'
      '')
    Left = 440
    Top = 314
  end
  object DataSource2: TDataSource
    DataSet = ADO_Detay
    Left = 504
    Top = 314
  end
  object ADO_Detay_toplam: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT sutkodu HizmetKodu,sum(tutar) Tutar,count(*) Adet'
      '  FROM FaturaHizmetDetayTutarOku fd'
      '  JOIN Gelisler g ON g.Tak'#305'pNo = fd.takipNo'
      '  left JOIN gssTakipOkuDiger d ON d.islemSiraNo = fd.islemsiraNo'
      'WHERE g.BHDAT BETWEEN '#39'20150201'#39' AND '#39'20150228'#39
      'GROUP BY d.sutKodu')
    Left = 744
    Top = 186
  end
  object DataSource3: TDataSource
    DataSet = ADO_Detay_toplam
    Left = 800
    Top = 194
  end
end
