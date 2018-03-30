object frmSirketSozlesme: TfrmSirketSozlesme
  Left = 1
  Top = 1
  Caption = #350'irket S'#246'zle'#351'me'
  ClientHeight = 597
  ClientWidth = 800
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
  object SozlesmeGrid: TcxGridKadir
    Left = 8
    Top = 152
    Width = 784
    Height = 225
    TabOrder = 0
    ExceleGonder = False
    object SozlesmeSatirlar: TcxGridDBTableView
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = ',0.00'
          Kind = skSum
          Column = SozlesmeSatirlarToplamFiyat
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.NoDataToDisplayInfoText = 'Faturaya Eklenmi'#351' Sat'#305'r Yok'
      OptionsView.Footer = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GroupByBox = False
      OptionsView.GroupFooterMultiSummaries = True
      object SozlesmeSatirlarid: TcxGridDBColumn
        DataBinding.FieldName = 'id'
        Visible = False
      end
      object SozlesmeSatirlarSirketSozlesmeID: TcxGridDBColumn
        DataBinding.FieldName = 'SirketSozlesmeID'
        Visible = False
      end
      object SozlesmeSatirlarHizmetKodu: TcxGridDBColumn
        Caption = 'Hizmet Kodu'
        DataBinding.FieldName = 'HizmetKodu'
        HeaderAlignmentHorz = taCenter
        Width = 106
      end
      object SozlesmeSatirlarColumn1: TcxGridDBColumn
        Caption = 'Hizmet Adi'
        DataBinding.FieldName = 'HizmetAdi'
        HeaderAlignmentHorz = taCenter
        Width = 246
      end
      object SozlesmeSatirlarColumn2: TcxGridDBColumn
        Caption = 'Adet'
        DataBinding.FieldName = 'Miktar'
        HeaderAlignmentHorz = taCenter
      end
      object SozlesmeSatirlarBirimFiyat: TcxGridDBColumn
        DataBinding.FieldName = 'BirimFiyat'
        HeaderAlignmentHorz = taCenter
        Width = 100
      end
      object SozlesmeSatirlarToplamFiyat: TcxGridDBColumn
        DataBinding.FieldName = 'ToplamFiyat'
        HeaderAlignmentHorz = taCenter
        Width = 106
      end
      object SozlesmeSatirlarTip: TcxGridDBColumn
        DataBinding.FieldName = 'Tip'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <>
        HeaderAlignmentHorz = taCenter
        Width = 95
      end
    end
    object SozlesmeGridLevel1: TcxGridLevel
      GridView = SozlesmeSatirlar
    end
  end
  object DataSource1: TDataSource
    DataSet = ADO_FaturaDetay
    Left = 80
    Top = 306
  end
  object ADO_FaturaDetay: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      
        'select SR.ID, sst.subeTanim SubeTanimi, DenetimiYapanKullanici, ' +
        'DenetimTarihi, Date_Create, GozetimDefterNo, FirmaKodu, cast (ca' +
        'se when Image Is NULL then 0 else 1 end as bit) ImageVar, SR.Goz' +
        'lemGrup, SGR.Tanimi GozlemGrupTanim'
      'from SahaGozlemRaporlari SR'
      
        'inner join SahaGozlemSoruGrup SGR on SGR.GozlemGrup = SR.GozlemG' +
        'rup'
      
        'left outer join SIRKET_SUBE_TNM sst on sst.SirketKod = SR.FirmaK' +
        'odu'
      '  and sst.SubeKod = SR.SubeKod'
      'where FirmaKodu = '#39'0001'#39
      'order by SR.ID')
    Left = 40
    Top = 304
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 16
    Top = 168
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 15132390
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor]
      Color = 8454143
    end
    object cxStyle7: TcxStyle
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clMaroon
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 48
    Top = 16
    PixelsPerInch = 96
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 32
    Top = 248
    object miYeniGozetim: TMenuItem
      Tag = -9
      Caption = 'Hizmet Listesi'
      ImageIndex = 30
      OnClick = cxButtonCClick
    end
  end
  object tmr1: TTimer
    Enabled = False
    Interval = 100
  end
  object List: TListeAc
    ListeBaslik = 'Hizmetler'
    TColcount = 3
    TColsW = '60,250,100'
    Conn = DATALAR.ADOConnection2
    Filtercol = 0
    BaslikRenk = clBlack
    DipRenk = clBlack
    Kolonlar.Strings = (
      'code'
      'name1'
      'grupTanim')
    KolonBasliklari.Strings = (
      'Hizmet Kodu'
      'Hizmet Ad'#305
      'Grup')
    Calistir = fgEvet
    BiriktirmeliSecim = False
    SiralamaKolonu = '1'
    SkinName = 'lilian'
    Grup = True
    GrupCol = 2
    KaynakTableTip = tpSp
    Left = 288
    Top = 56
  end
end
