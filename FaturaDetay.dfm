object frmFaturaDetay: TfrmFaturaDetay
  Left = 1
  Top = 1
  Caption = 'Faturalar'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object FaturaGrid: TcxGridKadir
    Left = 8
    Top = 144
    Width = 784
    Height = 225
    TabOrder = 0
    ExceleGonder = False
    object FaturaSatirlar: TcxGridDBTableView
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          Column = FaturaSatirlarkdvTutar
        end
        item
          Kind = skSum
          Column = FaturaSatirlartutar
        end
        item
          Format = ',0.00'
          Kind = skSum
          Column = FaturaSatirTutar
        end
        item
          Format = 'Sat'#305'r Say'#305's'#305'  ##'
          Kind = skCount
          Column = FaturaSatirlarhizmetkodu
        end>
      DataController.Summary.SummaryGroups = <>
      NewItemRow.Visible = True
      OptionsView.NoDataToDisplayInfoText = 'Faturaya Eklenmi'#351' Sat'#305'r Yok'
      OptionsView.Footer = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GroupByBox = False
      OptionsView.GroupFooterMultiSummaries = True
      object FaturaSatirlarfaturaId: TcxGridDBColumn
        DataBinding.FieldName = 'faturaId'
        Visible = False
      end
      object FaturaSatirlarsira: TcxGridDBColumn
        DataBinding.FieldName = 'sira'
        Visible = False
      end
      object FaturaSatirlarhizmetkodu: TcxGridDBColumn
        Caption = 'Mal / Hizmet Kodu'
        DataBinding.FieldName = 'hizmetkodu'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        HeaderAlignmentHorz = taCenter
        Width = 100
      end
      object FaturaSatirlarhizmetAdi: TcxGridDBColumn
        Caption = 'Mal / Hizmet Ad'#305
        DataBinding.FieldName = 'hizmetAdi'
        HeaderAlignmentHorz = taCenter
        Width = 200
      end
      object FaturaSatirlarfiyat: TcxGridDBColumn
        Caption = 'Fiyat'
        DataBinding.FieldName = 'fiyat'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00'
        HeaderAlignmentHorz = taCenter
        Width = 83
      end
      object FaturaSatirlaradet: TcxGridDBColumn
        Caption = 'Miktar'
        DataBinding.FieldName = 'adet'
        HeaderAlignmentHorz = taCenter
        Width = 48
      end
      object FaturaSatirlarbirim: TcxGridDBColumn
        Caption = 'Birim'
        DataBinding.FieldName = 'birim'
        HeaderAlignmentHorz = taCenter
        Width = 30
      end
      object FaturaSatirlarisk: TcxGridDBColumn
        Caption = #304'sk'
        DataBinding.FieldName = 'isk'
        Visible = False
      end
      object FaturaSatirlarkdv: TcxGridDBColumn
        Caption = 'Kdv %'
        DataBinding.FieldName = 'kdv'
        HeaderAlignmentHorz = taCenter
        Width = 37
      end
      object FaturaSatirlarkdvTutar: TcxGridDBColumn
        Caption = 'Kdv Tutar'
        DataBinding.FieldName = 'kdvTutar'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00'
        HeaderAlignmentHorz = taCenter
        Width = 85
      end
      object FaturaSatirlartutar: TcxGridDBColumn
        Caption = 'Tutar'
        DataBinding.FieldName = 'tutar'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 80
      end
      object FaturaSatirTutar: TcxGridDBColumn
        Caption = 'Satir Tutar'
        DataBinding.FieldName = 'satirToplam'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 80
        OnCustomDrawFooterCell = FaturaSatirTutarCustomDrawFooterCell
      end
    end
    object FaturaGridLevel1: TcxGridLevel
      GridView = FaturaSatirlar
    end
  end
  object SatirToplam: TcxCurrencyEdit
    Left = 272
    Top = 454
    TabStop = False
    Properties.Alignment.Horz = taRightJustify
    Properties.DisplayFormat = ',0.00'
    Properties.ReadOnly = True
    TabOrder = 1
    Width = 100
  end
  object TutarToplam: TcxCurrencyEdit
    Left = 272
    Top = 403
    TabStop = False
    Properties.Alignment.Horz = taRightJustify
    Properties.DisplayFormat = ',0.00'
    Properties.ReadOnly = True
    TabOrder = 2
    Width = 100
  end
  object kdvToplam: TcxCurrencyEdit
    Left = 272
    Top = 430
    TabStop = False
    Properties.Alignment.Horz = taRightJustify
    Properties.DisplayFormat = ',0.00'
    Properties.ReadOnly = True
    TabOrder = 3
    Width = 100
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
    Left = 8
    Top = 224
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
    Left = 16
    Top = 56
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
    object E1: TMenuItem
      Tag = -20
      Caption = 'E-Ar'#351'iv G'#246'nder'
      ImageIndex = 15
      OnClick = cxButtonCClick
    end
    object E2: TMenuItem
      Tag = -21
      Caption = 'E-Ar'#351'iv Fatura '#304'ptal'
      ImageIndex = 43
      OnClick = cxButtonCClick
    end
    object E3: TMenuItem
      Tag = -24
      Caption = 'E-Ar'#351'iv Fatura PDF'
      ImageIndex = 110
      OnClick = cxButtonCClick
      object K1: TMenuItem
        Tag = -22
        Caption = 'Kaydet'
        ImageIndex = 29
        OnClick = cxButtonCClick
      end
      object A1: TMenuItem
        Tag = -23
        Caption = 'Al'#305'c'#305'ya Email Gonder'
        ImageIndex = 103
        OnClick = cxButtonCClick
      end
    end
    object E4: TMenuItem
      Tag = -25
      Caption = 'E-Ar'#351'iv Fatura Durum Sorgula'
      OnClick = cxButtonCClick
    end
    object H1: TMenuItem
      Tag = -26
      Caption = 'Hizmet Ekle'
      OnClick = cxButtonCClick
    end
  end
  object tmr1: TTimer
    Enabled = False
    Interval = 100
  end
end
