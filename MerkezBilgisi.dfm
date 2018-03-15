object frmMerkezBilgisi: TfrmMerkezBilgisi
  Tag = 90
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'frmMerkezBilgisi'
  ClientHeight = 614
  ClientWidth = 806
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxFotoPanel: TcxGroupBox
    Left = 648
    Top = 35
    Caption = 'Logo'
    TabOrder = 0
    Height = 149
    Width = 110
    object Foto: TcxImage
      Tag = -1
      Left = 3
      Top = 15
      Align = alClient
      Properties.PopupMenuLayout.MenuItems = []
      Properties.Stretch = True
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitTop = -2
      ExplicitWidth = 106
      ExplicitHeight = 121
      Height = 96
      Width = 104
    end
    object cxFotoEkleButton: TcxButton
      Tag = -50
      Left = 3
      Top = 111
      Width = 104
      Height = 28
      Align = alBottom
      Caption = 'Ekle'
      TabOrder = 1
      OnClick = cxButtonCClick
      ExplicitLeft = 2
      ExplicitTop = 119
      ExplicitWidth = 106
    end
  end
  object txtAktif: TcxImageComboBox
    Left = 651
    Top = 196
    EditValue = '0'
    Properties.Alignment.Vert = taVCenter
    Properties.Items = <
      item
        Description = 'Pasif'
        ImageIndex = 77
        Value = '0'
      end
      item
        Description = 'Aktif'
        Value = '1'
      end>
    Style.TextStyle = [fsBold]
    TabOrder = 1
    Width = 107
  end
  object NaceKod: TcxButtonEditKadir
    Tag = 1
    Left = 264
    Top = 16
    Properties.Buttons = <
      item
        Default = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000B0B0B123638387F5560
          52C0323231630000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000111212185C7C56D280F166FF4F72
          49FF49494CFE2221212F00000000000000000000000000000000000000000000
          000000000000000000000000000002020203515A51C090EF71FF678E5CFF4E4F
          51FF3C3D41FF4F4E4D8F00000000000000000000000000000000000000000000
          00000F0F0F141B1A1A3300000000111010205F7959FF566E55FF636464FF5E5E
          5FFF444549FF505152E505050507000000000000000000000000000000002A2B
          2A3F62975AF14A5249FF4141416D030303046F6E6DE654565DFF5D5E61FF6060
          62FF515254FF44464AFF4C4C49C13939386C00000000000000001A1A1A1E72AC
          62ED659359FF454548FF464649F41717161E1B1A1A236A6A6CE14B4D53FF5758
          5CFF58595CFF424448FF525253FF494A4CFD30302F4200000000535450A86487
          5BFF616262FF5B5B5CFF3E3F43FF4D4D4CA00A0A091120201F2F737373E54C4E
          55FF4E5055FF4A4C52FF3D3E42FF3C3D41FF515151DD080807094F4D4B815D5F
          64FF5B5C60FF626263FF4F4F51FF3D3E3FFD504F4DFC515150C25757549D7676
          76FF494B52FF3E3F45FF4E4F51FF4A4B4EFF4D4E51FF43423F77030302044A49
          47875E5F64FF525459FF525355FF3A3A3EFF57585AFF3C3D40FF6A6968FE5E5E
          61FF4E4F54FF545457FF4A4C51FF484A4EFF48494EFF5A5954D7000000000000
          000031302E52666669EC43454AFF4A4B4EFF4E4F52FF3E3E40FF5A5A5BFF5556
          5BFF4F5156FF44464CFF44464DFF45474DFF58595DFF605E5CBA000000000000
          000000000000595855BA696A6CFF545659FF666666FF666667FF5D5E61FF484B
          51FF41444BFF41434BFF41434AFF42444BFF626265FF4D4C4C74000000000000
          00000000000039383656636160FD727170FF939392FF7F8084FF606268FF4E51
          58FF464950FF42454CFF41444BFF4B4C53FD43454BFF585758D5000000000000
          00000000000000000000383734585C5751F7898784FFA3A2A2FF86878AFF696B
          70FF56585FFF4A4B51DA3132346637363663626468FF57575AC9000000000000
          00000000000000000000000000002F2E2B4D524F4AC17C7A77DD9A999AFF7475
          79F62A2A2B440202020300000000000000001C1C1B330B0B0B0F000000000000
          00000000000000000000000000000000000000000000000000003D3C3A623D3D
          3D5B000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Kind = bkGlyph
      end>
    Properties.OnButtonClick = txtNaceKodPropertiesButtonClick
    Style.ButtonStyle = btsDefault
    TabOrder = 2
    OnKeyDown = cxTextEditBKeyDown
    ListeAc = ListeNaceKods
    indexField = False
    ListeAcTus = 0
    Width = 106
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 176
    Top = 200
    object Kapat1: TMenuItem
      Tag = 9999
      Caption = 'Kapat'
      ImageIndex = 18
      Visible = False
      OnClick = cxKaydetClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object SmsGnder1: TMenuItem
      Tag = -28
      Caption = 'Sms G'#246'nder'
      ImageIndex = 94
      OnClick = cxButtonCClick
    end
    object AKart1: TMenuItem
      Tag = -25
      Caption = 'A'#351#305' Kart'#305
      ImageIndex = 60
      Visible = False
      OnClick = cxButtonCClick
    end
    object T2: TMenuItem
      Tag = -35
      Caption = 'Tan'#305' Kart'#305
      ImageIndex = 74
      Visible = False
      OnClick = cxButtonCClick
    end
    object YatBilgileri1: TMenuItem
      Tag = -26
      Caption = 'Yat'#305#351' Bilgileri'
      ImageIndex = 66
      Visible = False
    end
    object Epikriz1: TMenuItem
      Tag = -26
      Caption = 'Epikriz'
      ImageIndex = 90
      Visible = False
      OnClick = cxButtonCClick
    end
    object R1: TMenuItem
      Tag = 130
      Caption = 'Re'#231'ete'
      ImageIndex = 97
      Visible = False
      OnClick = cxButtonCClick
    end
    object N3: TMenuItem
      Tag = 140
      Caption = #304'la'#231' Tedavi'
      ImageIndex = 63
      Visible = False
      OnClick = cxButtonCClick
    end
    object HastaRaporlar1: TMenuItem
      Tag = -29
      Caption = 'Hasta Raporlar'#305
      ImageIndex = 98
      Visible = False
      OnClick = cxButtonCClick
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object SeansKart1: TMenuItem
      Tag = -6
      Caption = 'Seans Kart'#305
      Hint = 'SEANS i'#350'LEMLER'#304',D'#252'zenle'
      ImageIndex = 80
      Visible = False
      OnClick = cxButtonCClick
    end
    object T1: TMenuItem
      Tag = -32
      Caption = 'Tetkik Tedavi Kart'#305
      ImageIndex = 47
      Visible = False
      OnClick = cxButtonCClick
    end
    object T3: TMenuItem
      Tag = -36
      Caption = 'Tedavi '#304'zlem'
      ImageIndex = 67
      Visible = False
      OnClick = cxButtonCClick
    end
    object lemler1: TMenuItem
      Tag = -20
      Caption = #304#351'lemler'
      ImageIndex = 81
      object MenucxYeni: TMenuItem
        Tag = 2
        Caption = 'Yeni Firma'
        ImageIndex = 30
        OnClick = cxKaydetClick
      end
      object MenucxKaydet: TMenuItem
        Caption = 'Kaydet'
        ImageIndex = 31
        OnClick = cxKaydetClick
      end
      object MenucxIptal: TMenuItem
        Tag = 1
        Caption = 'Sil'
        ImageIndex = 33
        OnClick = cxKaydetClick
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = ADO_Gelisler
    Left = 88
    Top = 152
  end
  object cxStyleRepository1: TcxStyleRepository
    Top = 72
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = 8404992
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clMaroon
    end
  end
  object ADO_Gelisler: TADOQuery
    Connection = DATALAR.ADOConnection2
    Parameters = <>
    Left = 24
    Top = 152
  end
  object ListeNaceKods: TListeAc
    ListeBaslik = 'Nace Kodlari'
    TColcount = 4
    TColsW = '50,200,200,80'
    Table = 'nacekodsView'
    Conn = DATALAR.ADOConnection2
    Filtercol = 1
    BaslikRenk = clBackground
    DipRenk = clBackground
    ButtonImajIndex = 132
    Kolonlar.Strings = (
      'NACEKODU'
      'NaceTANIMI'
      'GrupTanimi'
      'TEHLIKESINIFI')
    KolonBasliklari.Strings = (
      'Nace Kodu'
      'Nace Tan'#305'm'#305
      'Grubu'
      'Tehlike')
    Calistir = fgEvet
    BiriktirmeliSecim = False
    SkinName = 'Lilian'
    Grup = True
    GrupCol = 2
    Left = 384
    Top = 13
  end
end
