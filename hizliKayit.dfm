object frmHizliKayit: TfrmHizliKayit
  Left = 303
  Top = 93
  BorderStyle = bsDialog
  Caption = 'frmHizliKayit'
  ClientHeight = 529
  ClientWidth = 779
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 779
    Height = 529
    Align = alClient
    TabOrder = 0
    ClientRectBottom = 522
    ClientRectLeft = 3
    ClientRectRight = 772
    ClientRectTop = 3
  end
  object GridList: TAdvStringGrid
    Left = 0
    Top = 0
    Width = 779
    Height = 529
    Cursor = crDefault
    Align = alClient
    ColCount = 17
    DrawingStyle = gdsClassic
    RowCount = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing]
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 1
    HoverRowCells = [hcNormal, hcSelected]
    ActiveCellFont.Charset = DEFAULT_CHARSET
    ActiveCellFont.Color = clWindowText
    ActiveCellFont.Height = -11
    ActiveCellFont.Name = 'Tahoma'
    ActiveCellFont.Style = [fsBold]
    ColumnHeaders.Strings = (
      'SiraNo'
      'TC K'#304'ML'#304'K NO'
      #304'S'#304'M'
      'SOY'#304'S'#304'M'
      'C'#304'NS'#304'YET'
      'MEDEN'#304' DURUM'
      'BABA ADI'
      'ANNE ADI'
      #350'EH'#304'R  ADRES'
      'MOB'#304'L TEL'
      'TEL 2'
      'DO'#286'UM YER'#304
      'DO'#286'UM TAR'#304'H'#304
      'UYRU'#286'U'
      'DURUM'
      #304#350'E BA'#350'LAMA TAR'#304'H'#304
      'KAN GRUBU')
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
    FixedRowHeight = 22
    FixedFont.Charset = DEFAULT_CHARSET
    FixedFont.Color = clWindowText
    FixedFont.Height = -11
    FixedFont.Name = 'Tahoma'
    FixedFont.Style = [fsBold]
    FloatFormat = '%.2f'
    Navigation.AllowFmtClipboard = True
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
    SyncGrid.SelectionColumn = True
    SyncGrid.SelectionRow = True
    Version = '6.2.6.1'
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 696
    Top = 224
    object miOtomatikAktarim: TMenuItem
      Tag = 6
      Caption = 'Y'#252'klenen Excel'#39'i Tan'#305'ml'#305' Otomatik Aktar'#305'mlardan Biri '#304#231'in Kullan'
      Hint = 'Y'#252'klenen Excel'#39'i Tan'#305'ml'#305' Otomatik Aktar'#305'mlardan Biri '#304#231'in Kullan'
      ImageIndex = 73
      OnClick = cxButtonCClick
    end
    object miSoyadAyarla: TMenuItem
      Tag = 5
      Caption = 'Soyad'#305' Ayarlamas'#305
      ImageIndex = 32
      OnClick = cxButtonCClick
    end
    object miAlanEslestir: TMenuItem
      Tag = 4
      Caption = 'Otomatik Alan E'#351'le'#351'tirmeyi G'#246'zard'#305' Et ve Ba'#351'tan Yap'
      ImageIndex = 80
      OnClick = cxButtonCClick
    end
    object miVeritabaninaYaz: TMenuItem
      Tag = 1
      Caption = 'Kartlar'#305' Sisteme Yaz Kabul Et'
      ImageIndex = 9
      OnClick = cxButtonCClick
    end
    object miExcelYukle: TMenuItem
      Caption = 'Personel Kartlar'#305' Excel Dosyas'#305'n'#305' A'#231
      ImageIndex = 75
      OnClick = cxButtonCClick
    end
  end
end
