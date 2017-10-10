object frmHastaSeans: TfrmHastaSeans
  Tag = 9010
  Left = 0
  Top = 10
  Caption = 'frmHastaSeans'
  ClientHeight = 497
  ClientWidth = 767
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl_Seans: TcxPageControl
    Left = 0
    Top = 0
    Width = 758
    Height = 457
    TabOrder = 0
    Visible = False
    Properties.ActivePage = Seanslar_Sayfa
    Properties.Style = 11
    ClientRectBottom = 450
    ClientRectLeft = 3
    ClientRectRight = 751
    ClientRectTop = 26
    object Seanslar_Sayfa: TcxTabSheet
      Caption = 'Seanslar'
      ImageIndex = 0
      object PageControl_Sayfa_Panel: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        PanelStyle.Active = True
        TabOrder = 0
        Height = 424
        Width = 748
        object cxGrid_Seans: TcxGrid
          Left = 2
          Top = 2
          Width = 603
          Height = 420
          Cursor = crHandPoint
          Align = alLeft
          PopupMenu = PopupMenu5
          TabOrder = 2
          LookAndFeel.NativeStyle = False
          object ListeS: TcxGridDBBandedTableView
            OnCellDblClick = ListeSCellDblClick
            OnFocusedRecordChanged = ListeSFocusedRecordChanged
            DataController.DataSource = DataSource1
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                Column = ListeSColumn1
              end
              item
                Format = '#'
                Kind = skSum
                Column = Listedurum
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.AlwaysShowEditor = True
            OptionsCustomize.ColumnSorting = False
            OptionsCustomize.GroupBySorting = True
            OptionsData.Deleting = False
            OptionsData.Inserting = False
            OptionsSelection.MultiSelect = True
            OptionsView.NoDataToDisplayInfoText = 'Listelenecek Kay'#305't Yok'
            OptionsView.DataRowHeight = 27
            OptionsView.Footer = True
            OptionsView.GridLines = glHorizontal
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 25
            OptionsView.BandHeaderHeight = 30
            OptionsView.BandHeaders = False
            Styles.OnGetContentStyle = ListeSStylesGetContentStyle
            Bands = <
              item
                Caption = 'Hasta Bilgileri'
                FixedKind = fkLeft
                Visible = False
              end
              item
                Caption = 'Geli'#351' Bilgisi'
                FixedKind = fkLeft
                Visible = False
                Width = 146
              end
              item
                Caption = 'Seans Bilgileri'
                HeaderAlignmentHorz = taLeftJustify
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
            object cxGridDBBandedColumn1: TcxGridDBBandedColumn
              DataBinding.FieldName = 'dosyaNo'
              Visible = False
              Position.BandIndex = 2
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn2: TcxGridDBBandedColumn
              Caption = 'G No'
              DataBinding.FieldName = 'GelisNo'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Editing = False
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
              Width = 124
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object ListeSColumn1: TcxGridDBBandedColumn
              Caption = 'Seans G'#252'n'#252
              DataBinding.FieldName = 'SeansGunu'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 65
              Position.BandIndex = 2
              Position.ColIndex = 3
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
              Width = 32
              Position.BandIndex = 2
              Position.ColIndex = 26
              Position.RowIndex = 0
            end
            object Listedurum: TcxGridDBBandedColumn
              Caption = 'Durum'
              DataBinding.FieldName = 'durum'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.Alignment = taRightJustify
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              MinWidth = 40
              Options.Editing = False
              Options.Filtering = False
              Options.HorzSizing = False
              Options.Moving = False
              Options.Sorting = False
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
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 117
              Position.BandIndex = 2
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn3: TcxGridDBBandedColumn
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
              Width = 85
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
              Caption = 'Mak'
              DataBinding.FieldName = 'makinaNo'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Filtering = False
              Options.Sorting = False
              Width = 31
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
              Width = 57
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object ListeraporTakipNo: TcxGridDBBandedColumn
              Caption = 'Rapor'
              DataBinding.FieldName = 'raporTakipNo'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Caption = '...'
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = ListeraporTakipNoPropertiesButtonClick
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Filtering = False
              Options.Sorting = False
              Width = 66
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
              Options.Filtering = False
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
              Options.Filtering = False
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
              Options.Filtering = False
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
              Options.Filtering = False
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
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Filtering = False
              Options.Sorting = False
              Width = 34
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
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Filtering = False
              Options.Sorting = False
              Width = 53
              Position.BandIndex = 2
              Position.ColIndex = 37
              Position.RowIndex = 0
            end
            object ListeCIKISKILO: TcxGridDBBandedColumn
              Caption = #199#305'k'#305#351' Kilo'
              DataBinding.FieldName = 'CIKISKILO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.DisplayFormat = ',0.00;-,0.00'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Filtering = False
              Options.Sorting = False
              Width = 60
              Position.BandIndex = 2
              Position.ColIndex = 38
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
              Options.Filtering = False
              Options.Sorting = False
              Width = 101
              Position.BandIndex = 2
              Position.ColIndex = 39
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
              Options.Filtering = False
              Options.Sorting = False
              Width = 115
              Position.BandIndex = 2
              Position.ColIndex = 40
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
              Options.Filtering = False
              Options.Sorting = False
              Width = 123
              Position.BandIndex = 2
              Position.ColIndex = 41
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
              Options.Filtering = False
              Options.Sorting = False
              Width = 29
              Position.BandIndex = 2
              Position.ColIndex = 43
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
              Options.Filtering = False
              Options.Sorting = False
              Width = 35
              Position.BandIndex = 2
              Position.ColIndex = 42
              Position.RowIndex = 0
            end
            object ListeKanAlindimi: TcxGridDBBandedColumn
              Caption = 'Kan'
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
              Options.Filtering = False
              Options.Sorting = False
              Width = 25
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
              Options.Filtering = False
              Options.Sorting = False
              Width = 209
              Position.BandIndex = 2
              Position.ColIndex = 27
              Position.RowIndex = 0
            end
            object ListeTanG: TcxGridDBBandedColumn
              DataBinding.FieldName = 'TanG'
              Visible = False
              Position.BandIndex = 2
              Position.ColIndex = 28
              Position.RowIndex = 0
            end
            object ListeTanC: TcxGridDBBandedColumn
              DataBinding.FieldName = 'TanC'
              Visible = False
              Position.BandIndex = 2
              Position.ColIndex = 29
              Position.RowIndex = 0
            end
            object ListeNabizG: TcxGridDBBandedColumn
              DataBinding.FieldName = 'NabizG'
              Visible = False
              Position.BandIndex = 2
              Position.ColIndex = 30
              Position.RowIndex = 0
            end
            object ListeNabizC: TcxGridDBBandedColumn
              DataBinding.FieldName = 'NabizC'
              Visible = False
              Position.BandIndex = 2
              Position.ColIndex = 31
              Position.RowIndex = 0
            end
            object ListeTanGK: TcxGridDBBandedColumn
              DataBinding.FieldName = 'TanGK'
              Visible = False
              Position.BandIndex = 2
              Position.ColIndex = 32
              Position.RowIndex = 0
            end
            object ListeTanCK: TcxGridDBBandedColumn
              DataBinding.FieldName = 'TanCK'
              Visible = False
              Position.BandIndex = 2
              Position.ColIndex = 33
              Position.RowIndex = 0
            end
            object ListeHemodiyalizTip: TcxGridDBBandedColumn
              DataBinding.FieldName = 'HemodiyalizTip'
              Visible = False
              Position.BandIndex = 2
              Position.ColIndex = 34
              Position.RowIndex = 0
            end
            object ListeCins: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Cins'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Items = <
                item
                  ImageIndex = 40
                  Value = '0'
                end
                item
                  ImageIndex = 154
                  Value = '1'
                end>
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
              Position.ColIndex = 35
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
              Properties.ListSource = DATALAR.ADO_DiyalizKodlariSource
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 69
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
              Options.Filtering = False
              Options.Sorting = False
              Width = 51
              Position.BandIndex = 2
              Position.ColIndex = 36
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn4: TcxGridDBBandedColumn
              DataBinding.FieldName = 'YAs'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn5: TcxGridDBBandedColumn
              DataBinding.FieldName = 'rTarih'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object ListeColumn3: TcxGridDBBandedColumn
              Caption = 'Planlama'
              DataBinding.FieldName = 'RTarihDatetime'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Width = 62
              Position.BandIndex = 2
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object ListeColumn4: TcxGridDBBandedColumn
              DataBinding.FieldName = 'rTarih'
              Visible = False
              Position.BandIndex = 2
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object ListeSColumn2: TcxGridDBBandedColumn
              DataBinding.FieldName = 'KURUMTIPI'
              Visible = False
              Position.BandIndex = 2
              Position.ColIndex = 44
              Position.RowIndex = 0
            end
          end
          object cxGrid2Level1: TcxGridLevel
            GridView = ListeS
          end
        end
        object PanelDoktorDuzelt: TcxGroupBox
          Left = 204
          Top = 42
          Caption = 'Seans Doktor Bilgisini De'#287'i'#351'tir'
          Style.LookAndFeel.SkinName = 'LondonLiquidSky'
          StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
          StyleFocused.LookAndFeel.SkinName = 'LondonLiquidSky'
          StyleHot.LookAndFeel.SkinName = 'LondonLiquidSky'
          TabOrder = 0
          Visible = False
          Height = 85
          Width = 286
          object cxGroupBox10: TcxGroupBox
            Left = 3
            Top = 45
            Align = alBottom
            PanelStyle.Active = True
            Style.LookAndFeel.SkinName = 'LondonLiquidSky'
            StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
            StyleFocused.LookAndFeel.SkinName = 'LondonLiquidSky'
            StyleHot.LookAndFeel.SkinName = 'LondonLiquidSky'
            TabOrder = 0
            Height = 32
            Width = 280
            object PanelDoktorDuzelt_Tamam: TcxButton
              Left = 133
              Top = 2
              Width = 73
              Height = 28
              Align = alRight
              Caption = 'Tamam'
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'LondonLiquidSky'
              TabOrder = 0
              OnClick = PanelDoktorDuzelt_TamamClick
            end
            object PanelDoktorDuzelt_Kapat: TcxButton
              Left = 206
              Top = 2
              Width = 72
              Height = 28
              Align = alRight
              Caption = 'Kapat'
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'LondonLiquidSky'
              TabOrder = 1
              OnClick = PanelDoktorDuzelt_KapatClick
            end
          end
          object cxGroupBox11: TcxGroupBox
            Left = 3
            Top = 16
            Align = alClient
            Caption = ' Doktorlar '
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.SkinName = 'LondonLiquidSky'
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
            StyleFocused.LookAndFeel.SkinName = 'LondonLiquidSky'
            StyleHot.LookAndFeel.SkinName = 'LondonLiquidSky'
            TabOrder = 1
            ExplicitLeft = 2
            ExplicitTop = 0
            ExplicitWidth = 282
            ExplicitHeight = 51
            Height = 29
            Width = 280
            object cxLabel5: TcxLabel
              Left = 174
              Top = -5
              Caption = 'lblSira'
              Visible = False
            end
            object cxGrid5: TcxGrid
              Left = 3
              Top = 16
              Width = 274
              Height = 5
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
              LookAndFeel.SkinName = 'LondonLiquidSky'
              object doktorlarGrid: TcxGridDBTableView
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
                DataController.DataSource = DATALAR.Doktorlar_DataSource
                DataController.Filter.Active = True
                DataController.Filter.TranslateBetween = True
                DataController.Filter.TranslateLike = True
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Format = '#,###.#0'
                    Kind = skSum
                    FieldName = 'borc'
                  end
                  item
                    Format = '#,###.#0'
                    Kind = skSum
                    FieldName = 'alacak'
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
                OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
                OptionsView.CellAutoHeight = True
                OptionsView.ColumnAutoWidth = True
                OptionsView.GroupByBox = False
                OptionsView.Indicator = True
                OptionsView.RowSeparatorColor = clBlack
                object doktorlarGridkod: TcxGridDBColumn
                  DataBinding.FieldName = 'kod'
                  Visible = False
                end
                object doktorlarGridADI: TcxGridDBColumn
                  Caption = 'Doktor Ad'#305
                  DataBinding.FieldName = 'ADI'
                  HeaderAlignmentHorz = taCenter
                  HeaderAlignmentVert = vaCenter
                  Options.Editing = False
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
                    Column = cxGridDBBandedColumn23
                  end
                  item
                    Kind = skSum
                    Column = cxGridDBBandedColumn23
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
                object cxGridDBBandedColumn19: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'Tan'#305'm'
                  Width = 90
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn20: TcxGridDBBandedColumn
                  Caption = 'Tan'#305'm Ad'#305
                  DataBinding.FieldName = 'ad'
                  Width = 150
                  Position.BandIndex = 0
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn21: TcxGridDBBandedColumn
                  Caption = 'Toplam'
                  DataBinding.FieldName = 'adet'
                  Width = 70
                  Position.BandIndex = 0
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn22: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'kurumT'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DisplayFormat = '#,###.#0'
                  Width = 80
                  Position.BandIndex = 0
                  Position.ColIndex = 3
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn23: TcxGridDBBandedColumn
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
                object cxGridDBBandedColumn24: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'NAME1'
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn25: TcxGridDBBandedColumn
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
                object cxGridDBBandedColumn26: TcxGridDBBandedColumn
                  Caption = 'Tanim'
                  DataBinding.FieldName = 'TANIM'
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn27: TcxGridDBBandedColumn
                  Caption = 'Hasta Ad'#305
                  DataBinding.FieldName = 'HASTAADI'
                  Position.BandIndex = 0
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn28: TcxGridDBBandedColumn
                  Caption = 'Soyad'#305
                  DataBinding.FieldName = 'HASTASOYADI'
                  Position.BandIndex = 0
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn29: TcxGridDBBandedColumn
                  Caption = 'Hizmet Ad'#305
                  DataBinding.FieldName = 'NAME1'
                  Width = 80
                  Position.BandIndex = 0
                  Position.ColIndex = 3
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn30: TcxGridDBBandedColumn
                  Caption = 'Kurum F'
                  DataBinding.FieldName = 'KSATISF'
                  Position.BandIndex = 0
                  Position.ColIndex = 4
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn31: TcxGridDBBandedColumn
                  Caption = 'Hasta F'
                  DataBinding.FieldName = 'SATISF'
                  Position.BandIndex = 0
                  Position.ColIndex = 5
                  Position.RowIndex = 0
                end
              end
              object cxGridLevel4: TcxGridLevel
                Caption = 'Hastalar'
                GridView = doktorlarGrid
                Options.DetailFrameColor = clHighlight
              end
            end
          end
        end
        object PaneltarihDuzelt: TcxGroupBox
          Left = 16
          Top = 42
          Caption = 'Seans Planlama Tarihini D'#252'zelt'
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'LondonLiquidSky'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'LondonLiquidSky'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'LondonLiquidSky'
          TabOrder = 1
          Visible = False
          Height = 56
          Width = 175
          object cxGroupBox8: TcxGroupBox
            Left = 3
            Top = 16
            Align = alBottom
            PanelStyle.Active = True
            Style.LookAndFeel.SkinName = 'LondonLiquidSky'
            StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
            StyleFocused.LookAndFeel.SkinName = 'LondonLiquidSky'
            StyleHot.LookAndFeel.SkinName = 'LondonLiquidSky'
            TabOrder = 0
            Height = 32
            Width = 169
            object PanelTarihDuzelt_Tamam: TcxButton
              Left = 22
              Top = 2
              Width = 73
              Height = 28
              Align = alRight
              Caption = 'Tamam'
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'LondonLiquidSky'
              TabOrder = 0
              OnClick = PanelTarihDuzelt_TamamClick
            end
            object PanelTarihDuzelt_Kapat: TcxButton
              Left = 95
              Top = 2
              Width = 72
              Height = 28
              Align = alRight
              Caption = 'Kapat'
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'LondonLiquidSky'
              TabOrder = 1
              OnClick = PanelTarihDuzelt_KapatClick
            end
          end
          object cxGroupBox9: TcxGroupBox
            Left = 3
            Top = 16
            Align = alClient
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.SkinName = 'LondonLiquidSky'
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
            StyleFocused.LookAndFeel.SkinName = 'LondonLiquidSky'
            StyleHot.LookAndFeel.SkinName = 'LondonLiquidSky'
            TabOrder = 1
            ExplicitLeft = 2
            ExplicitTop = 0
            ExplicitWidth = 171
            ExplicitHeight = 22
            Height = 0
            Width = 169
            object txtT: TcxDateEdit
              Tag = 101
              Left = 9
              Top = 72
              Style.LookAndFeel.NativeStyle = False
              Style.LookAndFeel.SkinName = 'LondonLiquidSky'
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = 'LondonLiquidSky'
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = 'LondonLiquidSky'
              TabOrder = 0
              Width = 151
            end
            object lblSira: TcxLabel
              Left = 118
              Top = 9
              Caption = 'lblSira'
              Visible = False
            end
            object mevcutTarih: TcxDateEdit
              Tag = 101
              Left = 9
              Top = 30
              Properties.ReadOnly = True
              Style.LookAndFeel.NativeStyle = False
              Style.LookAndFeel.SkinName = 'LondonLiquidSky'
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = 'LondonLiquidSky'
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = 'LondonLiquidSky'
              TabOrder = 2
              Width = 151
            end
            object cxLabel3: TcxLabel
              Left = 9
              Top = 13
              Caption = 'Mevcut Tarih'
            end
            object cxLabel4: TcxLabel
              Left = 9
              Top = 56
              Caption = 'Yeni Tarih'
            end
          end
        end
        object cxGroupBox2: TcxGroupBox
          Left = 605
          Top = 2
          Align = alLeft
          PanelStyle.Active = True
          TabOrder = 3
          Height = 420
          Width = 146
          object chkTahlil: TcxCheckBox
            Left = 2
            Top = 2
            Align = alTop
            Caption = 'Tahlil G'#246'nder'
            TabOrder = 0
            Width = 142
          end
          object chkMesai: TcxCheckBox
            Left = 2
            Top = 2
            Align = alTop
            Caption = 'Doktor Mesai Kontol Yapma'
            TabOrder = 1
            ExplicitTop = 21
            Width = 142
          end
          object cxDBVerticalGrid1: TcxDBVerticalGrid
            Left = 2
            Top = 2
            Width = 142
            Height = 416
            Align = alClient
            LookAndFeel.NativeStyle = False
            OptionsView.RowHeaderWidth = 80
            OptionsData.Editing = False
            OptionsData.Appending = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            TabOrder = 2
            DataController.DataSource = DataSource5
            ExplicitTop = 40
            ExplicitHeight = 378
            Version = 1
            object cxDBVerticalGrid1Toplam: TcxDBEditorRow
              Properties.DataBinding.FieldName = 'Toplam'
              ID = 0
              ParentID = -1
              Index = 0
              Version = 1
            end
            object cxDBVerticalGrid1Girilen: TcxDBEditorRow
              Properties.DataBinding.FieldName = 'Girilen'
              ID = 1
              ParentID = -1
              Index = 1
              Version = 1
            end
            object cxDBVerticalGrid1P704230: TcxDBEditorRow
              Properties.DataBinding.FieldName = 'P704230'
              Styles.Header = cxStyle1
              Styles.Content = cxStyle1
              ID = 2
              ParentID = -1
              Index = 2
              Version = 1
            end
            object cxDBVerticalGrid1P704230Girilen: TcxDBEditorRow
              Properties.Caption = '  Girilen'
              Properties.DataBinding.FieldName = 'P704230Girilen'
              ID = 3
              ParentID = -1
              Index = 3
              Version = 1
            end
            object cxDBVerticalGrid1P704230Gonderilmeyen: TcxDBEditorRow
              Properties.Caption = '  Gonderilmeyen'
              Properties.DataBinding.FieldName = 'P704230Gonderilmeyen'
              Styles.Header = cxStyle3
              Styles.Content = cxStyle3
              ID = 4
              ParentID = -1
              Index = 4
              Version = 1
            end
            object cxDBVerticalGrid1P704234: TcxDBEditorRow
              Properties.DataBinding.FieldName = 'P704234'
              ID = 5
              ParentID = -1
              Index = 5
              Version = 1
            end
            object cxDBVerticalGrid1P704234Girilen: TcxDBEditorRow
              Properties.Caption = '  Girilen'
              Properties.DataBinding.FieldName = 'P704234Girilen'
              ID = 6
              ParentID = -1
              Index = 6
              Version = 1
            end
            object cxDBVerticalGrid1P704234Gonderilmeyen: TcxDBEditorRow
              Properties.Caption = '  Gonderilmeyen'
              Properties.DataBinding.FieldName = 'P704234Gonderilmeyen'
              Styles.Header = cxStyle3
              Styles.Content = cxStyle3
              ID = 7
              ParentID = -1
              Index = 7
              Version = 1
            end
            object cxDBVerticalGrid1P704233: TcxDBEditorRow
              Properties.DataBinding.FieldName = 'P704233'
              ID = 8
              ParentID = -1
              Index = 8
              Version = 1
            end
            object cxDBVerticalGrid1P704233Girilen: TcxDBEditorRow
              Properties.Caption = '  Girilen'
              Properties.DataBinding.FieldName = 'P704233Girilen'
              ID = 9
              ParentID = -1
              Index = 9
              Version = 1
            end
            object cxDBVerticalGrid1Kodsuz: TcxDBEditorRow
              Properties.DataBinding.FieldName = 'Kodsuz'
              ID = 10
              ParentID = -1
              Index = 10
              Version = 1
            end
          end
        end
      end
    end
    object Sayfa_Log: TcxTabSheet
      Caption = 'Log'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object txtHatalar1: TcxMemo
        Left = 0
        Top = 0
        Align = alClient
        Lines.Strings = (
          '')
        TabOrder = 0
        Height = 424
        Width = 748
      end
    end
  end
  object PopupMenu5: TPopupMenu
    Images = DATALAR.imag24png
    Left = 416
    Top = 56
    object S2: TMenuItem
      Tag = -11
      Caption = 'Seanslar'#305' Ol'#305#351'tur'
      ImageIndex = 80
      OnClick = cxButtonCClick
    end
    object S3: TMenuItem
      Tag = -10
      Caption = 'Sil'
      ImageIndex = 43
      OnClick = cxButtonCClick
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object s5: TMenuItem
      Tag = -9
      Caption = 'Seanslar'#305' Medulaya Kaydet'
      ImageIndex = 15
      OnClick = cxButtonCClick
    end
    object S4: TMenuItem
      Tag = -8
      Caption = 'Seans'#305' Meduladan '#304'ptal Et'
      ImageIndex = 13
      OnClick = cxButtonCClick
    end
    object D1: TMenuItem
      Tag = -7
      Caption = 'Damar '#304'zi Kontrolu Yap'
      ImageIndex = 71
      OnClick = cxButtonCClick
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object S6: TMenuItem
      Tag = 260
      Caption = 'Seans '#304'zlem Formu'
      ImageIndex = 51
      OnClick = cxButtonCClick
    end
    object N8: TMenuItem
      Caption = '-'
    end
    object H1: TMenuItem
      Tag = -4
      Caption = 'Seans Tarihini De'#287'i'#351'tir'
      ImageIndex = 73
      OnClick = cxButtonCClick
    end
    object D2: TMenuItem
      Tag = -5
      Caption = 'Doktor Bilgisini De'#287'i'#351'tir'
      ImageIndex = 74
      OnClick = cxButtonCClick
    end
  end
  object Ado_Seans: TADOQuery
    Connection = DATALAR.ADOConnection2
    Parameters = <>
    Left = 24
    Top = 120
  end
  object DataSource1: TDataSource
    DataSet = Ado_Seans
    Left = 24
    Top = 168
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
      'SELECT COUNT(*) Toplam ,'
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
      ''
      ''
      
        'sum(CASE WHEN isnull(gd.HemodiyalizTip,'#39#39') = '#39#39' THEN 1 ELSE 0 EN' +
        'D) Kodsuz '
      '    '
      'FROM GelisDetay gd'
      
        '    JOIN gelisler g on g.dosyaNo = gd.dosyano AND g.gelisNo = gd' +
        '.gelisNo'
      '    left JOIN HastaKart hk ON hk.dosyaNo = g.dosyaNo'
      '    left JOIN Kurumlar k ON k.Kurum = hk.Kurum    '
      
        'WHERE substring(gd.RTarih,1,6) = :@t1  AND hk.Tip = '#39'H'#39' and k.KU' +
        'RUMTIPI in ('#39'1'#39','#39'99'#39')'
      '')
    Left = 24
    Top = 250
  end
  object DataSource5: TDataSource
    DataSet = ADO_Detay_toplam
    Left = 24
    Top = 298
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 616
    Top = 384
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clLime
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 648
    Top = 384
    PixelsPerInch = 96
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 8454143
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
    end
  end
  object cxStyleRepository3: TcxStyleRepository
    Left = 480
    Top = 256
    PixelsPerInch = 96
    object cxStyle3: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clRed
    end
  end
  object ListeAc2: TListeAc
    ListeBaslik = 'Raporlar'
    TColcount = 6
    TColsW = '65,65,65,40,40,80'
    Table = 'raporlar'
    Conn = DATALAR.ADOConnection2
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
    Left = 528
    Top = 152
  end
end
