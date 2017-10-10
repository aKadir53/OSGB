object frmTestAyarlari: TfrmTestAyarlari
  Left = 361
  Top = 121
  BorderStyle = bsDialog
  Caption = 'frmTestAyarlari'
  ClientHeight = 527
  ClientWidth = 921
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 921
    Height = 352
    Align = alClient
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
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
      Navigator.Visible = True
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.MRUItemsList = False
      Filtering.ColumnMRUItemsList = False
      NewItemRow.InfoText = 'Yeni Sat'#305'r Ekle'
      NewItemRow.Visible = True
      OptionsBehavior.AlwaysShowEditor = True
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.ExpandMasterRowOnDblClick = False
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnHidingOnGrouping = False
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Appending = True
      OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
      OptionsView.CellAutoHeight = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.RowSeparatorColor = clBlack
      object cxGrid1DBTableView1Column7: TcxGridDBColumn
        Caption = 'S'#305'ra'
        DataBinding.FieldName = 'sira'
        Width = 27
      end
      object cxGrid1DBTableView1butKodu: TcxGridDBColumn
        Caption = 'Sut Kodu'
        DataBinding.FieldName = 'butKodu'
        HeaderAlignmentHorz = taCenter
        Width = 43
      end
      object cxGrid1DBTableView1tanimi: TcxGridDBColumn
        Caption = 'Tan'#305'm'#305
        DataBinding.FieldName = 'tanimi'
        HeaderAlignmentHorz = taCenter
        Width = 145
      end
      object cxGrid1DBTableView1uygulamaSuresi: TcxGridDBColumn
        Caption = 'Uygulama'
        DataBinding.FieldName = 'uygulamaSuresi'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = DATALAR.global_img_list4
        Properties.Items = <
          item
            Description = 'Ayl'#305'k'
            Value = 1
          end
          item
            Description = '3 Ayl'#305'k'
            Value = 3
          end
          item
            Description = '6 Ayl'#305'k'
            Value = 6
          end
          item
            Description = 'Grup D'#305#351#305
            Value = -1
          end>
        HeaderAlignmentHorz = taCenter
      end
      object cxGrid1DBTableView1uygulamaAdet: TcxGridDBColumn
        Caption = 'Adet'
        DataBinding.FieldName = 'uygulamaAdet'
        HeaderAlignmentHorz = taCenter
        Width = 27
      end
      object cxGrid1DBTableView1tip: TcxGridDBColumn
        Caption = 'Tip'
        DataBinding.FieldName = 'tip'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = DATALAR.imag24png
        Properties.Items = <
          item
            Description = 'Laboratuvar'
            ImageIndex = 47
            Value = 2
          end
          item
            Description = 'Radyoloji'
            ImageIndex = 95
            Value = 3
          end>
        HeaderAlignmentHorz = taCenter
        Width = 32
      end
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        DataBinding.FieldName = 'SGKTip'
        Width = 47
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        Caption = 'Birim'
        DataBinding.FieldName = 'birim'
        Width = 27
      end
      object cxGrid1DBTableView1Column3: TcxGridDBColumn
        Caption = 'Lab.Kodu'
        DataBinding.FieldName = 'islemKodu'
        Width = 51
      end
      object cxGrid1DBTableView1Column4: TcxGridDBColumn
        Caption = 'islemKodu '#199#305'k'#305#351
        DataBinding.FieldName = 'islemKoduC'
        Width = 78
      end
      object cxGrid1DBTableView1Column5: TcxGridDBColumn
        Caption = 'Min'
        DataBinding.FieldName = 'minD'
        Width = 22
      end
      object cxGrid1DBTableView1Column6: TcxGridDBColumn
        Caption = 'Max'
        DataBinding.FieldName = 'maxD'
        Width = 25
      end
      object cxGrid1DBTableView1Column8: TcxGridDBColumn
        Caption = 'Hepatit'
        DataBinding.FieldName = 'hepatitMarker'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.Items.Strings = (
          'Evet')
        Width = 40
      end
      object cxGrid1DBTableView1Column9: TcxGridDBColumn
        DataBinding.FieldName = 'SonucTip'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'STRING'
            ImageIndex = 0
            Value = 'S'
          end
          item
            Description = 'NUMERIC'
            Value = 'N'
          end
          item
            Description = 'BOOLEAN'
            Value = 'B'
          end>
        Width = 53
      end
      object cxGrid1DBTableView1Column10: TcxGridDBColumn
        DataBinding.FieldName = 'TurId'
        Width = 43
      end
      object cxGrid1DBTableView1Column11: TcxGridDBColumn
        Caption = 'Grubu'
        DataBinding.FieldName = 'grupKodu'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'SLB'
        Properties.ListColumns = <
          item
            FieldName = 'SLT'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DataSource2
        Width = 87
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object pnlOnay: TPanel
    Left = 0
    Top = 495
    Width = 921
    Height = 32
    Align = alBottom
    Color = clBackground
    TabOrder = 1
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
    object btnVazgec: TsBitBtn
      Left = 606
      Top = 3
      Width = 83
      Height = 27
      Hint = 'Vazge'#231
      Caption = 'Kapat'
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Visible = False
      OnClick = btnVazgecClick
      SkinData.SkinSection = 'BUTTON'
      ImageIndex = 12
      Images = DATALAR.global_img_list4
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 352
    Width = 921
    Height = 143
    Align = alBottom
    TabOrder = 2
    object cxGrid2: TcxGrid
      Left = 529
      Top = 1
      Width = 391
      Height = 141
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfStandard
      object cxGridDBTableView1: TcxGridDBTableView
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
        Navigator.Visible = True
        DataController.DataSource = DataSource4
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Filtering.MRUItemsList = False
        Filtering.ColumnMRUItemsList = False
        NewItemRow.InfoText = 'Yeni Sat'#305'r Ekle'
        NewItemRow.Visible = True
        OptionsBehavior.AlwaysShowEditor = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.ExpandMasterRowOnDblClick = False
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnHidingOnGrouping = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Appending = True
        OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
        OptionsView.CellAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        OptionsView.RowSeparatorColor = clBlack
        object cxGridDBTableView1SLX: TcxGridDBColumn
          Caption = 'S'#305'ra'
          DataBinding.FieldName = 'Sira'
          Width = 47
        end
        object cxGridDBTableView1SLT: TcxGridDBColumn
          Caption = 'Otomatik Deger'
          DataBinding.FieldName = 'Deger'
          Width = 116
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
    object cxGrid3: TcxGrid
      Left = 1
      Top = 1
      Width = 528
      Height = 141
      Align = alLeft
      TabOrder = 1
      object cxGridDBTableView2: TcxGridDBTableView
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
        Navigator.Visible = True
        DataController.DataSource = DataSource3
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Filtering.MRUItemsList = False
        Filtering.ColumnMRUItemsList = False
        NewItemRow.InfoText = 'Yeni Sat'#305'r Ekle'
        NewItemRow.Visible = True
        OptionsBehavior.AlwaysShowEditor = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.ExpandMasterRowOnDblClick = False
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnHidingOnGrouping = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Appending = True
        OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
        OptionsView.CellAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        OptionsView.RowSeparatorColor = clBlack
        object cxGridDBColumn1: TcxGridDBColumn
          Caption = 'Sira'
          DataBinding.FieldName = 'ndSira'
          Width = 28
        end
        object cxGridDBColumn2: TcxGridDBColumn
          Caption = 'Cinsiyet'
          DataBinding.FieldName = 'cinsiyet'
          PropertiesClassName = 'TcxComboBoxProperties'
          Properties.Items.Strings = (
            '0 - Erkek'
            '1 - Kad'#305'n'
            '2 - Herkez')
          Width = 65
        end
        object cxGridDBColumn3: TcxGridDBColumn
          Caption = 'Ya'#351' >'
          DataBinding.FieldName = 'yas1'
          Width = 49
        end
        object cxGridDBColumn4: TcxGridDBColumn
          Caption = '< Ya'#351
          DataBinding.FieldName = 'yas2'
          Width = 50
        end
        object cxGridDBColumn5: TcxGridDBColumn
          DataBinding.FieldName = 'normal1'
          Width = 44
        end
        object cxGridDBColumn6: TcxGridDBColumn
          DataBinding.FieldName = 'normal2'
          Width = 43
        end
        object cxGridDBColumn7: TcxGridDBColumn
          Caption = 'A'#231#305'klama'
          DataBinding.FieldName = 'aciklama'
          Width = 217
        end
      end
      object cxGridLevel2: TcxGridLevel
        GridView = cxGridDBTableView2
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 40
    Top = 168
  end
  object ADOTable1: TADOTable
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    TableName = 'LabTestler'
    Left = 40
    Top = 120
  end
  object cxImageList1: TcxImageList
    Height = 24
    Width = 24
    FormatVersion = 1
    DesignInfo = 5636415
    ImageInfo = <
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000FFFFFFFFFDFD
          FDFFF1F1F1FFD5D5D5FFBBBBBBFFCFCFCFFFDDDDDDFFECECECFFF8F8F8FFFDFD
          FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFE8E8
          E8FFBDBDBDFF947564FFFDC38AFFEBAD76FFBD835EFF968177FFBCBCBCFFD7D7
          D7FFE6E6E6FFF2F2F2FFFBFBFBFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFD9D9
          D9FFF8DECDFFDCAD83FFE8AA75FFE7B57DFFECB87FFFF0C085FFFECF90FFF2BC
          81FFAE8B70FFA29B98FFCECECEFFDDDDDDFFECECECFFF6F6F6FFFDFDFDFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFD2D2
          D2FFF2E0D0FFDCAD83FFE9AD77FFE1B17DFFE9CFBFFFE2BB92FFF0BF83FFFCCF
          91FFFED498FFFEDDA3FFFEDEA5FFCD9B76FF937B73FFB5B5B5FFD7D7D7FFE5E5
          E5FFF2F2F2FFFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFCFCF
          CFFFF2E1D2FFDDAE83FFE9AD77FFE0B384FFFEF6F5FFFEFCFCFFFEFEFEFFF2E4
          DFFFEAD2C0FFE9C69BFFF9D69FFFFEE3B1FFFEE7BAFFFEF0C4FFE8B28DFFA57B
          6BFFA29B98FFC9C9C9FFDDDDDDFFEDEDEDFFFBFBFBFFFFFFFFFFFCFCFCFFCBCB
          CBFFF1E2D4FFDDAE84FFE3A26BFFE1B992FFFEF8F8FFFEFEFEFFFEFBF7FFFEFD
          FDFFFEFEFEFFFEFDFDFFFEFEFEFFECDBD1FFF1DECDFFEAD0AFFFFBE8C6FFFEF6
          DCFFFEEAD2FFFEC8ACFFDCA189FFAB8B80FFD6D4D4FFFFFFFFFFFCFCFCFFC9C9
          C9FFF1E3D5FFDDAF84FFEEB57CFFEBC8AAFFFEFEFCFF1B67FEFF8BA8E8FFFEFE
          FEFFFEFEFEFFFEFEFEFFFCFAF8FFFEFDFCFFFEFEFDFFFEFCFCFFFEF7F7FFE6CF
          BFFFF6E8D3FFFEF9ECFFFBF4EBFFF6B297FFB8ACA8FFFFFFFFFFFCFCFCFFC6C6
          C6FFF1E5D7FFDDAF84FFF4C387FFE6C6AFFFE6D5C8FFE8D5C0FFE3D0BDFFFEFE
          FEFFFEFEFEFF003FFEFFE3DFE0FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFE5D5
          C8FFFEFBFBFFE7D3C3FFFEFCF6FFFEFEFEFFB4A39EFFFFFFFFFFFBFBFBFFC3C3
          C3FFF1E5D7FFDEB085FFF7C589FFECD1C3FFFEFBFAFFFEFEFEFFE8DACEFFF9F5
          F2FFE6D8CBFFDED1C7FFE1D0BEFFFEFEFEFFFEFEFEFF0556FEFFE7EAF4FFFEFE
          FEFFFEFEFEFFFEFDFDFFF9EDE9FFEBDFD4FFFEFEFEFFE3B4A6FFFBFBFBFFC0C0
          C0FFF0E4D6FFDDB085FFFBCA8DFFF8E1DAFFFEFCF9FF9DBBFEFFEBDCCDFFFEFE
          FEFFFEFEFEFFFEFEFEFFE8DBD0FFF4EDE7FFE6D7CAFFB2C0E4FFE9DACBFFFEFE
          FEFFFEFEFEFFFBFCFEFFFEFCFAFFFAE5E1FFFBFAF8FFFEFEFEFFFAFAFAFFBEBE
          BEFFEFE3D5FFDDAF84FFFED193FFF5D8D2FFF9ECECFF074FFEFFFCEDDEFFFEFE
          FEFFF7FAFEFFA6C4FEFFF0E7DDFFFEFEFEFFFEFEFEFFFEFEFEFFE8DBCFFFE8DB
          CFFFFBF8F5FF397CFEFF93B1FAFFF3EEE8FFFEFEFEFFF9EDEAFFFAFAFAFFBBBB
          BBFFEFE2D4FFDAA87EFFFED99FFFFEDBA2FFFEDBA3FFFEDCA4FFEBD7CDFFF3EB
          E5FFDBE4F9FF4E8CFEFFFEFCF7FFFEFEFEFFA6C3FEFFBFD5FEFFFBF8F5FFFEFE
          FEFFFEFEFEFFFAF0E5FFE7D1C0FFFEFEFEFFC9C2C0FFFFFFFFFFFAFAFAFFBAB9
          B9FFEEE1D3FFDAA67CFFFEDEA5FFFEDCA6FFFEDFACFFFEE3B3FFFBECEBFFFEFE
          FEFFFEFEFEFFFAF4EFFFECE1D7FFEFE6DEFF88ACF6FFA2BDF6FFFEFEFEFFFEFE
          FEFFDDE8FEFFC0D0FBFFFCF9F7FFFEFEFCFFFFFFFFFFFFFFFFFFF9F9F9FFB7B6
          B6FFEDE0D2FFDCAA80FFFEDFA9FFFEDEABFFFEE1B2FFFEE4B7FFFDECEBFFFEFC
          FBFFDDE8FEFFFDF7F0FFFEFEFEFFFEFEFEFFFEFEFEFFE8DBCEFFEADFD4FFF1EA
          E3FF92B6FEFF5A88F3FFFEFEFEFFD4BBB3FFFFFFFFFFFFFFFFFFF9F9F9FFB7B5
          B5FFEDDFD1FFDCA276FFFEE0ADFFFEE1B1FFFEE4B7FFFCE4BAFFF8DCD9FFFEF9
          F0FF0048FEFFBDC0DBFFFEFDFDFFFEFEFBFF789FFEFFECDAC9FFFEFEFEFFFEFE
          FEFFFDF9F6FFE4CAB8FFFEFEFEFFB29A94FFFFFFFFFFFFFFFFFFFBFBFBFFCCCB
          CAFFBCB2B6FF4034A2FF867FBEFFDAC2B1FFFEE6B6FFFEF4C5FFFEF4D1FFFBEA
          CCFFFDE2BFFFE2C8B1FFF0D8CDFFF9E8E1FF0E53FEFFF1D9C5FFFEF9F8FFFEFD
          FAFF719EFDFFEBD7CFFFFEFEFEFFAD9892FFFFFFFFFFFFFFFFFFFFFFFFFF7878
          85FF0000C6FF040DC5FF1532FEFF1736FEFF1637FEFF1F3CFAFF3F53EAFF6F79
          E2FFA3A3D8FFEBE4E2FFFEFEF1FFFEFEFDFFFEFCF1FFF0E6DEFFEEDDD4FFEAD5
          C4FF5780EBFFD8C6C3FFFEFEFEFFC1B9B6FFFFFFFFFFFFFFFFFFFFFFFFFF7474
          81FF0000C6FF0205B1FF0A18D0FF142AE7FF1F3CFAFF2947FEFF2F4DFEFF3451
          FEFF3A54FEFF3952FEFF3049FEFF364AF2FF535FE1FF999DE5FFE9E9F4FFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFDFDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFDDDD
          DDFFA3A3AFFF595990FF181A9FFF030ABEFF0511D8FF0515DCFF0A1EE4FF162A
          E5FF273DEDFF384EF7FF3C52FCFF3D53FEFF3749F5FF3040EEFF232FE4FF101B
          D8FF1016CCFF3032C6FF9293E1FFF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFC8C8CAFF7E80A1FF404A
          AFFF1329E6FF1C3AFEFF304FFEFF3851FDFF3446EDFF2C3BE3FF212BD7FF1C24
          D6FF151BD3FF0D10CBFF0506C8FFFBFBFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFDFDFDFFDEDEDEFFA9A9B4FF696EA4FF404BC3FF2F3EECFF2835
          F1FF1B23DDFF0E11CEFF1D1EA7FFFDFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4
          F4FFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Mask.Data = {
          9E000000424D9E000000000000003E0000002800000018000000180000000100
          010000000000600000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000FFFFFFFF9A9A
          9AFF717171FF717171FF717171FF717171FF717171FF727272FF737373FF7373
          73FF777777FF7D7C7AFF7F7E7CFF7A7976FF7C7975FF7E7B75FF807C75FF827E
          77FF847F77FF857F76FF867F75FF7C756EFF7C6F6BFFA29E9CFFFFFFFFFF5E5E
          5EFF484848FF4C4C4CFF4E4E4EFF515151FF545454FF585858FF5A5A5AFF5A5A
          5AFF7B7A77FF928D87FF99938BFF84796CFF877A67FF90826DFF998971FFA190
          75FFA49276FFA49172FFA38E6BFF7B674CFF664033FF837671FFFFFFFFFF6262
          63FF4E4E4EFF535353FF585858FF5C5C5CFF5F5F5FFF656565FF666666FF6A67
          64FF938E88FFABA49CFFB1AA9FFF9E9281FFA0927DFFAB9B83FFB5A48AFFB8A6
          8BFFC1AE8EFFB9A584FFB19B76FF8A7456FF664133FF847671FFFFFFFFFF6868
          68FF515151FF505050FF424242FF353535FF303030FF3B3A3AFF605D5BFF7F78
          71FFA19A92FFB6AFA6FFBCB4A9FFAC9F8CFFB1A18AFF948876FF4F4B43FF3F3C
          38FF554F47FF8C7E68FFB19B77FF947E5DFF634133FF837672FFFFFFFFFF6A6A
          6AFF494949FF323232FF2A2A2AFF282828FF282828FF272727FF343332FF7C75
          6CFFABA398FFBEB6ABFFC3BAADFFB6A893FFA79983FF393836FF262627FF2727
          27FF262627FF312F2EFF716553FFA28B66FF604333FF817671FFFFFFFFFF6868
          67FF363635FF303030FF303030FF303030FF303030FF303030FF2B2C2CFF504C
          48FFB2A89CFFC3BAADFFC8BEAFFFBBAD95FF7E7567FF292B2CFF303130FF3030
          30FF303030FF2F2F2FFF313030FF877659FF604736FF7E7470FFFFFFFFFF6666
          65FF3E3E3EFF3C3C3CFF3B3B3BFF3B3B3BFF3A3A3AFF383838FF373737FF3535
          35FFA89F92FFCAC0B0FFCCC2B2FFBBAC94FF666057FF3C3B3CFF3F3D3DFF3D3B
          3BFF393939FF383838FF333435FF595144FF5D4938FF7A736FFFFFFFFFFF6B6B
          6BFF4E4E4EFF4C4C4CFF484848FF464646FF454545FF424242FF404040FF3637
          38FF9B9388FFCFC4B4FFD1C4B4FFBAAA92FF685D56FF574A49FF584A49FF5246
          46FF4A4242FF454141FF3E3D3EFF5B5245FF5B4B3AFF76726EFFFFFFFFFF6F6F
          6FFF5F5F5FFF5B5C5CFF535454FF4F4F4FFF4E4E4EFF494949FF484848FF3D3E
          3FFF948D82FFD3C7B6FFD4C8B5FFBBAA92FF77675AFF736354FF6F5E52FF6754
          4FFF5E4C4BFF564849FF4B4445FF6D604DFF5D4F3DFF74716DFFFFFFFFFF7575
          76FF6C6C6AFF72716FFF615F5FFF575757FF555555FF515151FF504F4FFF4947
          48FF938B82FFD5C9B6FFD7CAB6FFBDAC92FF897A64FF887A61FF81735CFF7666
          56FF6C5A52FF645250FF544848FF867558FF605240FF706E6BFFFFFFFFFF7777
          77FF70706EFF908C87FF7C7770FF67625EFF625B5BFF5F5756FF5F5454FF5C4F
          4EFF958B80FFD7CBB8FFD9CCB8FFBEAE93FF958871FF968971FF8E8068FF8071
          5CFF756456FF6C5B54FF5E524CFF998460FF7B6653FF787371FFFFFFFFFF7979
          79FF6A6867FF9F9A95FF958F86FF7E766AFF72675DFF6D615AFF6B5E56FF6A5B
          53FF958A7EFFD9CCB8FFDACEB7FFBFAE92FF9A8E78FF9A8F79FF93866EFF8476
          5EFF776758FF6E5E55FF6D5F52FFA28966FF826A5CFF817A78FFFFFFFFFF7C7A
          79FF6B6661FF948F88FF9F9990FF8C8376FF7A6E5EFF73675AFF706156FF7061
          54FF8F8376FFD8CCB6FFDBCEB7FFBAA98EFF958871FF948870FF8D8067FF7D6E
          5CFF716057FF665754FF766856FF9A8164FF79645CFF7D7978FFFFFFFFFF7F7C
          7AFF786E63FF837D75FFA19A8EFF92887AFF7C705EFF726458FF6D5D54FF6D5D
          53FF786A5FFFCBBEABFFDDD0B9FFA9997FFF887B61FF897B62FF81715DFF7160
          57FF655554FF59504FFF7D6E59FF8E7563FF6E5F5BFF7B7978FFFFFFFFFF837D
          7AFF887968FF82786CFF978F82FF958B7BFF7C6F5DFF6D5E54FF655450FF6453
          4FFF645450FFB6AA99FFE2D4BBFF92816DFF7A6A57FF7A6A59FF6F5E56FF5E52
          52FF525050FF4F4C4AFF84715DFF826962FF645D5BFF787877FFFFFFFFFF8882
          7CFF93836DFF918573FF857C6DFF918774FF817462FF675650FF5B4B4AFF5748
          48FF554848FFA79C8DFFE2D3BAFF817164FF685751FF675653FF594F4FFF4C4B
          4BFF49494AFF514D47FF887362FF746361FF5F5D5BFF787877FFFFFFFFFF8C85
          7CFF99896FFFAD9C83FF807466FF837662FF857962FF675750FF4E4444FF4741
          41FF464040FF998F82FFE0D1B8FF6F635AFF544A4BFF524C4CFF484747FF4444
          44FF3A3B3CFF695C51FF856F66FF68615FFF5C5B59FF767675FFFFFFFFFF9189
          7FFF9F8E73FFB4A387FFA1927DFF716456FF7B6D58FF726254FF4A4442FF393A
          3AFF383939FF8D857AFFDDCEB5FF5F5B54FF464546FF474747FF404040FF3A3A
          3AFF393735FF867264FF766864FF60605EFF5A5957FF767575FFFFFFFFFF948C
          81FFA49174FFB5A385FFBEAC90FF918370FF65564DFF6C5B51FF5B4E4AFF3737
          37FF323232FF888073FFD9CAB1FF695F5AFF534D4EFF4D4C4CFF393939FF3635
          34FF706059FF7B6A66FF676361FF5D5C5AFF565554FF767574FFFFFFFFFF958C
          80FFA59171FFB39F7FFFBCA988FFBFAB8AFF8F8072FF5C4B4BFF5D4C4AFF453F
          3FFF2E2F2FFF877F72FFD7C7ADFF67635DFF49494AFF4B4B4BFF363635FF564D
          4BFF706663FF65625FFF5F5D5BFF585756FF525251FF747373FFFFFFFFFF9389
          7DFFA18C6AFFAC9673FFB49E79FFC5B496FFDACBB2FF8D8070FF504746FF4641
          43FF383838FF998F7EFFCDBCA1FF6C665BFF404243FF434343FF56514CFF8072
          67FF615F5DFF5B5A59FF575756FF525251FF4E4E4DFF727272FFFEFEFFFFA9A0
          92FF9F8A65FFAE9A76FFB7A485FFBAA78BFFB5A07CFFB19A73FF9E8A68FF8575
          5AFF94866DFFBBAB8FFFB7A589FF856F5FFF625653FF5D5755FF585552FF534E
          4BFF5E5B5AFF5C5B5AFF555453FF50504FFF4E4E4EFF787878FFFFFFFFFFA79B
          8FFF9F896CFF9D8368FF825F49FF795844FF927A58FF9F8760FF9D8560FF9980
          5FFFA0896CFFA59378FF99856FFF71615AFF635C59FF555350FF332F2BFF2622
          1EFF292624FF3A3937FF454543FF444444FF3B3B3BFF717171FFFFFFFFFF9E9B
          9BFF726D6BFF716C6BFF736F6DFF726F6DFF716E6CFF7B7874FF7A7773FF7A76
          73FF797572FF767371FF726F6FFF72706FFF706F6FFF6B6A69FF626161FF6261
          61FF4A4949FF484747FF474647FF474747FF464646FF898989FF}
        Mask.Data = {
          9E000000424D9E000000000000003E0000002800000018000000180000000100
          010000000000600000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end>
  end
  object ADOTable2: TADOTable
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    TableName = 'lab_gruplari'
    Left = 232
    Top = 72
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Left = 232
    Top = 120
  end
  object ADOTable3: TADOTable
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    IndexFieldNames = 'testkodu'
    MasterFields = 'butKodu'
    MasterSource = DataSource1
    TableName = 'lab_normaldeger'
    Left = 192
    Top = 192
  end
  object DataSource3: TDataSource
    DataSet = ADOTable3
    Left = 192
    Top = 240
  end
  object DataSource4: TDataSource
    DataSet = LabSonucDeger
    Left = 664
    Top = 232
  end
  object LabSonucDeger: TADOTable
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    IndexFieldNames = 'Sira'
    MasterSource = DataSource1
    TableName = 'LabSonucOtoDeger'
    Left = 664
    Top = 184
  end
end
