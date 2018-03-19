object frmCariHareket: TfrmCariHareket
  Left = 0
  Top = 0
  Caption = 'frmCariHareket'
  ClientHeight = 307
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
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 400
    Top = 40
    object Y1: TMenuItem
      Caption = 'Yazd'#305'r'
      ImageIndex = 28
      object T1: TMenuItem
        Tag = -10
        Caption = 'E'#287'itime Kat'#305'lan T'#252'm Personel Sertifika Bas'#305'm'#305
        OnClick = cxButtonCClick
      end
      object S1: TMenuItem
        Tag = -20
        Caption = 'Se'#231'ili Personel Sertifika Bas'#305'm'#305
        OnClick = cxButtonCClick
      end
      object L1: TMenuItem
        Tag = -30
        Caption = 'E'#287'itime Kat'#305'lan Personel Listesi'
        OnClick = cxButtonCClick
      end
    end
  end
end
