object frmAktifPasifSebebleri: TfrmAktifPasifSebebleri
  Left = 376
  Top = 238
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsDialog
  Caption = 'Hasta Pasif Etme'
  ClientHeight = 174
  ClientWidth = 354
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox4: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    PanelStyle.Active = True
    TabOrder = 0
    ExplicitWidth = 370
    ExplicitHeight = 216
    Height = 174
    Width = 354
    object cxGroupBox1: TcxGroupBox
      Left = 2
      Top = 3
      Caption = 'Hasta Durum De'#287'i'#351'tirme Sebeb'
      TabOrder = 0
      Height = 169
      Width = 350
      object cxGroupBox2: TcxGroupBox
        Left = 3
        Top = 16
        Align = alTop
        PanelStyle.Active = True
        TabOrder = 0
        Height = 28
        Width = 344
        object txtSebebAdi: TcxComboBox
          Left = 2
          Top = 2
          Align = alLeft
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            ''
            '0 - Ba'#351'ka Merkeze Gitme'
            '1 - Transplantasyona Gitme'
            '2 - Periton Diyalize Ge'#231'me'
            '3 - Ba'#351'ka Tedavi Modeline Ge'#231'me'
            '4 - '#304'zlemden '#199#305'kma'
            '5 - '#214'l'#252'm')
          TabOrder = 0
          Width = 215
        end
        object txtTarih: TcxDateEdit
          Left = 217
          Top = 2
          Align = alLeft
          TabOrder = 1
          Width = 121
        end
      end
      object cxGroupBox3: TcxGroupBox
        Left = 3
        Top = 130
        Align = alBottom
        PanelStyle.Active = True
        TabOrder = 1
        Height = 31
        Width = 344
        object btnDurumDegisTamam: TcxButton
          Left = 267
          Top = 2
          Width = 75
          Height = 27
          Align = alRight
          Caption = '&Tamam'
          TabOrder = 0
          OnClick = btnDurumDegisTamamClick
        end
      end
      object txtSebeb: TcxMemo
        Left = 3
        Top = 65
        Align = alClient
        TabOrder = 2
        Height = 65
        Width = 344
      end
      object txtOlumNedeni: TcxComboBox
        Left = 3
        Top = 44
        Align = alTop
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          ''
          '0 - infeksiyon'
          '1 - Kardiovask'#252'ller'
          '2 - Serebrovask'#252'ler atak'
          '3 - Karaci'#287'er yetersizli'#287'i'
          '4 - G'#304'S'#39'e ba'#287'l'#305' kanama'
          '5 - Malignite'
          '6 - '#304'ntihar'
          '7 - Di'#287'er'
          '8 - Akci'#287'er Embolisi'
          '9 - Diyalize Girmeyi Reddetme'
          '10 - Evde Ani '#214'l'#252'm ')
        TabOrder = 3
        Width = 344
      end
    end
  end
end
