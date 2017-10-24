object frmIsKazasi: TfrmIsKazasi
  Left = 0
  Top = 0
  Caption = 'frmIsKazasi'
  ClientHeight = 421
  ClientWidth = 585
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
  object PersonelList: TListeAc
    ListeBaslik = 'Personel Listesi'
    TColcount = 3
    TColsW = '50,150,80'
    Table = 'PersonelKartView'
    Where = 'Aktif = 1'
    Conn = DATALAR.ADOConnection2
    Filtercol = 0
    BaslikRenk = clBlack
    DipRenk = clBlack
    Kolonlar.Strings = (
      'dosyaNo'
      'Adi'
      'TCKIMLIKNO')
    KolonBasliklari.Strings = (
      'Dosya No'
      'Hasta Ad'#305
      'Tc Kimlik No')
    Calistir = fgEvet
    BiriktirmeliSecim = False
    SkinName = 'Lilian'
    Grup = False
    GrupCol = 0
    Left = 528
    Top = 40
  end
  object Kazalar: TListeAc
    ListeBaslik = #304#351' Kazalari'
    TColcount = 6
    TColsW = '50,100,100,80,80,80'
    Table = 'IsKazalariView'
    Conn = DATALAR.ADOConnection2
    Filtercol = 0
    BaslikRenk = clBlack
    DipRenk = clBlack
    Kolonlar.Strings = (
      'ID'
      'PersonelDosyaNo'
      'HASTAADI'
      'HASTASOYADI'
      'KazaTarihi'
      'DuzenlemeTarihi')
    KolonBasliklari.Strings = (
      'ID'
      'Dosya No'
      'Personel Ad'#305
      'Personel Soyad'#305
      'Kaza Tarihi'
      'Duzenleme Tarihi')
    Calistir = fgEvet
    BiriktirmeliSecim = False
    SkinName = 'Lilian'
    Grup = False
    GrupCol = 0
    Left = 528
    Top = 88
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 400
    Top = 40
    object Y1: TMenuItem
      Caption = 'Yazd'#305'r'
      ImageIndex = 28
      OnClick = cxButtonCClick
    end
  end
  object TaniList: TListeAc
    ListeBaslik = 'Tan'#305'lar'
    TColcount = 2
    TColsW = '50,150'
    Table = 'icd_teshisleri'
    Conn = DATALAR.ADOConnection2
    Filtercol = 0
    BaslikRenk = clBlack
    DipRenk = clBlack
    Kolonlar.Strings = (
      'ICDKODU'
      'TANI')
    KolonBasliklari.Strings = (
      'Tan'#305' Kodu'
      'Tan'#305)
    Calistir = fgEvet
    BiriktirmeliSecim = False
    SkinName = 'Lilian'
    Grup = False
    GrupCol = 0
    Left = 528
    Top = 152
  end
end
