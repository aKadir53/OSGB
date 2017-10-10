object frmTopluSeans: TfrmTopluSeans
  Tag = 100
  Left = 107
  Top = 70
  Align = alClient
  BorderStyle = bsNone
  Caption = 'Seans Onaylama'
  ClientHeight = 637
  ClientWidth = 1325
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTitle: TPanel
    Left = 0
    Top = 0
    Width = 1325
    Height = 2
    Align = alTop
    Caption = 'Hasta Seans Onaylama Cetveli'
    Color = clBlack
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Visible = False
    object chkGeldi: TcxCheckBox
      Left = 516
      Top = 5
      Caption = 'Seansa Gelmeyenleri G'#246'sterme'
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'McSkin'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'McSkin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'McSkin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'McSkin'
      TabOrder = 0
      Transparent = True
      Visible = False
      OnClick = chkGeldiClick
      Width = 209
    end
    object chkGelmeyen: TcxCheckBox
      Left = 749
      Top = 3
      Caption = 'Sadece Seansa Gelmeyenler'
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'McSkin'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'McSkin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'McSkin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'McSkin'
      TabOrder = 1
      Transparent = True
      Visible = False
      OnClick = chkGelmeyenClick
      Width = 209
    end
  end
  object pnlOnay: TPanel
    Left = 0
    Top = 537
    Width = 1325
    Height = 100
    Align = alBottom
    Color = clBackground
    TabOrder = 1
    Visible = False
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
    object cxLabel13: TcxLabel
      Left = 222
      Top = 28
      Caption = 'D'#246'nem Girilen S.'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'mcskin'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'mcskin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'mcskin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'mcskin'
      Transparent = True
    end
    object txtSeansSayi: TcxTextEdit
      Left = 176
      Top = 4
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'mcskin'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'mcskin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'mcskin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'mcskin'
      TabOrder = 0
      Text = '0'
      Width = 43
    end
    object cxLabel8: TcxLabel
      Left = 93
      Top = 6
      Caption = 'Seans Say'#305's'#305
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'mcskin'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'mcskin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'mcskin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'mcskin'
      Transparent = True
    end
    object txtGirilenSeans: TcxTextEdit
      Left = 305
      Top = 4
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'mcskin'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'mcskin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'mcskin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'mcskin'
      TabOrder = 2
      Text = '0'
      Width = 43
    end
    object txtGirilenSeanslabel: TcxLabel
      Left = 222
      Top = 6
      Caption = 'Girilen Seans'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'mcskin'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'mcskin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'mcskin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'mcskin'
      Transparent = True
    end
    object txtGonderilmeyen: TcxTextEdit
      Left = 470
      Top = 4
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'mcskin'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'mcskin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'mcskin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'mcskin'
      TabOrder = 4
      Text = '0'
      Width = 43
    end
    object cxLabel9: TcxLabel
      Left = 354
      Top = 6
      Caption = 'Med.G'#246'nderilmeyen'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'mcskin'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'mcskin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'mcskin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'mcskin'
      Transparent = True
    end
    object txt230: TcxTextEdit
      Left = 659
      Top = 4
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'mcskin'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'mcskin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'mcskin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'mcskin'
      TabOrder = 6
      Text = '0'
      Width = 43
    end
    object cxLabel10: TcxLabel
      Left = 528
      Top = 6
      Caption = 'Seans Say'#305's'#305' (704230)'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'mcskin'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'mcskin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'mcskin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'mcskin'
      Transparent = True
    end
    object txt234: TcxTextEdit
      Left = 838
      Top = 4
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'mcskin'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'mcskin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'mcskin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'mcskin'
      TabOrder = 8
      Text = '0'
      Width = 43
    end
    object cxLabel11: TcxLabel
      Left = 708
      Top = 6
      Caption = 'Seans Say'#305's'#305' (704234)'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'mcskin'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'mcskin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'mcskin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'mcskin'
      Transparent = True
    end
    object txtDonemSeans: TcxTextEdit
      Left = 176
      Top = 26
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'mcskin'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'mcskin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'mcskin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'mcskin'
      TabOrder = 10
      Text = '0'
      Width = 43
    end
    object cxLabel12: TcxLabel
      Left = 93
      Top = 28
      Caption = 'D'#246'nem Seans'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'mcskin'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'mcskin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'mcskin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'mcskin'
      Transparent = True
    end
    object txtDonemGirilen: TcxTextEdit
      Left = 305
      Top = 26
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'mcskin'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'mcskin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'mcskin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'mcskin'
      TabOrder = 12
      Text = '0'
      Width = 43
    end
    object txt230Donem: TcxTextEdit
      Left = 659
      Top = 25
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'mcskin'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'mcskin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'mcskin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'mcskin'
      TabOrder = 14
      Text = '0'
      Width = 43
    end
    object cxLabel14: TcxLabel
      Left = 529
      Top = 27
      Caption = 'D'#246'nem S.  (704230)'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'mcskin'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'mcskin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'mcskin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'mcskin'
      Transparent = True
    end
    object txt234Donem: TcxTextEdit
      Left = 838
      Top = 25
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'mcskin'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'mcskin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'mcskin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'mcskin'
      TabOrder = 16
      Text = '0'
      Width = 43
    end
    object cxLabel15: TcxLabel
      Left = 709
      Top = 27
      Caption = 'Donem S. (704234)'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'mcskin'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'mcskin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'mcskin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'mcskin'
      Transparent = True
    end
    object txt233Donem: TcxTextEdit
      Left = 1001
      Top = 24
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'mcskin'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'mcskin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'mcskin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'mcskin'
      TabOrder = 18
      Text = '0'
      Width = 43
    end
    object cxLabel16: TcxLabel
      Left = 886
      Top = 27
      Caption = 'Donem S. (704233)'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'mcskin'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'mcskin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'mcskin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'mcskin'
      Transparent = True
    end
    object cxGridButToplam: TcxGrid
      Left = 1
      Top = 1
      Width = 1185
      Height = 98
      Align = alLeft
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 20
      LevelTabs.ImageBorder = 2
      LevelTabs.Style = 1
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
            Format = '#.##'
            Kind = skSum
            Column = cxGridDBTableView1Toplam
          end
          item
            Format = '#.##'
            Kind = skSum
            Column = cxGridDBTableView1P704230
          end
          item
            Format = '#.##'
            Kind = skSum
            Column = cxGridDBTableView1P704230Girilen
          end
          item
            Format = '#.##'
            Kind = skSum
            Column = cxGridDBTableView1P704234
          end
          item
            Format = '#.##'
            Kind = skSum
            Column = cxGridDBTableView1P704234Girilen
          end
          item
            Format = '#.##'
            Kind = skSum
            Column = cxGridDBTableView1Column1
          end
          item
            Format = '#.##'
            Kind = skSum
            Column = cxGridDBTableView1Column2
          end
          item
            Format = '#.##'
            Kind = skSum
            Column = cxGridDBTableView1Column3
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
        Styles.OnGetContentStyle = cxGridDBTableView1StylesGetContentStyle
        object cxGridDBTableView1KURUMTIPI: TcxGridDBColumn
          Caption = 'Kurum Tip'
          DataBinding.FieldName = 'KURUMTIPI'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Items = <
            item
              Description = 'SGK'
              ImageIndex = 0
              Value = '1'
            end
            item
              Description = 'Yurt D'#305#351#305
              Value = '99'
            end
            item
              Description = 'Sigorta'
              Value = '98'
            end
            item
              Description = #214'zel'
              Value = '8'
            end>
          HeaderAlignmentHorz = taCenter
          Width = 61
        end
        object cxGridDBTableView1Toplam: TcxGridDBColumn
          Caption = 'Planlanan'
          DataBinding.FieldName = 'Toplam'
          HeaderAlignmentHorz = taCenter
          Width = 56
        end
        object cxGridDBTableView1Column3: TcxGridDBColumn
          DataBinding.FieldName = 'Girilen'
          HeaderAlignmentHorz = taCenter
          Width = 50
        end
        object cxGridDBTableView1P704230: TcxGridDBColumn
          Caption = 'P704230 Plan'
          DataBinding.FieldName = 'P704230'
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object cxGridDBTableView1P704230Girilen: TcxGridDBColumn
          Caption = 'P704230 Girilen'
          DataBinding.FieldName = 'P704230Girilen'
          HeaderAlignmentHorz = taCenter
          Styles.Content = cxStyle6
          Styles.Footer = cxStyle6
          Styles.Header = cxStyle6
          Width = 104
        end
        object cxGridDBTableView1Column1: TcxGridDBColumn
          Caption = 'P704230 Gonderilmeyen'
          DataBinding.FieldName = 'P704230Gonderilmeyen'
          Width = 119
        end
        object cxGridDBTableView1P704234: TcxGridDBColumn
          Caption = 'P704234 Plan'
          DataBinding.FieldName = 'P704234'
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object cxGridDBTableView1P704234Girilen: TcxGridDBColumn
          Caption = 'P704234 Girilen'
          DataBinding.FieldName = 'P704234Girilen'
          HeaderAlignmentHorz = taCenter
          Styles.Content = cxStyle7
          Styles.Footer = cxStyle7
          Styles.Header = cxStyle7
          Width = 110
        end
        object cxGridDBTableView1Column2: TcxGridDBColumn
          Caption = 'P704234 Gonderilmeyen'
          DataBinding.FieldName = 'P704234Gonderilmeyen'
          Width = 121
        end
        object cxGridDBTableView1P704233: TcxGridDBColumn
          Caption = 'P704233 Plan'
          DataBinding.FieldName = 'P704233'
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object cxGridDBTableView1P704233Girilen: TcxGridDBColumn
          Caption = 'P704233 Girilen'
          DataBinding.FieldName = 'P704233Girilen'
          HeaderAlignmentHorz = taCenter
          Width = 79
        end
        object cxGridDBTableView1Kodsuz: TcxGridDBColumn
          DataBinding.FieldName = 'Kodsuz'
          HeaderAlignmentHorz = taCenter
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
    object btnVazgec: TcxButtonKadir
      Left = 1205
      Top = 1
      Width = 119
      Height = 98
      Align = alRight
      Caption = 'Kapat'
      TabOrder = 21
      OnClick = btnVazgecClick
      NewButtonVisible = False
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 1322
    Top = 2
    Align = alRight
    Caption = '.'
    PanelStyle.OfficeBackgroundKind = pobkStyleColor
    Style.LookAndFeel.SkinName = 'UserSkin'
    StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
    StyleFocused.LookAndFeel.SkinName = 'UserSkin'
    StyleHot.LookAndFeel.SkinName = 'UserSkin'
    TabOrder = 2
    Height = 535
    Width = 3
    object chkBiyo: TcxCheckBox
      Left = 1
      Top = -4
      Caption = 'Biyometrik Kimlik Do'#287'rulama'
      Enabled = False
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 0
      Transparent = True
      Visible = False
      Width = 144
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 2
    Align = alClient
    Caption = ' '
    PanelStyle.Active = True
    TabOrder = 3
    Height = 535
    Width = 1322
    object cxPageControl1: TcxPageControl
      Left = 2
      Top = 2
      Width = 1318
      Height = 531
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = cxTabSheet1
      Properties.Style = 11
      ClientRectBottom = 524
      ClientRectLeft = 3
      ClientRectRight = 1311
      ClientRectTop = 26
      object cxTabSheet1: TcxTabSheet
        Caption = 'Seanslar'
        ImageIndex = 125
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object gridHastalar: TAdvStringGrid
          Tag = 200
          Left = -6
          Top = 345
          Width = 1216
          Height = 56
          Cursor = crDefault
          Hint = 'Fatura Bilgileri'
          TabStop = False
          Color = clWhite
          ColCount = 21
          Ctl3D = False
          DefaultColWidth = 20
          DefaultRowHeight = 21
          DrawingStyle = gdsClassic
          RowCount = 2
          Font.Charset = TURKISH_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing, goRowSelect, goFixedColClick]
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          PopupMenu = PopupMenu1
          ScrollBars = ssVertical
          ShowHint = True
          TabOrder = 0
          OnClick = gridHastalarClick
          OnDblClick = gridHastalarDblClick
          OnFixedCellClick = gridHastalarFixedCellClick
          GridLineColor = 15527152
          GridFixedLineColor = 13947601
          HoverRowCells = [hcNormal, hcSelected]
          OnGridHint = gridHastalarGridHint
          OnGetEditorType = gridHastalarGetEditorType
          OnButtonClick = gridHastalarButtonClick
          OnCheckBoxClick = gridHastalarCheckBoxClick
          OnEditCellDone = gridHastalarEditCellDone
          ActiveCellFont.Charset = TURKISH_CHARSET
          ActiveCellFont.Color = clRed
          ActiveCellFont.Height = -11
          ActiveCellFont.Name = 'Tahoma'
          ActiveCellFont.Style = [fsBold]
          ActiveCellColor = 16575452
          ActiveCellColorTo = 16571329
          Bands.Active = True
          Bands.PrimaryColor = clWhite
          Bands.SecondaryColor = clBtnFace
          CellNode.ShowTree = False
          ColumnHeaders.Strings = (
            ''
            'Hasta Ad'#305
            'Durum'
            'Sebeb'
            'Uygulama Tarih'
            'Talep S'#305'ra'
            ''
            'Dosya'
            'Geli'#351
            'Doktor'
            'Mak.No '
            'Seans No'
            'SeansGun'
            'Seans Say'#305
            'Rapor Ba'#351'.Tarihi'
            'Rapor Bit.Tarihi'
            'Rapor Takip No'
            'Takip'
            'ProtokolNo'
            'Kod'
            'M.Kod')
          ControlLook.FixedGradientMirrorFrom = 16049884
          ControlLook.FixedGradientMirrorTo = 16247261
          ControlLook.FixedGradientHoverFrom = 16710648
          ControlLook.FixedGradientHoverTo = 16446189
          ControlLook.FixedGradientHoverMirrorFrom = 16049367
          ControlLook.FixedGradientHoverMirrorTo = 15258305
          ControlLook.FixedGradientDownFrom = 15853789
          ControlLook.FixedGradientDownTo = 15852760
          ControlLook.FixedGradientDownMirrorFrom = 15522767
          ControlLook.FixedGradientDownMirrorTo = 15588559
          ControlLook.FixedGradientDownBorder = 14007466
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
          FilterActive = True
          FilterDropDown.Font.Charset = DEFAULT_CHARSET
          FilterDropDown.Font.Color = clWindowText
          FilterDropDown.Font.Height = -11
          FilterDropDown.Font.Name = 'Tahoma'
          FilterDropDown.Font.Style = []
          FilterDropDownClear = '(All)'
          FixedColWidth = 30
          FixedRowHeight = 30
          FixedRowAlways = True
          FixedFont.Charset = TURKISH_CHARSET
          FixedFont.Color = clWindowText
          FixedFont.Height = -11
          FixedFont.Name = 'Tahoma'
          FixedFont.Style = []
          Flat = True
          FloatFormat = '%.2f'
          Look = glWin7
          MouseActions.AllSelect = True
          MouseActions.DisjunctRowSelect = True
          MouseActions.RangeSelectAndEdit = True
          MouseActions.RowSelect = True
          MouseActions.RowSelectPersistent = True
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
          PrintSettings.RepeatFixedRows = True
          PrintSettings.Orientation = poLandscape
          PrintSettings.FitToPage = fpGrow
          PrintSettings.PageNumSep = '/'
          PrintSettings.NoAutoSize = True
          ScrollWidth = 16
          SearchFooter.Color = 16645370
          SearchFooter.ColorTo = 16247261
          SearchFooter.Font.Charset = DEFAULT_CHARSET
          SearchFooter.Font.Color = clWindowText
          SearchFooter.Font.Height = -11
          SearchFooter.Font.Name = 'Tahoma'
          SearchFooter.Font.Style = []
          SelectionRectangle = True
          SortSettings.Column = 0
          SortSettings.HeaderColor = 16579058
          SortSettings.HeaderColorTo = 16579058
          SortSettings.HeaderMirrorColor = 16380385
          SortSettings.HeaderMirrorColorTo = 16182488
          SyncGrid.SelectionRow = True
          Version = '6.2.6.1'
          WordWrap = False
          ColWidths = (
            30
            149
            32
            70
            81
            107
            50
            2
            27
            84
            44
            41
            47
            40
            77
            67
            60
            60
            63
            24
            20)
          RowHeights = (
            30
            21)
          object Panel1: TPanel
            Left = 384
            Top = 112
            Width = 337
            Height = 227
            TabOrder = 2
            Visible = False
          end
        end
        object cxGrid2: TcxGridKadir
          Left = 0
          Top = 28
          Width = 1308
          Height = 470
          Cursor = crHandPoint
          Align = alClient
          TabOrder = 1
          ExcelFileName = 'TopluSeans'
          ExceleGonder = True
          object Liste: TcxGridDBBandedTableView
            PopupMenu = PopupMenu1
            OnCellDblClick = ListeCellDblClick
            OnFocusedRecordChanged = ListeFocusedRecordChanged
            DataController.DataModeController.SmartRefresh = True
            DataController.DataSource = DataSource1
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = 'Seans Say'#305's'#305'  : #'
                Kind = skCount
                Column = ListehastaAdi
              end
              item
                Format = '#'
                Kind = skSum
                Column = Listedurum
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.AlwaysShowEditor = True
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.GroupBySorting = True
            OptionsData.Deleting = False
            OptionsData.Inserting = False
            OptionsSelection.MultiSelect = True
            OptionsView.NoDataToDisplayInfoText = 'Listelenecek Kay'#305't Yok'
            OptionsView.DataRowHeight = 35
            OptionsView.Footer = True
            OptionsView.GridLines = glHorizontal
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 33
            OptionsView.BandHeaderHeight = 21
            Styles.OnGetContentStyle = ListeStylesGetContentStyle
            Bands = <
              item
                Caption = 'Hasta Bilgileri'
                FixedKind = fkLeft
                Styles.Header = cxStyle2
                Width = 196
              end
              item
                Caption = 'Geli'#351' Bilgisi'
                FixedKind = fkLeft
                Styles.Header = cxStyle2
                Width = 147
              end
              item
                Caption = 'Seans Bilgileri'
                Styles.Header = cxStyle2
                Width = 1402
              end
              item
                Caption = 'Rapor Bilgileri'
                Width = 258
              end>
            object ListeSiraNumarasi: TcxGridDBBandedColumn
              DataBinding.FieldName = 'SiraNumarasi'
              Visible = False
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object ListedosyaNo: TcxGridDBBandedColumn
              DataBinding.FieldName = 'dosyaNo'
              Visible = False
              Position.BandIndex = 2
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object ListeGelisNo: TcxGridDBBandedColumn
              Caption = 'G No'
              DataBinding.FieldName = 'GelisNo'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Editing = False
              Options.FilteringPopup = False
              Options.Sorting = False
              Styles.Content = cxStyle3
              Styles.Header = cxStyle3
              Width = 28
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object ListehastaAdi: TcxGridDBBandedColumn
              Caption = 'Hasta Ad'#305
              DataBinding.FieldName = 'hastaAdi'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Editing = False
              Styles.Content = cxStyle3
              Styles.Header = cxStyle3
              Width = 137
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object Listesirano: TcxGridDBBandedColumn
              Caption = 'Seans ID'
              DataBinding.FieldName = 'sirano'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Styles.Content = cxStyle4
              Width = 64
              Position.BandIndex = 2
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object Listedurum: TcxGridDBBandedColumn
              Caption = 'Durum'
              DataBinding.FieldName = 'durum'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.Alignment = taCenter
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              Properties.OnEditValueChanged = ListedurumPropertiesEditValueChanged
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderHint = 'Onaylamak '#304#231'in '#199'ift T'#305'kla'
              MinWidth = 40
              Options.Editing = False
              Options.HorzSizing = False
              Options.Moving = False
              Styles.Content = cxStyle5
              Width = 40
              Position.BandIndex = 2
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object ListeDiyalizorTipi: TcxGridDBBandedColumn
              DataBinding.FieldName = 'DiyalizorTipi'
              Visible = False
              Position.BandIndex = 2
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object ListeUTarih: TcxGridDBBandedColumn
              DataBinding.FieldName = 'UTarih'
              Visible = False
              Position.BandIndex = 2
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object ListeUTarihDateTime: TcxGridDBBandedColumn
              Caption = 'Uygulama Tarih'
              DataBinding.FieldName = 'UTarihDateTime'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 80
              Position.BandIndex = 2
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object ListeDoktorKod: TcxGridDBBandedColumn
              Caption = 'Doktor'
              DataBinding.FieldName = 'DoktorKod'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.KeyFieldNames = 'kod'
              Properties.ListColumns = <
                item
                  FieldName = 'ADI'
                end>
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = DATALAR.Doktorlar_DataSource
              Properties.OnChange = ListeDoktorKodPropertiesChange
              Properties.OnEditValueChanged = ListeDoktorKodPropertiesEditValueChanged
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Filtering = False
              Options.Sorting = False
              Styles.Content = cxStyle5
              Width = 125
              Position.BandIndex = 2
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object Listedoktor: TcxGridDBBandedColumn
              DataBinding.FieldName = 'doktor'
              Visible = False
              Width = 119
              Position.BandIndex = 2
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object ListeTalepSira: TcxGridDBBandedColumn
              DataBinding.FieldName = 'TalepSira'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Styles.Content = cxStyle4
              Width = 89
              Position.BandIndex = 2
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
            object ListeislemSiraNoYatak: TcxGridDBBandedColumn
              DataBinding.FieldName = 'islemSiraNoYatak'
              Visible = False
              Position.BandIndex = 2
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
            object ListesiranoYatis: TcxGridDBBandedColumn
              DataBinding.FieldName = 'siranoYatis'
              Visible = False
              Position.BandIndex = 2
              Position.ColIndex = 13
              Position.RowIndex = 0
            end
            object ListeTakpNo: TcxGridDBBandedColumn
              Caption = 'Tak'#305'p No'
              DataBinding.FieldName = 'Tak'#305'pNo'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Editing = False
              Options.FilteringPopup = False
              Options.Sorting = False
              Styles.Content = cxStyle3
              Styles.Header = cxStyle3
              Width = 48
              Position.BandIndex = 1
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object ListeSERVIS: TcxGridDBBandedColumn
              DataBinding.FieldName = 'SERVIS'
              Visible = False
              Position.BandIndex = 2
              Position.ColIndex = 14
              Position.RowIndex = 0
            end
            object ListemakinaNo: TcxGridDBBandedColumn
              Caption = 'Mak No'
              DataBinding.FieldName = 'makinaNo'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.DecimalPlaces = 0
              Properties.DisplayFormat = '0#'
              Properties.OnEditValueChanged = ListemakinaNoPropertiesEditValueChanged
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.FilteringPopup = False
              Options.SortByDisplayText = isbtOn
              Styles.Content = cxStyle5
              Width = 39
              Position.BandIndex = 2
              Position.ColIndex = 15
              Position.RowIndex = 0
            end
            object ListebasvuruNo: TcxGridDBBandedColumn
              Caption = 'Ba'#351'vuru No'
              DataBinding.FieldName = 'basvuruNo'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Editing = False
              Options.FilteringPopup = False
              Options.Sorting = False
              Styles.Content = cxStyle3
              Styles.Header = cxStyle3
              Width = 57
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object ListeraporTakipNo: TcxGridDBBandedColumn
              Caption = 'Rapor TakipNo'
              DataBinding.FieldName = 'raporTakipNo'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.Buttons = <
                item
                  Caption = '...'
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = ListeraporTakipNoPropertiesButtonClick
              HeaderAlignmentHorz = taCenter
              Options.FilteringPopup = False
              Options.Sorting = False
              Styles.Content = cxStyle5
              Width = 68
              Position.BandIndex = 2
              Position.ColIndex = 24
              Position.RowIndex = 0
            end
            object ListeraporNo: TcxGridDBBandedColumn
              DataBinding.FieldName = 'raporNo'
              Visible = False
              Position.BandIndex = 3
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object ListeraporTarihi: TcxGridDBBandedColumn
              DataBinding.FieldName = 'raporTarihi'
              Visible = False
              Position.BandIndex = 3
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object ListeverenTesisKodu: TcxGridDBBandedColumn
              DataBinding.FieldName = 'verenTesisKodu'
              Visible = False
              Position.BandIndex = 3
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object ListeseansGun: TcxGridDBBandedColumn
              Caption = 'Seans Gun'
              DataBinding.FieldName = 'seansGun'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Options.Editing = False
              Options.FilteringPopup = False
              Options.Sorting = False
              Width = 37
              Position.BandIndex = 3
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object ListeseansSayi: TcxGridDBBandedColumn
              Caption = 'Seans Sayi'
              DataBinding.FieldName = 'seansSayi'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Options.Editing = False
              Options.FilteringPopup = False
              Options.Sorting = False
              Width = 36
              Position.BandIndex = 3
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object ListebaslangicTarihi: TcxGridDBBandedColumn
              Caption = 'Baslangic Tarihi'
              DataBinding.FieldName = 'baslangicTarihi'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Options.Editing = False
              Options.FilteringPopup = False
              Options.Sorting = False
              Width = 68
              Position.BandIndex = 3
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object ListeBitisTarihi: TcxGridDBBandedColumn
              Caption = 'Bitis Tarihi'
              DataBinding.FieldName = 'BitisTarihi'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Options.Editing = False
              Options.FilteringPopup = False
              Options.Sorting = False
              Width = 70
              Position.BandIndex = 3
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object ListeADI: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ADI'
              Visible = False
              Width = 115
              Position.BandIndex = 2
              Position.ColIndex = 16
              Position.RowIndex = 0
            end
            object Listefoto: TcxGridDBBandedColumn
              DataBinding.FieldName = 'foto'
              PropertiesClassName = 'TcxImageProperties'
              Properties.Center = False
              Properties.GraphicClassName = 'TJPEGImage'
              Properties.GraphicTransparency = gtTransparent
              Properties.Proportional = False
              Properties.Stretch = True
              Visible = False
              HeaderGlyphAlignmentHorz = taCenter
              HeaderImageIndex = 40
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
              IsCaptionAssigned = True
            end
            object ListeSeans: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Seans'
              PropertiesClassName = 'TcxComboBoxProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                '1'
                '2'
                '3'
                '4'
                '5')
              Properties.OnEditValueChanged = ListeSeansPropertiesEditValueChanged
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.FilteringPopup = False
              Options.Sorting = False
              Styles.Content = cxStyle5
              Width = 36
              Position.BandIndex = 2
              Position.ColIndex = 17
              Position.RowIndex = 0
            end
            object ListeTCKIMLIKNO: TcxGridDBBandedColumn
              Caption = 'Tc Kimlik No'
              DataBinding.FieldName = 'TCKIMLIKNO'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 77
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object ListeSNProtokolNo: TcxGridDBBandedColumn
              DataBinding.FieldName = 'SNProtokolNo'
              Visible = False
              Width = 172
              Position.BandIndex = 2
              Position.ColIndex = 18
              Position.RowIndex = 0
            end
            object ListeGIRISKILO: TcxGridDBBandedColumn
              Caption = 'Giri'#351' Kilo'
              DataBinding.FieldName = 'GIRISKILO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.DisplayFormat = ',0.00;-,0.00'
              Properties.OnEditValueChanged = ListeGIRISKILOPropertiesEditValueChanged
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.FilteringPopup = False
              Options.Sorting = False
              Styles.Content = cxStyle5
              Width = 52
              Position.BandIndex = 2
              Position.ColIndex = 36
              Position.RowIndex = 0
            end
            object ListeCIKISKILO: TcxGridDBBandedColumn
              Caption = #199#305'k'#305#351' Kilo'
              DataBinding.FieldName = 'CIKISKILO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.DisplayFormat = ',0.00;-,0.00'
              Properties.OnEditValueChanged = ListeCIKISKILOPropertiesEditValueChanged
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.FilteringPopup = False
              Options.Sorting = False
              Styles.Content = cxStyle5
              Width = 56
              Position.BandIndex = 2
              Position.ColIndex = 37
              Position.RowIndex = 0
            end
            object ListeIdealKilo: TcxGridDBBandedColumn
              DataBinding.FieldName = 'IdealKilo'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 2
              Position.ColIndex = 19
              Position.RowIndex = 0
            end
            object ListeseansKontrol: TcxGridDBBandedColumn
              DataBinding.FieldName = 'seansKontrol'
              Visible = False
              Position.BandIndex = 2
              Position.ColIndex = 20
              Position.RowIndex = 0
            end
            object ListeGIRISYOLU: TcxGridDBBandedColumn
              Caption = 'Giri'#351' Yolu'
              DataBinding.FieldName = 'GIRISYOLU'
              PropertiesClassName = 'TcxComboBoxProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.DropDownListStyle = lsFixedList
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.FilteringPopup = False
              Options.Sorting = False
              Styles.Content = cxStyle5
              Width = 99
              Position.BandIndex = 2
              Position.ColIndex = 38
              Position.RowIndex = 0
            end
            object ListeDC: TcxGridDBBandedColumn
              Caption = 'Diyaliz'#246'r Cinsi'
              DataBinding.FieldName = 'DC'
              PropertiesClassName = 'TcxComboBoxProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.DropDownListStyle = lsFixedList
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.FilteringPopup = False
              Options.Sorting = False
              Styles.Content = cxStyle5
              Width = 110
              Position.BandIndex = 2
              Position.ColIndex = 39
              Position.RowIndex = 0
            end
            object ListeD: TcxGridDBBandedColumn
              Caption = 'Diyalizat'
              DataBinding.FieldName = 'D'
              PropertiesClassName = 'TcxComboBoxProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.DropDownListStyle = lsFixedList
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.FilteringPopup = False
              Options.Sorting = False
              Styles.Content = cxStyle5
              Width = 112
              Position.BandIndex = 2
              Position.ColIndex = 40
              Position.RowIndex = 0
            end
            object ListeYA: TcxGridDBBandedColumn
              DataBinding.FieldName = 'YA'
              PropertiesClassName = 'TcxComboBoxProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.DropDownListStyle = lsFixedList
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.FilteringPopup = False
              Options.Sorting = False
              Styles.Content = cxStyle5
              Width = 30
              Position.BandIndex = 2
              Position.ColIndex = 42
              Position.RowIndex = 0
            end
            object ListeAPH: TcxGridDBBandedColumn
              DataBinding.FieldName = 'APH'
              PropertiesClassName = 'TcxComboBoxProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.DropDownListStyle = lsFixedList
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.FilteringPopup = False
              Options.Sorting = False
              Styles.Content = cxStyle5
              Width = 35
              Position.BandIndex = 2
              Position.ColIndex = 41
              Position.RowIndex = 0
            end
            object ListeKanAlindimi: TcxGridDBBandedColumn
              Caption = 'Kan Alim'
              DataBinding.FieldName = 'KanAlindimi'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.Items = <
                item
                  ImageIndex = 153
                  Value = '1'
                end>
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.FilteringPopup = False
              Options.Sorting = False
              Styles.Content = cxStyle4
              Width = 34
              Position.BandIndex = 2
              Position.ColIndex = 21
              Position.RowIndex = 0
            end
            object ListeVatandasTip: TcxGridDBBandedColumn
              DataBinding.FieldName = 'VatandasTip'
              Visible = False
              Position.BandIndex = 2
              Position.ColIndex = 22
              Position.RowIndex = 0
            end
            object Listebhdat: TcxGridDBBandedColumn
              DataBinding.FieldName = 'bhdat'
              Visible = False
              Position.BandIndex = 2
              Position.ColIndex = 23
              Position.RowIndex = 0
            end
            object Listesebeb: TcxGridDBBandedColumn
              Caption = 'Seansa Girmeme Sebebi'
              DataBinding.FieldName = 'sebeb'
              PropertiesClassName = 'TcxComboBoxProperties'
              Properties.Items.Strings = (
                '0 - Ba'#351'ka Merkeze Ge'#231'ici Gitme'
                '9 - Hastaneye Yatma'
                '10 - Kendi '#304'ste'#287'i '#304'le Girmedi'
                '11 - T'#305'bbi Sebeb')
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.FilteringPopup = False
              Options.Sorting = False
              Styles.Content = cxStyle5
              Width = 212
              Position.BandIndex = 2
              Position.ColIndex = 26
              Position.RowIndex = 0
            end
            object ListeTanG: TcxGridDBBandedColumn
              DataBinding.FieldName = 'TanG'
              Visible = False
              Position.BandIndex = 2
              Position.ColIndex = 27
              Position.RowIndex = 0
            end
            object ListeTanC: TcxGridDBBandedColumn
              DataBinding.FieldName = 'TanC'
              Visible = False
              Position.BandIndex = 2
              Position.ColIndex = 28
              Position.RowIndex = 0
            end
            object ListeNabizG: TcxGridDBBandedColumn
              DataBinding.FieldName = 'NabizG'
              Visible = False
              Position.BandIndex = 2
              Position.ColIndex = 29
              Position.RowIndex = 0
            end
            object ListeNabizC: TcxGridDBBandedColumn
              DataBinding.FieldName = 'NabizC'
              Visible = False
              Position.BandIndex = 2
              Position.ColIndex = 30
              Position.RowIndex = 0
            end
            object ListeTanGK: TcxGridDBBandedColumn
              DataBinding.FieldName = 'TanGK'
              Visible = False
              Position.BandIndex = 2
              Position.ColIndex = 31
              Position.RowIndex = 0
            end
            object ListeTanCK: TcxGridDBBandedColumn
              DataBinding.FieldName = 'TanCK'
              Visible = False
              Position.BandIndex = 2
              Position.ColIndex = 32
              Position.RowIndex = 0
            end
            object ListeHemodiyalizTip: TcxGridDBBandedColumn
              DataBinding.FieldName = 'HemodiyalizTip'
              Visible = False
              Position.BandIndex = 2
              Position.ColIndex = 33
              Position.RowIndex = 0
            end
            object ListeCins: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Cins'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Images = DATALAR.imag24png
              Properties.Items = <
                item
                  ImageIndex = 38
                  Value = '1'
                end
                item
                  ImageIndex = 44
                  Value = '0'
                end>
              Options.Editing = False
              Width = 30
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
              IsCaptionAssigned = True
            end
            object ListeseansRaporKontrol: TcxGridDBBandedColumn
              DataBinding.FieldName = 'seansRaporKontrol'
              Visible = False
              Position.BandIndex = 2
              Position.ColIndex = 34
              Position.RowIndex = 0
            end
            object Listekod: TcxGridDBBandedColumn
              Caption = 'Kod'
              DataBinding.FieldName = 'HemodiyalizTip'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.KeyFieldNames = 'SLB'
              Properties.ListColumns = <
                item
                  FieldName = 'SLVV'
                end>
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.FilteringPopup = False
              Options.Sorting = False
              Styles.Content = cxStyle4
              Width = 68
              Position.BandIndex = 2
              Position.ColIndex = 25
              Position.RowIndex = 0
            end
            object ListeMedulaDonenKod: TcxGridDBBandedColumn
              Caption = 'M.Kod'
              DataBinding.FieldName = 'MedulaDonenKod'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.FilteringPopup = False
              Options.Sorting = False
              Styles.Content = cxStyle4
              Width = 47
              Position.BandIndex = 2
              Position.ColIndex = 35
              Position.RowIndex = 0
            end
            object ListeColumn1: TcxGridDBBandedColumn
              Caption = 'Ya'#351
              DataBinding.FieldName = 'YAs'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.FilteringPopup = False
              Options.Sorting = False
              Styles.Content = cxStyle4
              Styles.Header = cxStyle3
              Width = 29
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object ListeColumn2: TcxGridDBBandedColumn
              DataBinding.FieldName = 'rTarih'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object ListeColumn3: TcxGridDBBandedColumn
              Caption = 'Planlama Tarihi'
              DataBinding.FieldName = 'RTarihDateTime'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Styles.Content = cxStyle5
              Width = 86
              Position.BandIndex = 2
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object ListeColumn4: TcxGridDBBandedColumn
              DataBinding.FieldName = 'rTarih'
              Visible = False
              Position.BandIndex = 2
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object ListeColumn5: TcxGridDBBandedColumn
              DataBinding.FieldName = 'obje'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object ListeColumn6: TcxGridDBBandedColumn
              DataBinding.FieldName = 'KURUMTIPI'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
          end
          object cxGrid2Level1: TcxGridLevel
            GridView = Liste
          end
        end
        object pnlToolBar: TPanel
          Left = 0
          Top = 0
          Width = 1308
          Height = 28
          Align = alTop
          Color = clBackground
          Font.Charset = TURKISH_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          Visible = False
          object txtSeans: TcxComboBox
            Left = 312
            Top = 1
            Hint = 'Seans'
            Align = alLeft
            ParentFont = False
            ParentShowHint = False
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              ''
              '1'
              '2'
              '3'
              '4')
            ShowHint = True
            Style.Font.Charset = TURKISH_CHARSET
            Style.Font.Color = clBlue
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 3
            OnEnter = cxEditEnter
            OnExit = cxEditExit
            OnKeyDown = cxTextEditKeyDown
            Width = 50
          end
          object txtDonem: TcxDateEditKadir
            Left = 76
            Top = 1
            Hint = #304'lk Tarih'
            Align = alLeft
            ParentFont = False
            ParentShowHint = False
            Properties.MaxDate = 219148.000000000000000000
            Properties.MinDate = 2.000000000000000000
            Properties.OnValidate = PropertiesValidate
            ShowHint = True
            Style.Font.Charset = TURKISH_CHARSET
            Style.Font.Color = clBlue
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 1
            OnEnter = cxEditEnter
            OnExit = cxEditExit
            OnKeyDown = cxTextEditKeyDown
            BosOlamaz = False
            ValueTip = tvString
            Width = 118
          end
          object txtDonem2: TcxDateEditKadir
            Left = 194
            Top = 1
            Hint = 'Son Tarih'
            Align = alLeft
            ParentFont = False
            ParentShowHint = False
            Properties.MaxDate = 219148.000000000000000000
            Properties.MinDate = 2.000000000000000000
            Properties.OnValidate = PropertiesValidate
            ShowHint = True
            Style.Font.Charset = TURKISH_CHARSET
            Style.Font.Color = clBlue
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 2
            OnEnter = cxEditEnter
            OnExit = cxEditExit
            OnKeyDown = cxTextEditKeyDown
            BosOlamaz = False
            ValueTip = tvString
            Width = 118
          end
          object txtHasta: TcxTextEdit
            Left = 561
            Top = 1
            Hint = 'Hasta Ad'#305
            Align = alLeft
            ParentFont = False
            ParentShowHint = False
            Properties.OnChange = txtHastaPropertiesChange
            ShowHint = True
            Style.Font.Charset = TURKISH_CHARSET
            Style.Font.Color = clBlue
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 6
            OnEnter = cxEditEnter
            OnExit = cxEditExit
            OnKeyDown = cxTextEditKeyDown
            Width = 159
          end
          object ktip: TcxComboBox
            Left = 437
            Top = 1
            Hint = 'Kurum Tipi'
            Align = alLeft
            ParentFont = False
            ParentShowHint = False
            Properties.DropDownListStyle = lsFixedList
            Properties.DropDownRows = 12
            Properties.Items.Strings = (
              '1 - SGK'
              '99 - SGK (Yurt D'#305#351#305' Sigortal'#305'lar)'
              '8 - '#220'cretli'
              '98 - '#214'zel Kurum - Sigorta'
              '   - T'#252'm'#252)
            ShowHint = True
            Style.Font.Charset = TURKISH_CHARSET
            Style.Font.Color = clBlue
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.TextColor = clBlack
            Style.IsFontAssigned = True
            TabOrder = 5
            Text = '1 - SGK'
            OnEnter = cxEditEnter
            OnExit = cxEditExit
            OnKeyDown = cxTextEditKeyDown
            Width = 124
          end
          object txtkod: TcxComboBox
            Left = 362
            Top = 1
            Hint = 'Hizmet Kodu'
            Align = alLeft
            ParentFont = False
            ParentShowHint = False
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              ''
              'M - P704230'
              'E - P704233'
              '7 - P704234')
            ShowHint = True
            Style.Font.Charset = TURKISH_CHARSET
            Style.Font.Color = clBlue
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 4
            OnEnter = cxEditEnter
            OnExit = cxEditExit
            OnKeyDown = cxTextEditKeyDown
            Width = 75
          end
          object chkTahlil: TCheckBox
            AlignWithMargins = True
            Left = 873
            Top = 4
            Width = 116
            Height = 20
            Align = alLeft
            Caption = 'Tahlilleri G'#246'nder'
            TabOrder = 9
          end
          object chkSor: TCheckBox
            AlignWithMargins = True
            Left = 995
            Top = 4
            Width = 96
            Height = 20
            Align = alLeft
            Caption = 'Yazd'#305'r'#305'rken Sor'
            Color = clBackground
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 10
          end
          object btnList: TcxButtonKadir
            Left = 1
            Top = 1
            Width = 75
            Height = 26
            Align = alLeft
            Caption = '&Listele'
            Glyph.Data = {
              36090000424D3609000000000000360000002800000018000000180000000100
              2000000000000009000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000060000001E000000020000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000505067228181FE0010102730000000200000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000203046E775260FDA5465CFF612F3EFF0203046E00000010000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000203
              036A764E5CFCA4465BFF983B4FFFA34055FF2E1C25B40101022E000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000001030367724D
              5BFBA4465BFF973A4EFF9C3C50FF8F3F53FF0D0C0F5B00000004000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000003050678724E5CFCA446
              5BFF973A4EFF9C3C50FF913E52FF1311166D0000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000030506757D5160FFA4465BFF973A
              4EFF9B3C50FF933E52FF19131A7B000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000011000000330000
              003C000000310000000E000000000101012E78505FF9A34459FF973A4EFF9B3C
              50FF923E52FF17141A7A00000000000000000000000000000000000000000000
              000000000000000000000101010E090B0B4B0C0507982B0708D9602828F76B31
              31FB5D2526F6250506D40000007B14171771A96778FF973449FF9B3C50FF953E
              53FF19141A7D0000000000000000000000000000000000000000000000000000
              000000000000000000061E1E1E81735154F3C8918FFFF9D0C0FFFFEAD4FFFFEC
              D5FFFFE8D2FFF5C9B8FFB26C66FF643638F5AA9CA2FF9C475BFF953A4FFF2018
              1F8C000000000000000000000000000000000000000000000000000000000000
              0000000000000B0B0B56A0787AFBFFEAE4FFFFFDEEFFFFE8CEFFFCDDBFFFFCDB
              BDFFFCDDBEFFFFE4C8FFFFF5DBFFF0C1B1FFA76A6BFF5C5A5CCA2C282B6C0000
              0002000000000000000000000000000000000000000000000000000000000000
              00000000000957393BCAFFEDEBFFFFFFFDFFFEECDBFFFBD8B8FFFAD4B3FFFAD6
              B6FFFAD6B5FFFBD7B7FFFCDDC1FFFFF3DBFFECBAADFF1E02039F000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000003000044D1A09FFFFFFFFFFFFFFBF7FFFDE5CFFFFCDBBEFFFDE2C8FFFDE4
              CDFFFDE2CAFFFDE0C6FFFCE2C8FFFDE6D1FFFFFBE6FFAD6964FB000000440000
              0000000000000000000000000000000000000000000000000000000000000000
              000D20090B85FEE1D7FFFFFAF3FFFEEFE1FFFDE4CDFFFDEAD6FFFDF2E6FFFEF4
              EBFFFEF3E9FFFEEFE2FFFDECDBFFFDECDAFFFFF2E0FFF3C9BDFF37191C9D0101
              0107000000000000000000000000000000000000000000000000000000000000
              001F451D1EA8FFF3E4FFFEE9D4FFFCDFC5FFFDE6D0FFFEF3E8FFFFFAF6FFFFFC
              FAFFFFFBF8FFFEF7EFFFFEF4E9FFFEF2E6FFFEF2E5FFFFF1E4FF795052C90C0D
              0C1F000000000000000000000000000000000000000000000000000000000100
              00214C2222ACFFF0DBFFFBD6B7FFFAD4B2FFFDE9D5FFFEF7EFFFFFFDFBFFFFFF
              FFFFFFFDFBFFFEFAF5FFFEF9F3FFFEF9F3FFFEF8F1FFFFF9F0FF8F6B6CD21314
              1427000000000000000000000000000000000000000000000000000000000000
              00123D171896FFEAD2FFFAD4B1FFFAD6B6FFFEECDBFFFEF7F0FFFFFBF8FFFFFC
              FAFFFFFCF9FFFFFBF8FFFFFCFAFFFFFDFCFFFFFDFAFFFFF7F1FF88686AC50F10
              101B000000000000000000000000000000000000000000000000000000000000
              000014020357FAD0BEFFFEE2C5FFFCE0C6FFFEEEDEFFFEF5EBFFFEF7F0FFFEF9
              F3FFFFFBF6FFFFFDFBFFFFFFFEFFFFFFFFFFFFFFFFFFF7E1DEFF6956589E0404
              0407000000000000000000000000000000000000000000000000000000000000
              00000000000DB16E69E5FFF8E0FFFDE7D2FFFDEDDCFFFEF1E3FFFEF2E7FFFEF5
              EBFFFFFAF5FFFFFDFCFFFFFFFFFFFFFFFFFFFFFFFFFFD5B6B7F53D3B3C5D0000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000020040566F7CBBDFFFFF7E2FFFDEBD8FFFDEDDCFFFDEEDEFFFDF1
              E4FFFEF8F0FFFFFDFAFFFFFEFDFFFFFFFFFFF7E4E3FF827475AC161616220000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000048131592F0C4B6FFFFFAE5FFFFF1DDFFFEECDAFFFEEF
              DEFFFFF6EAFFFFFEF8FFFFFFFCFFF4DDDBFF9A8486C22D2D2D3A030303030000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000002D020659AD5E5DDDEDC9B9FFFBE8D5FFFAE5
              D4FFF9E1D4FFEBC8C1FFC39897E67161628A2223232703030303000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000040000072B01054852101480693F
              408C63464784443839541716161A000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            TabOrder = 0
            OnClick = btnListClick
            NewButtonVisible = False
          end
          object btnSec: TcxButtonKadir
            Tag = 1
            Left = 720
            Top = 1
            Width = 75
            Height = 26
            Align = alLeft
            Caption = '&Se'#231
            Glyph.Data = {
              36090000424D3609000000000000360000002800000018000000180000000100
              2000000000000009000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000A0000002D0204
              02590A120A840F1A0F940F1A0F950D170D8C0508056500000033000000120000
              0001000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000060000003C101D10A1366036E83797
              38FE22B324FF1BC01CFF1AC11CFF1DBB1FFF2FA230FF3B7B3BF5253F25C80508
              05630000000E0000000000000000000000000000000000000000000000000000
              00000000000000000000000000140A110A82326833E921B523FF04E309FF00F1
              06FF00F606FF00F806FF00F806FF00F706FF00F406FF00ED05FF0FD012FF2F9D
              30FD203720BA0101012F00000001000000000000000000000000000000000000
              00000000000000000014101B109A359236FC07DA0DFF00F108FF00F908FF00F8
              07FF00FC07FF00FE07FF00FE07FF00FE07FF00FD07FF00FB07FF00F708FF00EB
              08FF1ABB1EFF2F5A2FDC0203023B000000000000000000000000000000000000
              00000000000B0D170D8E359437FE02E00AFF00F30AFF00FB0AFF00F808FF62BE
              64FF2FCA32FF00FF08FF00FF08FF00FF08FF00FF08FF00FF08FF00FD09FF00F8
              0AFF00EC0AFF0FC714FF325D32DE000100200000000000000000000000000000
              00010408045C388439F902D809FF00EF0AFF00F90BFF00FB0BFF5CC85FFFD7D6
              D7FFAFBDAFFF09E710FF00FF09FF00FF09FF00FF09FF00FF09FF00FE0AFF00FC
              0BFF00F60BFF00E709FF15BB19FF253F25BC0000000800000000000000000000
              0011274727CC0FBD14FF00E609FF00F509FF00F50AFF55C659FFDEDFDEFFF7F7
              F7FFDFDFDFFF72BD74FF00F40AFF00FF0BFF00FF0BFF00FF0BFF00FF0BFF00FE
              0BFF00FA0AFF00EF0AFF00DC09FF2E9A2FFF070C075600000000000000000406
              04532E962FFE00D608FF00EC09FF04E80CFF72BF73FFE0DFE0FFFAFAFAFFFFFF
              FFFFFCFCFCFFD3D3D3FF72B374FF01F30AFF00FF0AFF00FF0AFF00FF09FF00FF
              09FF00FD09FF00F409FF00E50AFF05C50BFF2B4D2BC900000006000000061C30
              1CAD12B015FF00D508FF2ECA33FFA5C4A5FFE5E5E5FFFAFAFAFFF7F7F7FF7FCD
              80FFF6FAF7FFF5F5F5FFD2D2D2FF68BD6AFF00F607FF00FF07FF00FF07FF00FF
              07FF00FD08FF00F509FF00E80AFF00D107FF339233FF0204023000000016355F
              35E201C005FF30C734FFE8F0E8FFFAFAFAFFFEFEFEFFFCFCFCFFC6DCC6FF02E8
              07FF94DE95FFFFFFFFFFF5F5F5FFD2D1D2FF52C254FF00FD06FF00FF06FF00FF
              07FF00FD08FF00F509FF00E90AFF00D407FF209F22FF0D170D6D000000213B81
              3BFA00C106FF00DA09FF0FD416FFA3DEA4FFFFFFFFFFFAFAFAFF56D759FF00FF
              08FF11E317FFF3F9F4FFFFFFFFFFF4F4F4FFCDCECDFF42C144FF00FC07FF00FF
              08FF00FD09FF00F409FF00E70AFF00D307FF0EAB11FF1D301C9C000000243C86
              3BFE00BE07FF00D709FF00E90AFF00ED0AFF56D059FFE7F3E8FF07E80FFF00FF
              0AFF00FE0AFF95E197FFFFFFFFFFFFFFFFFFEEEEEEFFC7C6C7FF30C734FF00FD
              0AFF00FB0BFF00F20AFF00E40AFF00CF08FF03B007FF223921AA000000223C86
              3BFE00B907FF00D208FF00E50AFF00F30AFF00F90BFF0FE917FF00FE0AFF00FF
              0BFF00FF0BFF22E229FFF2F8F2FFFFFFFFFFFDFDFDFFEAEAEAFFBEC3BEFF3CC4
              41FF00F30BFF00EE0BFF00DF09FF00CA08FF03AC07FF223921AA000000153B7F
              3CF900B105FF00CA07FF01DD0AFF00ED08FF00F708FF00FC07FF00FE07FF00FF
              07FF00FF08FF00FD08FF2BD42FFFF2F8F2FFFFFFFFFFFEFEFEFFEFEFEFFFD0D0
              D0FF77B378FF00E409FF01D60AFF00C106FF0AA20DFF1F341F9E00000006345E
              34DA01A704FF02BF09FF05D30DFF00E307FF00F006FF00F806FF00FC06FF00FE
              06FF00FF07FF00FF07FF00FE07FF63DA65FFFEFEFEFFFFFFFFFFFEFEFEFFE9E9
              E9FF69B76AFF01DD08FF06CC0EFF00B605FF1C941DFF17281770000000011B2E
              1B97119713FF05B40AFF10C917FF02D708FF00E506FF00F006FF00F706FF00FA
              07FF00FC07FF00FD07FF00FD07FF00F507FF93DF95FFFFFFFFFFFFFFFFFFE6E6
              E6FF42B345FF06D10DFF0FC315FF00AB04FF2E892FFF080E0831000000000204
              022A2E872FFE02A607FF24C129FF0BC911FF01D507FF00E107FF00EA08FF00F0
              08FF00F309FF00F509FF00F509FF00F409FF04E50CFFA9DDAAFFFFFFFFFFE8E8
              E8FF42AB45FF18C61DFF17B71CFF049C07FF336033CB00000001000000000000
              0000274627B70C940FFF28B52CFF28C22DFF09C50FFF00D008FF00DA09FF00E1
              09FF00E509FF00E809FF00E809FF00E709FF00E409FF05D10CFF9AD49BFFF8F8
              F8FF64AB66FF37C23CFF0DA711FF278928FF111D115100000000000000000000
              00000406042F377D38F70C9E0FFF4FC252FF2FC033FF0BC012FF01C608FF00CE
              07FF00D306FF00D507FF00D607FF00D407FF00D107FF00CB07FF04BC0AFF6EBC
              70FF9BC49CFF36B63AFF0F9211FF335833BF0000000100000000000000000000
              0000000000000B120B52328333FE25A627FF71CC73FF4EC551FF1FBB23FF09BA
              0EFF02BC06FF01BE05FF01BE05FF01BD05FF05BB09FF12BA16FF33BF37FF64CA
              67FF57BA5AFF119413FF376E38DC040704100000000000000000000000000000
              0000000000000000000017271763327F33F82FA231FF87D089FF88D489FF63C9
              64FF44C146FF35BD37FF34BD36FF3CBF3EFF53C555FF78D07AFF94D796FF63BF
              65FF1D901EFF376B37D50B140B29000000000000000000000000000000000000
              00000000000000000000000000000D160D43396C39DC2B8E2BFF68BC69FFAEDE
              AFFFC4E8C4FFC4E9C4FFC4E9C4FFC4E8C5FFBEE5BEFF8FD090FF41A542FF2C84
              2DFE305430A90407040F00000000000000000000000000000000000000000000
              000000000000000000000000000000000000020302061B2E1B5E356135CA3785
              37FF439343FF519C52FF539D54FF49974AFF3A8B3AFF397939F22B4A2B9B0B12
              0B32000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000010D17
              0D31243F24822F502FA42F502FA42D4C2D9C182A18570306030C000000000000
              0000000000000000000000000000000000000000000000000000}
            TabOrder = 7
            NewButtonVisible = False
          end
          object btnIptal: TcxButtonKadir
            Left = 795
            Top = 1
            Width = 75
            Height = 26
            Align = alLeft
            Caption = #304'&ptal'
            Glyph.Data = {
              36090000424D3609000000000000360000002800000018000000180000000100
              2000000000000009000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000006000000270000
              05580101137F0101168A0101168A0101108400000363000000370000000F0000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000300000235030333A4080880EA0B0B
              B3FE0B0BB4FF0B0BB4FF0B0BB4FF0B0BB5FF0B0BA8FB06066CE5020225B20000
              00500000000B0000000000000000000000000000000000000000000000000000
              0000000000000000000000000008020224860B0BA2F60A0AAEFF1010B5FF1717
              CAFF1919DFFF1211E1FF1515E1FF1E1EDAFF1717C2FF0C0CB0FF0B0BB1FF0808
              84EE0101119E0000002000000000000000000000000000000000000000000000
              0000000000000000000C05054AAC0B0BB0FF1717B9FF3131E4FF2929FEFF1818
              FFFF0D0CFFFF0909FFFF1010FFFF1B1CFFFF2D2DFFFF3E3FF9FF3434D7FF0D0D
              B0FF0B0BA7FB030329BA00000029000000000000000000000000000000000000
              000000000002040446A30A0AB0FF2B2BC8FF4C4DFAFF3A3AFFFF2626FFFF1515
              FFFF0909FFFF0404FFFF0D0CFFFF1919FFFF292AFFFF3D3DFFFF5252FFFF5656
              EDFF1919B7FF0B0BADFD020222AD0000001A0000000000000000000000000000
              000002021B620B0BB1FF2F2FC6FF6464FEFF4848F3FF3736F3FF2424F3FF1515
              F3FF0E0EFAFF0D0EFFFF1313FFFF1B1BFCFF2726F3FF3737F3FF4A4AF3FF5E5E
              F4FF6C6CF1FF1515B4FF0A0A9DF701010A850000000300000000000000000000
              030F0A0AA1F02121BBFF7A79FDFF6262F2FFC0C0D4FFB9B9C3FFB0B0BBFFADAD
              B9FF6F6FB9FF1B1BFEFF2020FEFF696AC3FFB1B1BBFFB1B1BBFFB1B1BAFFADAD
              B6FF7171E0FF7172EEFF0B0BAFFF070769E10000002D00000000000000000303
              2F710A0AAEFF6768E6FF7D7CFFFF6B6BFFFF8989DCFFFDFDFDFFF5F5F5FFEEEE
              EEFFCACAC9FF3837D8FF3C3CCFFFE4E4E4FFF3F3F3FFF4F4F4FFEBEBEBFF9797
              CEFF7676FEFF8686FFFF3B3BCAFF0B0BAFFE01010A8400000002000001030808
              7ECE1818B5FF8E8EFEFF7E7EFFFF6C6CFFFF5656EEFFCECEE6FFFFFFFFFFFEFE
              FEFFE8E8E8FF9595B7FFBCBCCBFFF5F5F6FFFFFFFFFFFCFCFCFFDFDFE3FF6565
              E5FF7676FFFF8383FFFF7171ECFF0909ADFF05054CCD0000001301010D290B0B
              B4FE4444CEFF8B8CFFFF7C7CFFFF6D6CFFFF5F5FFFFF6E6DDCFFFEFEFEFFFFFF
              FFFFFCFCFCFFEEEEEEFFF2F2F2FFFEFEFEFFFEFEFEFFF4F4F4FF8585CDFF6C6C
              FFFF7676FFFF8181FFFF8A8AFEFF1818B8FF08088DF00000002C020221670B0B
              B4FF5F5FDFFF8686FFFF7878FFFF6D6CFFFF6363FFFF595AF9FFC0C0E2FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9FFCACAD8FF6362F1FF6F6F
              FFFF7675FFFF7D7DFFFF8383FFFF3A3ACCFF0B0BA7FB0000013D020227770B0B
              B4FF5F5FE2FF8080FFFF7677FFFF6D6DFFFF6767FFFF6463FFFF7171D5FFFEFE
              FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECECEBFF8383CAFF7070FFFF7372
              FFFF7777FFFF7A7AFFFF7D7EFFFF4243D0FF0B0BAEFD00000240020227770B0B
              B4FF5959E2FF7878FFFF7373FFFF6D6DFFFF6969FFFF6A6AFFFF8383D4FFFCFC
              FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E4FF8687BEFF7676FEFF7575
              FFFF7575FFFF7676FFFF7878FFFF4141D0FF0B0BAEFD0000013F020222670B0B
              B4FF5352DFFF7171FFFF6E6EFFFF6C6CFFFF6E6EFFFF6C6CEEFFD4D3DDFFFBFB
              FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2FFC0C0C3FF7575E2FF7979
              FFFF7575FFFF7373FFFF7474FFFF4040CFFF0B0BACFC000001340101162A0B0B
              B0FE3B3BCFFF6C6CFFFF6969FFFF6C6CFFFF7473FEFF9393D1FFF5F5F5FFFFFF
              FFFFFFFFFFFFFCFCFDFFFBFBFCFFFFFFFFFFFDFDFDFFE2E2E2FF9696B6FF7E7D
              FCFF7777FFFF7272FFFF7676FFFF2323BEFF090996F100000019000001030808
              85CD1616B7FF6E6EFEFF6868FFFF6E6EFFFF7474E2FFE4E4E6FFFDFDFDFFFFFF
              FFFFF9F9F9FFBDBDD6FFACABCBFFFFFFFFFFFFFFFFFFF8F8F8FFCECECEFF7D7D
              D4FF7A7AFFFF7272FFFF6B6BF4FF0A0AAEFF050555BF00000005000000000404
              3A700A0AAEFF5757E8FF6767FFFF7070FEFFB2B1DFFFFEFEFEFFFEFEFEFFFEFE
              FEFFEEEEF1FFB6B6E6FFBABAF1FFD7D7E2FFFEFEFEFFFEFEFEFFF9F9F9FFB8B8
              D2FF7979F8FF7372FFFF4242D4FF0B0BB1FF01010E5800000000000000000000
              07140A0AA6EE2121BDFF6F6FFDFF7373FDFF8585E1FF9393D9FFA4A4D9FFB1B0
              D9FFBDBEE1FFD5D4FFFFD1D1FFFFBEBDEBFFACACD9FFA2A2D9FF9595D9FF8B8B
              DDFF7C7CFAFF7070F7FF1010B2FF08087AD60000000800000000000000000000
              00000303315C0B0BAFFF3131C9FF7676FFFF8B8AFFFFA1A1FFFFB8B9FFFFCBCB
              FFFFDBDAFFFFDFE0FFFFD9D8FFFFCFCFFFFFC1C1FFFFB2B2FFFFA1A1FFFF8E8E
              FFFF7676FCFF2020BDFF0B0BACFA01010B450000000000000000000000000000
              000000000000070767970A0AAEFF3030C9FF7878FDFF9A9AFFFFB7B8FFFFCBCB
              FFFFD9D9FFFFDEDEFFFFD7D7FFFFCDCCFFFFBEBEFFFFB0B0FFFF9191FFFF6F6F
              F9FF2626C1FF0B0BB1FF02022572000000000000000000000000000000000000
              00000000000000000406070768980B0BAFFF2121BEFF5656E9FF8685FFFFA1A1
              FFFFB9B9FFFFC4C3FFFFBEBEFFFFAEAFFFFF9494FFFF7B7BFEFF4F50E4FF1919
              B9FF0B0BB0FD04043A8400000002000000000000000000000000000000000000
              00000000000000000000000001010505496B0A0AA5F10C0CAFFF2525C2FF4444
              DAFF5151E8FF5454ECFF5555ECFF5050E7FF4141D8FF1E1EBDFF0D0DB0FF0909
              97E60202265A0000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000101101806065A830A0A9DE50C0C
              B0FF0E0EB0FF0A0AAEFF0C0CAFFF0E0EB0FF0C0CB1FE090993DC04043B760000
              050F000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000003040303
              2D410606598207076C9E07076D9F0505537A02021C3700000102000000000000
              0000000000000000000000000000000000000000000000000000}
            TabOrder = 8
            NewButtonVisible = False
          end
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = 'Log'
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object txtLog: TcxMemo
          Left = 0
          Top = 0
          Align = alClient
          Lines.Strings = (
            'txtLog')
          Properties.ScrollBars = ssBoth
          Style.LookAndFeel.SkinName = 'UserSkin'
          StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
          StyleFocused.LookAndFeel.SkinName = 'UserSkin'
          StyleHot.LookAndFeel.SkinName = 'UserSkin'
          TabOrder = 0
          Height = 498
          Width = 1308
        end
      end
    end
    object cxRadioGroup1: TcxRadioGroup
      Left = 88
      Top = 5
      Alignment = alCenterCenter
      ParentFont = False
      Properties.Columns = 6
      Properties.Items = <
        item
          Caption = 'T'#252'm'#252
          Value = '-1'
        end
        item
          Caption = 'Seansa Gelenler'
          Value = '0'
        end
        item
          Caption = 'Seansa Gelmeyenler'
          Value = '1'
        end
        item
          Caption = 'Medulaya G'#246'nderilmeyen'
          Value = '2'
        end
        item
          Caption = ' G'#246'nderilen'
          Value = '3'
        end
        item
          Caption = 'G'#246'nderilen (Tutars'#305'z Kod)'
          Value = '4'
        end>
      Properties.OnChange = cxRadioGroup1PropertiesChange
      ItemIndex = 0
      Style.BorderColor = clNone
      Style.BorderStyle = ebsNone
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 1
      Transparent = True
      Visible = False
      Height = 19
      Width = 1221
      object chkIzın: TCheckBox
        Left = 949
        Top = -4
        Width = 105
        Height = 20
        Caption = 'Seans OnaylarkenDoktor Mesai yada '#304'zin Kontrol'#252' Yapma'
        TabOrder = 6
        Visible = False
        WordWrap = True
      end
    end
  end
  object OdemeBilgiTest: THTTPRIO
    WSDLLocation = 'OdemeBilgisiIslemleri.wsdl'
    Service = 'OdemeBilgisiIslemleriService'
    Port = 'OdemeBilgisiIslemleri'
    HTTPWebNode.Agent = 'Borland SOAP 1.2'
    HTTPWebNode.UseUTF8InHeader = True
    HTTPWebNode.InvokeOptions = [soIgnoreInvalidCerts, soAutoCheckAccessPointViaUDDI]
    HTTPWebNode.WebNodeOptions = []
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soUTF8InHeader, soCacheMimeResponse, soUTF8EncodeXML]
    Left = 3
    Top = 380
  end
  object HTTP1: THTTPRIO
    WSDLLocation = 'HizmetKayitIslemleri.wsdl'
    Service = 'HizmetKayitIslemleriService'
    Port = 'HizmetKayitIslemleri'
    HTTPWebNode.Agent = 'Borland SOAP 1.2'
    HTTPWebNode.UseUTF8InHeader = True
    HTTPWebNode.InvokeOptions = [soIgnoreInvalidCerts, soAutoCheckAccessPointViaUDDI]
    HTTPWebNode.WebNodeOptions = []
    HTTPWebNode.OnBeforePost = HTTP1HTTPWebNode1BeforePost
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soUTF8InHeader, soCacheMimeResponse, soUTF8EncodeXML]
    Left = 339
    Top = 212
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    MenuAnimation = [maLeftToRight]
    OnPopup = PopupMenu1Popup
    Left = 348
    Top = 278
    object SeansMEdulayaKaydet1: TMenuItem
      Tag = -1
      Caption = 'Seanslar'#305' Medulaya Kaydet'
      ImageIndex = 15
      OnClick = cxKaydetClick
    end
    object Seansptal1: TMenuItem
      Tag = -2
      Caption = 'Seanslar'#305'  '#304'ptal Et'
      ImageIndex = 13
      OnClick = cxKaydetClick
    end
    object H3: TMenuItem
      Tag = -18
      Caption = 'Medulada Kay'#305'tl'#305' Hizmet Kodu De'#287'i'#351'tir'
      ImageIndex = 34
      object P1: TMenuItem
        Tag = -704234
        Caption = 'P704230  >>  P704234'
        OnClick = cxKaydetClick
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object P2: TMenuItem
        Tag = -704230
        Caption = 'P704234  >>  P704230'
        OnClick = cxKaydetClick
      end
    end
    object RaporOku1: TMenuItem
      Tag = -3
      Caption = 'Medula Raporlar'#305
      ImageIndex = 67
      OnClick = cxKaydetClick
    end
    object ahlilSonular1: TMenuItem
      Tag = -4
      Caption = 'Tahlil Sonu'#231'lar'#305
      ImageIndex = 45
      OnClick = cxKaydetClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object SeansGzlem1: TMenuItem
      Tag = -5
      Caption = 'Seans G'#246'zlem'
      ImageIndex = 51
      OnClick = cxKaydetClick
    end
    object edaviKart1: TMenuItem
      Tag = -6
      Caption = 'Tedavi Kart'#305
      ImageIndex = 49
      OnClick = cxKaydetClick
    end
    object H2: TMenuItem
      Tag = -7
      Caption = 'Hasta Kart'#305
      ImageIndex = 44
      OnClick = cxKaydetClick
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object D1: TMenuItem
      Tag = -8
      Caption = 'Damar '#304'zi sorgulamas'#305' Yap'
      ImageIndex = 71
      OnClick = cxKaydetClick
    end
    object T1: TMenuItem
      Tag = -9
      Caption = 'Takip Bilgisi Oku'
      ImageIndex = 68
      OnClick = cxKaydetClick
    end
    object H1: TMenuItem
      Tag = -10
      Caption = 'Hastan'#305'n Takipleri'
      ImageIndex = 72
      OnClick = cxKaydetClick
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object K1: TMenuItem
      Tag = -11
      Caption = 'Kan Al'#305'nan Seans Yap'
      ImageIndex = 60
      OnClick = cxKaydetClick
    end
    object S1: TMenuItem
      Tag = -12
      Caption = 'Seans Tarihini De'#287'i'#351'tir'
      ImageIndex = 73
      OnClick = cxKaydetClick
    end
    object D2: TMenuItem
      Tag = -13
      Caption = 'Doktor Bilgisi De'#287'i'#351'tir'
      ImageIndex = 74
      OnClick = cxKaydetClick
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object N5: TMenuItem
      Tag = -14
      Caption = #304'zlem Formlar'#305'n'#305' Yazd'#305'r'
      ImageIndex = 28
      OnClick = cxKaydetClick
    end
    object U1: TMenuItem
      Tag = -15
      Caption = 'Uzman G'#246'zlem Yazd'#305'r'
      ImageIndex = 28
      OnClick = cxKaydetClick
    end
    object E1: TMenuItem
      Tag = 9997
      Caption = 'Excel'#39'e G'#246'nder'
      ImageIndex = 75
      OnClick = cxButtonCClick
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object SeansDetayToplamlarnGster1: TMenuItem
      Tag = -17
      Caption = 'Seans Detay Toplamlar'#305'n'#305' G'#246'ster'
      ImageIndex = 7
      OnClick = SeansDetayToplamlarnGster1Click
    end
    object s2: TMenuItem
      Tag = -20
      Caption = 'Se'#231'ili Seanslar'#305' Onayla'
      ImageIndex = 31
      OnClick = cxKaydetClick
    end
    object S3: TMenuItem
      Tag = -21
      Caption = 'Se'#231'ili Seanslar'#305'n Onay Vazge'#231
      ImageIndex = 33
      OnClick = cxKaydetClick
    end
  end
  object HTTPRIO1: THTTPRIO
    WSDLLocation = 'HastaKabulIslemleri.wsdl'
    Service = 'HastaKabulIslemleriService'
    Port = 'HastaKabulIslemleri'
    HTTPWebNode.Agent = 'Borland SOAP 1.2'
    HTTPWebNode.UserName = '10273002'
    HTTPWebNode.Password = '2730'
    HTTPWebNode.UseUTF8InHeader = True
    HTTPWebNode.InvokeOptions = [soIgnoreInvalidCerts, soAutoCheckAccessPointViaUDDI]
    HTTPWebNode.WebNodeOptions = []
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soUTF8InHeader, soCacheMimeResponse, soUTF8EncodeXML]
    Left = 467
    Top = 172
  end
  object AdvGridExcelIO1: TAdvGridExcelIO
    AdvStringGrid = gridHastalar
    Options.ExportOverwriteMessage = 'File %s already exists'#13'Ok to overwrite ?'
    Options.ExportRawRTF = False
    UseUnicode = False
    GridStartRow = 0
    Version = '3.4.1'
    Left = 888
    Top = 192
  end
  object SaveDialog1: TSaveDialog
    Left = 312
    Top = 216
  end
  object ListeAc1: TListeAc
    ListeBaslik = 'Makinalar'
    TColcount = 4
    TColsW = '40,100,50,50'
    Table = 'makinalar'
    Filtercol = 0
    BaslikRenk = clBlack
    DipRenk = clBlack
    Kolonlar.Strings = (
      'makinaNo'
      'marka'
      'seriNo'
      'salon')
    KolonBasliklari.Strings = (
      'Mak No'
      'Marka'
      'Seri No'
      'Salon')
    Calistir = fgEvet
    BiriktirmeliSecim = False
    Grup = False
    GrupCol = 0
    Left = 24
    Top = 232
  end
  object ADO_Detay_toplam: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    Parameters = <
      item
        Name = '@t1'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 6
        Value = '201607'
      end>
    SQL.Strings = (
      'SELECT k.KURUMTIPI,COUNT(*) Toplam ,'
      'sum(CASE WHEN (gd.durum = 1) THEN 1 ELSE 0 END) Girilen,'
      
        'sum(CASE WHEN (gd.HemodiyalizTip = '#39'M'#39' AND gd.Durum = 0) THEN 1 ' +
        'ELSE 0 END) P704230,'
      
        'sum(CASE WHEN (gd.HemodiyalizTip = '#39'M'#39' AND gd.durum = 1) THEN 1 ' +
        'ELSE 0 END) P704230Girilen,'
      
        'sum(CASE WHEN ((gd.HemodiyalizTip = '#39'M'#39' AND gd.durum = 1) and le' +
        'n(isnull(gd.Talepsira,'#39#39'))=0) THEN 1 ELSE 0 END) P704230Gonderil' +
        'meyen,'
      ' '
      
        'sum(CASE WHEN (gd.HemodiyalizTip = '#39'7'#39' AND gd.Durum = 0) THEN 1 ' +
        'ELSE 0 END) P704234,'
      
        'sum(CASE WHEN (gd.HemodiyalizTip = '#39'7'#39' AND gd.Durum = 1) THEN 1 ' +
        'ELSE 0 END) P704234Girilen,'
      
        'sum(CASE WHEN ((gd.HemodiyalizTip = '#39'7'#39' AND gd.Durum = 1) and le' +
        'n(isnull(gd.Talepsira,'#39#39'))=0) THEN 1 ELSE 0 END) P704234Gonderil' +
        'meyen,'
      ' '
      
        'sum(CASE WHEN (gd.HemodiyalizTip = '#39'E'#39' AND gd.Durum = 0) THEN 1 ' +
        'ELSE 0 END) P704233,'
      
        'sum(CASE WHEN (gd.HemodiyalizTip = '#39'E'#39' AND gd.durum = 1) THEN 1 ' +
        'ELSE 0 END) P704233Girilen,'
      
        'sum(CASE WHEN isnull(gd.HemodiyalizTip,'#39#39') = '#39#39' THEN 1 ELSE 0 EN' +
        'D) Kodsuz     '
      'FROM GelisDetay gd'
      
        '    JOIN gelisler g on g.dosyaNo = gd.dosyano AND g.gelisNo = gd' +
        '.gelisNo'
      '    left JOIN HastaKart hk ON hk.dosyaNo = g.dosyaNo'
      '    left JOIN Kurumlar k ON k.Kurum = hk.Kurum    '
      'WHERE substring(gd.RTarih,1,6) = :@t1  AND hk.Tip = '#39'H'#39
      'group BY k.KURUMTIPI')
    Left = 352
    Top = 386
  end
  object DataSource3: TDataSource
    DataSet = ADO_Detay_toplam
    Left = 408
    Top = 386
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 16
    Top = 168
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = clYellow
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8421631
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsUnderline]
      TextColor = clMaroon
    end
  end
  object ADOQuery1: TADOQuery
    CursorType = ctStatic
    BeforePost = ADOQuery1BeforePost
    AfterPost = ADOQuery1AfterPost
    Parameters = <>
    SQL.Strings = (
      
        'exec sp_TopluSeansGetir '#39'20160701'#39','#39'20160903'#39','#39'1'#39','#39#39','#39#39',0,-1,0,'#39 +
        #39)
    Left = 112
    Top = 378
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 152
    Top = 378
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 24
    Top = 160
    PixelsPerInch = 96
  end
  object cxStyleRepository3: TcxStyleRepository
    Left = 16
    Top = 168
    PixelsPerInch = 96
    object cxStyle3: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
  object cxStyleRepository4: TcxStyleRepository
    Left = 16
    Top = 168
    PixelsPerInch = 96
    object cxStyle4: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clRed
    end
  end
  object cxStyleRepository5: TcxStyleRepository
    Left = 16
    Top = 184
    PixelsPerInch = 96
    object cxStyle5: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlue
    end
  end
  object cxStyleRepository6: TcxStyleRepository
    Left = 32
    Top = 176
    PixelsPerInch = 96
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 8454016
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 8454143
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
  object ListeAc2: TListeAc
    ListeBaslik = 'Raporlar'
    TColcount = 6
    TColsW = '65,65,65,40,40,80'
    Table = 'raporlar'
    Filtercol = 0
    BaslikRenk = clBlack
    DipRenk = clBlack
    Kolonlar.Strings = (
      'raporTakipNo'
      'baslangicTarihi'
      'bitisTarihi'
      'seansGun'
      'seansSayi'
      'verenTesisKodu')
    KolonBasliklari.Strings = (
      'TakipNo'
      'Ba'#351'lang'#305#231
      'Biti'#351
      'G'#252'n'
      'Sayi'
      'Veren Tesis')
    Calistir = fgEvet
    BiriktirmeliSecim = False
    Grup = False
    GrupCol = 0
    Left = 872
    Top = 280
  end
  object ado: TADOQuery
    Parameters = <>
    Left = 472
    Top = 400
  end
end
