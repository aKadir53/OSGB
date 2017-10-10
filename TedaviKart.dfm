object frmTedaviBilgisi: TfrmTedaviBilgisi
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'frmTedaviBilgisi'
  ClientHeight = 517
  ClientWidth = 756
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlHastaGelis: TcxGroupBox
    Left = 0
    Top = 0
    Align = alLeft
    Caption = '.'
    TabOrder = 0
    Height = 517
    Width = 249
    object LeftPanelcxPageControl: TcxPageControl
      Left = 2
      Top = 18
      Width = 245
      Height = 497
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = cxTabHastaGelis
      Properties.TabPosition = tpBottom
      ExplicitLeft = 3
      ExplicitTop = 15
      ExplicitWidth = 243
      ExplicitHeight = 492
      ClientRectBottom = 473
      ClientRectLeft = 4
      ClientRectRight = 241
      ClientRectTop = 4
      object cxTabHastaListe: TcxTabSheet
        Caption = 'Hasta Liste'
        ImageIndex = 0
        TabVisible = False
        ExplicitLeft = 3
        ExplicitTop = 3
        ExplicitWidth = 233
        ExplicitHeight = 459
        object cxGroupBox1: TcxGroupBox
          Left = 0
          Top = 0
          Align = alTop
          Caption = 'Hasta Listesi  [ Salon Bilgisi ]'
          TabOrder = 0
          ExplicitWidth = 235
          Height = 51
          Width = 237
          object cxSalonBilgisi: TcxComboBox
            Left = 2
            Top = 18
            Align = alClient
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              ''
              'Salon 1'
              'Salon 2'
              'Salon 3'
              'Salon 4'
              'Salon 5')
            Properties.OnChange = cxSalonBilgisiPropertiesChange
            TabOrder = 0
            ExplicitTop = -2
            ExplicitWidth = 227
            ExplicitHeight = 51
            Width = 233
          end
        end
        object cxGrid2: TcxGrid
          Left = 0
          Top = 51
          Width = 237
          Height = 418
          Align = alClient
          TabOrder = 1
          ExplicitWidth = 233
          ExplicitHeight = 408
          object cxGridHastaListesi: TcxGridDBTableView
            OnDblClick = cxGridHastaListesiDblClick
            OnFocusedRecordChanged = cxGridHastaListesiFocusedRecordChanged
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object dosyaNoColum: TcxGridDBColumn
              DataBinding.FieldName = 'dosyaNo'
              Visible = False
            end
            object HastaAdi: TcxGridDBColumn
              Caption = 'Hasta Ad'#305
              DataBinding.FieldName = 'HASTAADI'
              Width = 101
            end
            object HastaSoyadi: TcxGridDBColumn
              Caption = 'Soyad'#305
              DataBinding.FieldName = 'HASTASOYADI'
              Width = 118
            end
            object cxGridHastaListesiColumn4: TcxGridDBColumn
              DataBinding.FieldName = 'Salon'
              Visible = False
            end
            object TC: TcxGridDBColumn
              DataBinding.FieldName = 'TCKIMLIKNO'
              Visible = False
            end
            object ProvizyonTarihi: TcxGridDBColumn
              DataBinding.FieldName = 'tarih'
              Visible = False
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridHastaListesi
          end
        end
      end
      object cxTabHastaGelis: TcxTabSheet
        Caption = 'Personel Muayeneleri'
        ImageIndex = 1
        ExplicitLeft = 3
        ExplicitTop = 3
        ExplicitWidth = 233
        ExplicitHeight = 459
        object cxGroupBox2: TcxGroupBox
          Left = 0
          Top = 0
          Align = alClient
          Caption = 'Muayeneler'
          TabOrder = 0
          ExplicitWidth = 235
          ExplicitHeight = 464
          Height = 469
          Width = 237
          object cxGrid1: TcxGrid
            Left = 2
            Top = 18
            Width = 233
            Height = 449
            Align = alClient
            TabOrder = 0
            ExplicitTop = -2
            ExplicitWidth = 229
            ExplicitHeight = 459
            object cxGridHastaGelis: TcxGridDBTableView
              OnFocusedRecordChanged = cxGridHastaGelisFocusedRecordChanged
              DataController.DataModeController.GridMode = True
              DataController.DataSource = AdoHastaGelisDataSource
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.GroupByBox = False
              object Tarih: TcxGridDBColumn
                DataBinding.FieldName = 'Tarih'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Width = 99
              end
              object GelisNo: TcxGridDBColumn
                Caption = #304#351'lem No'
                DataBinding.FieldName = 'GelisNo'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taCenter
                HeaderAlignmentHorz = taCenter
                Width = 44
              end
              object TakIpNo: TcxGridDBColumn
                Caption = #304#351'lem Turu'
                DataBinding.FieldName = 'TEDAVITURU'
                PropertiesClassName = 'TcxImageComboBoxProperties'
                Properties.Items = <
                  item
                    Description = 'Peryodik'
                    ImageIndex = 0
                    Value = '2'
                  end
                  item
                    Description = 'Normal'
                    Value = '3'
                  end
                  item
                    Description = #304#351'e Giri'#351
                    Value = '1'
                  end>
                HeaderAlignmentHorz = taCenter
                Width = 77
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = cxGridHastaGelis
            end
          end
        end
      end
    end
  end
  object AdoHastaGelis: TADOQuery
    Connection = DATALAR.ADOConnection2
    Parameters = <>
    Left = 40
    Top = 96
  end
  object AdoHastaGelisDataSource: TDataSource
    DataSet = AdoHastaGelis
    Left = 96
    Top = 96
  end
end
