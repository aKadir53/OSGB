object frmTakipBilgisiOku: TfrmTakipBilgisiOku
  Left = 221
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'frmTakipBilgisiOku'
  ClientHeight = 529
  ClientWidth = 664
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 664
    Height = 529
    ActivePage = TabSheet1
    Align = alClient
    Images = DATALAR.imag24png
    TabHeight = 25
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Takip Bilgisi'
      ImageIndex = 35
      object txtTakipBilgisi: TMemo
        Left = 0
        Top = 0
        Width = 656
        Height = 494
        Align = alClient
        Color = 16764108
        Font.Charset = TURKISH_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Lines.Strings = (
          '')
        ParentFont = False
        TabOrder = 0
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Hizmet Kayd'#305
      ImageIndex = 81
      object hizmetler: TPageControl
        Left = 0
        Top = 0
        Width = 656
        Height = 494
        ActivePage = TabSheet6
        Align = alClient
        Images = DATALAR.imag24png
        TabHeight = 25
        TabOrder = 0
        TabPosition = tpBottom
        object TabSheet3: TTabSheet
          Caption = 'Tahlil Bilgisi'
          ImageIndex = 45
          object Splitter1: TSplitter
            Left = 0
            Top = 182
            Width = 648
            Height = 3
            Cursor = crVSplit
            Align = alTop
            ExplicitWidth = 646
          end
          object DBGridEh1: TDBGridEh
            Left = 0
            Top = 0
            Width = 648
            Height = 182
            Align = alTop
            DataSource = DATALAR.RxTahlilData
            DynProps = <>
            Flat = True
            FooterParams.Color = clWindow
            IndicatorOptions = [gioShowRowIndicatorEh]
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            PopupMenu = PopupMenu1
            TabOrder = 0
            TitleParams.MultiTitle = True
            OnDblClick = DBGridEh1DblClick
            Columns = <
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'siraNo'
                Footers = <>
                Width = 34
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'sutKodu'
                Footers = <>
                Title.Caption = 'Sut Kodu'
                Width = 55
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'name'
                Footers = <>
                Title.Caption = 'Hizmet Ad'#305
                Width = 146
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'islemTarihi'
                Footers = <>
                Title.Caption = 'Tarih'
                Width = 60
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'bransKodu'
                Footers = <>
                Title.Caption = 'Brans Kodu'
                Width = 39
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'hizmetSunucuRefNo'
                Footers = <>
                Width = 100
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'islemSiraNo'
                Footers = <>
                Width = 85
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'drTescilNo'
                Footers = <>
                Width = 50
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'adet'
                Footers = <>
                Width = 29
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
          object GridSonuc: TDBGridEh
            Left = 0
            Top = 185
            Width = 648
            Height = 276
            Align = alClient
            DataSource = DATALAR.RxTahlilSonucData
            DynProps = <>
            Flat = True
            FooterParams.Color = clWindow
            ImeMode = imDisable
            IndicatorOptions = [gioShowRowIndicatorEh]
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            PopupMenu = PopupMenu3
            TabOrder = 1
            TitleParams.MultiTitle = True
            Columns = <
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'islemSiraNo'
                Footers = <>
                Visible = False
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'code'
                Footers = <>
                Width = 80
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'Tanim'
                Footers = <>
                Width = 223
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'sonuc'
                Footers = <>
                Title.Caption = 'Sonu'#231
                Width = 90
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'birim'
                Footers = <>
                Title.Caption = 'Birim'
                Width = 53
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'tip'
                Footers = <>
                Title.Caption = 'Tip'
                Width = 100
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object TabSheet7: TTabSheet
          Caption = 'Tan'#305' Bilgisi'
          ImageIndex = 74
          object DBGridEh8: TDBGridEh
            Left = 0
            Top = 0
            Width = 648
            Height = 461
            Align = alClient
            DataSource = DATALAR.RxTaniData
            DynProps = <>
            Flat = True
            FooterParams.Color = clWindow
            IndicatorOptions = [gioShowRowIndicatorEh]
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            TitleParams.MultiTitle = True
            Columns = <
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'hizmetSunucuRefNo'
                Footers = <>
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'islemSiraNo'
                Footers = <>
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'birincilTani'
                Footers = <>
                Title.Caption = 'Birincil Tani'
                Width = 40
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'taniKodu'
                Footers = <>
                Title.Caption = 'Tani Kodu'
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'taniTipi'
                Footers = <>
                Title.Caption = 'Tani Tipi'
                Width = 40
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object TabSheet10: TTabSheet
          Caption = 'Yatak Bilgisi'
          ImageIndex = 66
          object DBGridEh4: TDBGridEh
            Left = 0
            Top = 0
            Width = 648
            Height = 461
            Align = alClient
            DataSource = DATALAR.RxYatakData
            DynProps = <>
            Flat = True
            FooterParams.Color = clWindow
            IndicatorOptions = [gioShowRowIndicatorEh]
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            PopupMenu = PopupMenu2
            TabOrder = 0
            TitleParams.MultiTitle = True
            Columns = <
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'sutKodu'
                Footers = <>
                Width = 71
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'islemTarihi'
                Footers = <>
                Width = 75
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'bransKodu'
                Footers = <>
                Title.Caption = 'Brans Kodu'
                Width = 40
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'hizmetsunucuRefNo'
                Footers = <>
                Title.Caption = 'Hizmet Sunucu RefNo'
                Width = 80
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'islemSiraNo'
                Footers = <>
                Width = 70
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'drTescilNo'
                Footers = <>
                Width = 57
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'refakatciGunsayisi'
                Footers = <>
                Title.Caption = 'Refakatci Gun Sayisi'
                Width = 50
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'yatisBaslangicTarihi'
                Footers = <>
                Title.Caption = 'Yatis Baslangic Tarihi'
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'yatisBitisTarihi'
                Footers = <>
                Title.Caption = 'Yatis Bitis Tarihi'
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object TabSheet6: TTabSheet
          Caption = 'Seanslar'
          ImageIndex = 80
          object DBGridEh7: TDBGridEh
            Left = 0
            Top = 0
            Width = 648
            Height = 461
            Align = alClient
            DataSource = DATALAR.RxDigerIslemData
            DynProps = <>
            Flat = True
            FooterParams.Color = clWindow
            IndicatorOptions = [gioShowRowIndicatorEh]
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            PopupMenu = PopupMenu4
            TabOrder = 0
            TitleParams.MultiTitle = True
            Columns = <
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'siraNo'
                Footers = <>
                Width = 39
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'sutKodu'
                Footers = <>
                Width = 68
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'islemTarihi'
                Footers = <>
                Width = 86
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'bransKodu'
                Footers = <>
                Width = 62
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'hizmetSunucuRefNo'
                Footers = <>
                Width = 112
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'islemSiraNo'
                Footers = <>
                Width = 78
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'drTescilNo'
                Footers = <>
                Width = 58
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'raporTakipNo'
                Footers = <>
                Width = 77
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'adet'
                Footers = <>
                Width = 38
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'TetkikveRadyoloji'
          ImageIndex = 72
          object DBGridEh2: TDBGridEh
            Left = 0
            Top = 0
            Width = 648
            Height = 461
            Align = alClient
            DataSource = DATALAR.RxRadData
            DynProps = <>
            Flat = True
            FooterParams.Color = clWindow
            IndicatorOptions = [gioShowRowIndicatorEh]
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            PopupMenu = PopupMenu5
            TabOrder = 0
            TitleParams.MultiTitle = True
            OnDblClick = DBGridEh1DblClick
            Columns = <
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'siraNo'
                Footers = <>
                Width = 34
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'sutKodu'
                Footers = <>
                Title.Caption = 'Sut Kodu'
                Width = 55
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'name'
                Footers = <>
                Title.Caption = 'Hizmet Ad'#305
                Width = 132
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'islemTarihi'
                Footers = <>
                Title.Caption = 'Tarih'
                Width = 60
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'bransKodu'
                Footers = <>
                Title.Caption = 'Brans Kodu'
                Width = 39
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'hizmetSunucuRefNo'
                Footers = <>
                Width = 100
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'islemSiraNo'
                Footers = <>
                Width = 62
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'drTescilNo'
                Footers = <>
                Width = 50
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'adet'
                Footers = <>
                Width = 19
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'aciklama'
                Footers = <>
                Title.Caption = 'A'#231#305'klama'
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object TabSheet8: TTabSheet
          Caption = 'Malzeme'
          ImageIndex = 67
          object DBGridEh6: TDBGridEh
            Left = 0
            Top = 0
            Width = 648
            Height = 461
            Align = alClient
            DataSource = DATALAR.RxMalzemeData
            DynProps = <>
            Flat = True
            FooterParams.Color = clWindow
            IndicatorOptions = [gioShowRowIndicatorEh]
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            PopupMenu = PopupMenu6
            TabOrder = 0
            TitleParams.MultiTitle = True
            Columns = <
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'sutKodu'
                Footers = <>
                Width = 63
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'islemTarihi'
                Footers = <>
                Width = 81
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'adet'
                Footers = <>
                Title.Caption = 'Adet'
                Width = 25
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'hizmetSunucuRefNo'
                Footers = <>
                Width = 103
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'paketHaric'
                Footers = <>
                Title.Caption = 'PH'
                Width = 20
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'islemSiraNo'
                Footers = <>
                Width = 80
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'drTescilNo'
                Footers = <>
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'ozelDurum'
                Footers = <>
                Width = 87
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'barkod'
                Footers = <>
                Title.Caption = 'Barkod(UBB)'
                Width = 78
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'kodsuzMalzemeFiyati'
                Footers = <>
                Width = 123
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'bransKodu'
                Footers = <>
                Title.Caption = 'Brans Kodu'
                Width = 34
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Log'
      ImageIndex = 36
      object txtLog: TMemo
        Left = 0
        Top = 0
        Width = 656
        Height = 494
        Align = alClient
        Color = 16764108
        Font.Charset = TURKISH_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Lines.Strings = (
          '')
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 65
    Top = 254
    object SadeceHizmetiptalEt1: TMenuItem
      Tag = 1
      Caption = 'Sadece Hizmeti '#304'ptal Et'
      OnClick = mHizmetleriptalEt1Click
    end
    object GruptakiHizmetleriptalEt1: TMenuItem
      Tag = 2
      Caption = 'Gruptaki Hizmetleri '#304'ptal Et'
      OnClick = mHizmetleriptalEt1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 65
    Top = 310
    object MenuItem2: TMenuItem
      Tag = 2
      Caption = 'Gruptaki Hizmetleri '#304'ptal Et'
      OnClick = MenuItem2Click
    end
  end
  object PopupMenu3: TPopupMenu
    Left = 65
    Top = 366
    object SonularSistemeYaz1: TMenuItem
      Caption = 'Sonu'#231'lar'#305' Sisteme Yaz'
      OnClick = SonularSistemeYaz1Click
    end
  end
  object bilgiT: TRxMemoryData
    FieldDefs = <
      item
        Name = 'tckimlikNo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'muayeneAcilisTarihi'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'sosyalGuvenlikNo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'yakinlikKodu'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'karneNo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'provizyonTuru'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'devredilenKurum'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Durum'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Adi'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DTarihi'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Cinsiyet'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Doktor'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'KayitTarihi'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'takipNo'
        DataType = ftString
        Size = 20
      end>
    Left = 520
    Top = 50
    object bilgiTtckimlikNo: TStringField
      FieldName = 'tckimlikNo'
    end
    object bilgiTmuayeneAcilisTarihi: TStringField
      FieldName = 'muayeneAcilisTarihi'
    end
    object bilgiTsosyalGuvenlikNo: TStringField
      FieldName = 'sosyalGuvenlikNo'
    end
    object bilgiTyakinlikKodu: TStringField
      FieldName = 'yakinlikKodu'
    end
    object bilgiTkarneNo: TStringField
      FieldName = 'karneNo'
    end
    object bilgiTprovizyonTuru: TStringField
      FieldName = 'provizyonTuru'
    end
    object bilgiTdevredilenKurum: TStringField
      FieldName = 'devredilenKurum'
    end
    object bilgiTDurum: TStringField
      FieldName = 'Durum'
    end
    object bilgiTAdi: TStringField
      FieldName = 'Adi'
    end
    object bilgiTDTarihi: TStringField
      FieldName = 'DTarihi'
    end
    object bilgiTCinsiyet: TStringField
      FieldName = 'Cinsiyet'
    end
    object bilgiTDoktor: TStringField
      FieldName = 'Doktor'
    end
    object bilgiTKayitTarihi: TStringField
      FieldName = 'KayitTarihi'
    end
    object bilgiTtakipNo: TStringField
      FieldName = 'takipNo'
    end
  end
  object PopupMenu4: TPopupMenu
    Left = 384
    Top = 176
    object S1: TMenuItem
      Caption = 'Seans '#304'ptal'
      OnClick = S1Click
    end
    object T1: TMenuItem
      Tag = 1
      Caption = 'T'#252'm'#252' '#304'ptal'
      Enabled = False
      OnClick = S1Click
    end
    object N1: TMenuItem
      Caption = #304#351'lem S'#305'ra Nosunu Al'
      OnClick = N1Click
    end
  end
  object PopupMenu5: TPopupMenu
    Left = 465
    Top = 238
    object MenuItem1: TMenuItem
      Tag = 1
      Caption = 'Sadece Hizmeti '#304'ptal Et'
      OnClick = MenuItem1Click
    end
    object MenuItem3: TMenuItem
      Tag = 2
      Caption = 'Gruptaki Hizmetleri '#304'ptal Et'
      OnClick = MenuItem1Click
    end
  end
  object PopupMenu6: TPopupMenu
    Left = 513
    Top = 318
    object MenuItem4: TMenuItem
      Tag = 1
      Caption = 'Sadece Hizmeti '#304'ptal Et'
      OnClick = MenuItem5Click
    end
    object MenuItem5: TMenuItem
      Tag = 2
      Caption = 'Gruptaki Hizmetleri '#304'ptal Et'
      OnClick = MenuItem5Click
    end
  end
  object MainMenu: TPopupMenu
    Images = DATALAR.imag24png
    Left = 216
    Top = 88
    object Kapat1: TMenuItem
      Tag = -10
      Caption = 'Kapat'
      ImageIndex = 18
      OnClick = cxButtonCClick
    end
    object HizmetleriOku1: TMenuItem
      Tag = -1
      Caption = 'Hizmetleri Oku'
      ImageIndex = 68
      OnClick = cxButtonCClick
    end
    object HizmetleriptalEt1: TMenuItem
      Tag = -2
      Caption = 'Hizmetleri '#304'ptal Et'
      ImageIndex = 43
      OnClick = cxButtonCClick
    end
    object HizmetleriKaydet1: TMenuItem
      Tag = -3
      Caption = 'Hizmetleri Kaydet'
      ImageIndex = 9
      OnClick = cxButtonCClick
    end
    object lemNumaralarnAl1: TMenuItem
      Tag = -4
      Caption = #304#351'lem Numaralar'#305'n'#305' Al'
      ImageIndex = 81
      OnClick = cxButtonCClick
    end
    object BavuruNoAl1: TMenuItem
      Tag = -5
      Caption = 'Ba'#351'vuruNo Sisteme Yaz'
      ImageIndex = 69
      OnClick = cxButtonCClick
    end
  end
end
