object frmRaporCalistir: TfrmRaporCalistir
  Left = 398
  Top = 236
  BorderStyle = bsToolWindow
  Caption = 'frmRaporCalistir'
  ClientHeight = 247
  ClientWidth = 342
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTitle: TPanel
    Left = 0
    Top = 0
    Width = 342
    Height = 26
    Align = alTop
    Caption = 'Parametre Tan'#305'mlamas'#305' (Rapor '#199'al'#305#351't'#305'r)'
    Color = clBlack
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object pnlToolBar: TPanel
    Left = 0
    Top = 26
    Width = 342
    Height = 36
    Align = alTop
    Color = clBackground
    Font.Charset = TURKISH_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Image2: TImage
      Left = 662
      Top = 5
      Width = 27
      Height = 27
      Transparent = True
    end
    object PanelSource: TPanel
      Left = 569
      Top = 16
      Width = 65
      Height = 17
      AutoSize = True
      BevelOuter = bvNone
      Color = clBackground
      Font.Charset = TURKISH_CHARSET
      Font.Color = clAqua
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object btnAra: TsBitBtn
      Tag = 43
      Left = 5
      Top = 5
      Width = 26
      Height = 27
      Hint = 'Kart Ara'
      DoubleBuffered = True
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 1
      Visible = False
      SkinData.SkinSection = 'BUTTON'
      ImageIndex = 25
    end
  end
  object pnlOnay: TPanel
    Left = 0
    Top = 215
    Width = 342
    Height = 32
    Align = alBottom
    Color = clBackground
    TabOrder = 2
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
    object btnVazgec: TsBitBtn
      Left = 15
      Top = 3
      Width = 83
      Height = 27
      Hint = 'Vazge'#231
      Caption = 'Kapat'
      DoubleBuffered = True
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 1
      Visible = False
      SkinData.SkinSection = 'BUTTON'
      ImageIndex = 12
    end
    object btnSend: TsBitBtn
      Left = 1
      Top = 2
      Width = 340
      Height = 27
      Hint = 'G'#246'nder'
      Caption = 'Raporu '#199'al'#305#351't'#305'r G'#246'r'#252'nt'#252'le'
      DoubleBuffered = True
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 0
      OnClick = btnSendClick
      SkinData.SkinSection = 'BUTTON'
      ImageIndex = 25
      Images = DATALAR.global_img_list4
    end
  end
  object gridParams: TAdvStringGrid
    Tag = 200
    Left = 0
    Top = 62
    Width = 342
    Height = 153
    Cursor = crDefault
    Hint = 'Fatura Bilgileri'
    TabStop = False
    Align = alClient
    Color = clWhite
    ColCount = 3
    Ctl3D = False
    DefaultRowHeight = 21
    DrawingStyle = gdsClassic
    RowCount = 2
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing, goEditing]
    ParentCtl3D = False
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 3
    HoverRowCells = [hcNormal, hcSelected]
    OnGetEditorType = gridParamsGetEditorType
    ActiveCellFont.Charset = TURKISH_CHARSET
    ActiveCellFont.Color = clRed
    ActiveCellFont.Height = -11
    ActiveCellFont.Name = 'Tahoma'
    ActiveCellFont.Style = [fsBold]
    Bands.Active = True
    Bands.PrimaryColor = clWhite
    Bands.SecondaryColor = clBtnFace
    CellNode.NodeType = cnLeaf
    CellNode.ExpandGlyph.Data = {
      36010000424D3601000000000000760000002800000011000000100000000100
      040000000000C0000000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      5555500000005555555555555555500000005555555555555555500000005555
      55555555555550000000550000000000555550000000500B8B8B8B8B05555000
      000050F0B8B8B8B8B0555000000050BF0B8B8B8B8B055000000050FBF0000000
      00055000000050BFBFBFBFB055555000000050FBFBFBFBF055555000000050BF
      BFBF0005555550000000550BFBF0555555555000000055700007555555555000
      0000555555555555555550000000555555555555555550000000}
    CellNode.ContractGlyph.Data = {
      F6000000424DF60000000000000076000000280000000F000000100000000100
      04000000000080000000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      5550555555555555555055555555555555505550000000000550550BFBFBFBFB
      0550550FBFBFBFBF0550550BFBFBFBFB0550550FBFBFBFBF0550550BFBFBFBFB
      0550550FBFBFBFBF055055000000000055505550FBFB05555550555700007555
      5550555555555555555055555555555555505555555555555550}
    ColumnHeaders.Strings = (
      ''
      'Parametre Ad'#305
      'Parametre De'#287'eri'
      '')
    ControlLook.FixedGradientHoverFrom = clGray
    ControlLook.FixedGradientHoverTo = clWhite
    ControlLook.FixedGradientDownFrom = clGray
    ControlLook.FixedGradientDownTo = clSilver
    ControlLook.ControlStyle = csClassic
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
    EnhRowColMove = False
    Filter = <>
    FilterDropDown.Font.Charset = DEFAULT_CHARSET
    FilterDropDown.Font.Color = clWindowText
    FilterDropDown.Font.Height = -11
    FilterDropDown.Font.Name = 'Tahoma'
    FilterDropDown.Font.Style = []
    FilterDropDownClear = '(All)'
    FixedColWidth = 25
    FixedRowHeight = 23
    FixedFont.Charset = TURKISH_CHARSET
    FixedFont.Color = clWindowText
    FixedFont.Height = -11
    FixedFont.Name = 'Tahoma'
    FixedFont.Style = [fsBold]
    Flat = True
    FloatFormat = '%.2f'
    Navigation.AllowClipboardAlways = True
    Navigation.HomeEndKey = heFirstLastRow
    PrintSettings.DateFormat = 'dd/mm/yyyy'
    PrintSettings.Font.Charset = TURKISH_CHARSET
    PrintSettings.Font.Color = clWindowText
    PrintSettings.Font.Height = -11
    PrintSettings.Font.Name = 'Tahoma'
    PrintSettings.Font.Style = []
    PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
    PrintSettings.FixedFont.Color = clWindowText
    PrintSettings.FixedFont.Height = -11
    PrintSettings.FixedFont.Name = 'Tahoma'
    PrintSettings.FixedFont.Style = []
    PrintSettings.HeaderFont.Charset = TURKISH_CHARSET
    PrintSettings.HeaderFont.Color = clWindowText
    PrintSettings.HeaderFont.Height = -11
    PrintSettings.HeaderFont.Name = 'Tahoma'
    PrintSettings.HeaderFont.Style = []
    PrintSettings.FooterFont.Charset = TURKISH_CHARSET
    PrintSettings.FooterFont.Color = clWindowText
    PrintSettings.FooterFont.Height = -11
    PrintSettings.FooterFont.Name = 'Tahoma'
    PrintSettings.FooterFont.Style = []
    PrintSettings.Borders = pbNoborder
    PrintSettings.Centered = False
    PrintSettings.PageNumSep = '/'
    RowIndicator.Data = {
      46050000424D4605000000000000360000002800000018000000120000000100
      1800000000001005000000000000000000000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFEFDEC6FFFFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFAD6B08B58429D6C6B5FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB58429FFDEADC6
      944AC6944AE7E7DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFBD8C39FFE7BDFFDEB5EFC694B58429C6AD8CFFFFFFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFBD8C39FFE7C6FFB55AFFC67BFFDEB5D6AD6BB58429D6C6
      B5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8C39FFEFD6FFB55AFFAD4AFFB55A
      FFD69CFFDEADC6944AC6944AE7E7E7FF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8C39FFF7DEFF
      BD6BFFAD4AFFAD4AFFAD4AFFBD6BFFDEB5EFC694B58429C6AD8CFFFFFFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFBD8C39FFF7E7FFBD6BFFAD4AFFAD4AFFAD4AFFAD4AFFAD4AFFCE8CFFE7C6D6
      AD6BB58429D6C6B5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFBD8C39FFF7E7FFBD6BFFAD4AFFAD4AFFAD4AFFAD4AFFAD
      4AFFAD4AFFB55AFFDEADFFDEB5BD8C39C6944AFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8C39FFF7E7FFC67BFFB55AFFAD4A
      FFAD4AFFAD4AFFAD4AFFAD4AFFBD6BFFE7BDEFCEADB58429C6AD8CFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC6944AFFF7E7FF
      CE8CFFBD6BFFBD6BFFB55AFFB55AFFB55AFFD69CF7E7CEC6944AC6944AE7E7DE
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFBD8C39FFF7E7FFD69CFFC67BFFC67BFFC67BFFCE8CFFEFD6DEBD8CB58429D6
      C6B5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFBD8C39FFF7E7FFDEADFFD694FFD694FFE7C6EFDEC6BD8C
      39B5946BFFF7E7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8C39FFF7E7FFE7BDFFE7BDFFF7DE
      D6AD6BBD8C39DED6CEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8C39FFF7E7FF
      F7DEEFCEADB58429C6AD8CFFFFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFBD8C39FFEFD6C6944AC6944AE7E7DEFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFB58429B58429D6C6B5FF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFF7E7CEFFFFFFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FF}
    ScrollWidth = 16
    SearchFooter.Font.Charset = DEFAULT_CHARSET
    SearchFooter.Font.Color = clWindowText
    SearchFooter.Font.Height = -11
    SearchFooter.Font.Name = 'Tahoma'
    SearchFooter.Font.Style = []
    SelectionColor = clBackground
    SelectionRectangle = True
    SelectionTextColor = clWhite
    SortSettings.Column = 0
    SortSettings.Full = False
    Version = '6.2.6.1'
    WordWrap = False
    ColWidths = (
      25
      160
      114)
    RowHeights = (
      23
      21)
    object txtHatalar: TMemo
      Left = 472
      Top = 240
      Width = 185
      Height = 33
      Lines.Strings = (
        'txtHatalar')
      TabOrder = 2
      Visible = False
    end
  end
  object DataSource1: TDataSource
    DataSet = DATALAR.ADO_SQL5
    Left = 232
    Top = 158
  end
end
