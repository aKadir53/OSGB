object frmTedaviListP: TfrmTedaviListP
  Left = 0
  Top = 0
  Caption = 'Toplu Tedavi Listesi'
  ClientHeight = 574
  ClientWidth = 926
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
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 926
    Height = 574
    Align = alClient
    TabOrder = 0
    object Grid: TcxGridDBTableView
      DataController.DataSource = DataSource1
      DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.MRUItemsList = False
      Filtering.ColumnMRUItemsList = False
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnSorting = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.NoDataToDisplayInfoText = 'G'#246'sterilecek Kay'#305't Yok'
      OptionsView.CellAutoHeight = True
      OptionsView.DataRowHeight = 21
      OptionsView.GridLines = glVertical
      OptionsView.GroupByBox = False
      OptionsView.GroupRowHeight = 30
      Styles.Group = cxStyle1
      object Grida: TcxGridDBColumn
        DataBinding.FieldName = 'a'
        Visible = False
        GroupIndex = 0
        Styles.Content = cxStyle4
        IsCaptionAssigned = True
      end
      object Grid_dg_: TcxGridDBColumn
        DataBinding.FieldName = '_dg_'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Styles.Content = cxStyle2
        Styles.Header = cxStyle2
        Width = 84
        IsCaptionAssigned = True
      end
      object Gridsira: TcxGridDBColumn
        DataBinding.FieldName = 'sira'
        Visible = False
      end
      object GridDBColumn1: TcxGridDBColumn
        DataBinding.FieldName = '1'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Styles.Header = cxStyle3
        Width = 100
      end
      object GridDBColumn2: TcxGridDBColumn
        DataBinding.FieldName = '2'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Styles.Header = cxStyle3
        Width = 100
      end
      object GridDBColumn3: TcxGridDBColumn
        DataBinding.FieldName = '3'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Styles.Header = cxStyle3
        Width = 100
      end
      object GridDBColumn4: TcxGridDBColumn
        DataBinding.FieldName = '4'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Styles.Header = cxStyle3
        Width = 100
      end
      object GridDBColumn5: TcxGridDBColumn
        DataBinding.FieldName = '5'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Styles.Header = cxStyle3
        Width = 100
      end
      object GridDBColumn6: TcxGridDBColumn
        DataBinding.FieldName = '6'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Styles.Header = cxStyle3
        Width = 100
      end
      object GridDBColumn7: TcxGridDBColumn
        DataBinding.FieldName = '7'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Styles.Header = cxStyle3
        Width = 100
      end
      object GridDBColumn8: TcxGridDBColumn
        DataBinding.FieldName = '8'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Styles.Header = cxStyle3
        Width = 100
      end
      object GridDBColumn9: TcxGridDBColumn
        DataBinding.FieldName = '9'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Styles.Header = cxStyle3
        Width = 100
      end
      object GridDBColumn10: TcxGridDBColumn
        DataBinding.FieldName = '10'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Styles.Header = cxStyle3
        Width = 100
      end
      object GridDBColumn11: TcxGridDBColumn
        DataBinding.FieldName = '11'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Styles.Header = cxStyle3
        Width = 100
      end
      object GridDBColumn12: TcxGridDBColumn
        DataBinding.FieldName = '12'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Styles.Header = cxStyle3
        Width = 100
      end
      object GridDBColumn13: TcxGridDBColumn
        DataBinding.FieldName = '13'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Styles.Header = cxStyle3
        Width = 100
      end
      object GridDBColumn14: TcxGridDBColumn
        DataBinding.FieldName = '14'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Styles.Header = cxStyle3
        Width = 100
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = Grid
    end
  end
  object ADOQuery1: TADOQuery
    CursorType = ctStatic
    Parameters = <
      item
        Name = '@t1'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '20160701'
      end
      item
        Name = '@t2'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '20160731'
      end>
    SQL.Strings = (
      'exec sp_TedaviListesiPivot :@t1,:@t2')
    Left = 328
    Top = 80
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 328
    Top = 128
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 16
    Top = 120
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clRed
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svBitmap]
      Bitmap.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000000000000000
        00000000000000000000000000000707070F0F0F0F282222224A3A3A39654D4D
        4D775757578857575793626260934242528C39394B8034343F6E2C2C2F5A1C1C
        1B35090909150000000400000000000000000000000000000000000000000000
        00000606060E2727274A64646497989898D2AFAFAFF5D6D8D9FFDFE6E9FFE2E5
        E6FFD1D1D0FFEFEFEAFFDCDCF1FF6262EAFF7272EFFF3E3EC4FF8585BFFFE1E1
        D9FCAAAAAAEB565858BF34383B96090A0B320000000000000000000000011F1F
        1F3E888888BFEBEBEBFFF5F5F5FFC6C6C6FFC2C2C3FFF6F5F5FFF3FBFEFFD3DF
        E5FFDFDFDFFFFCFBF8FF9C9CE0FF7878FBFF7C7CFAFF3B3BC3FF8888BEFFD9D9
        D1FF89898AFFB6BBBEFFCCD2D6FF90989FF144494DB20D0E0F4A0A0A0A157474
        74B5FAFAFAFFF4F4F4FFE3E3E3FFA5A5A5FFBCBFC0FFFFFFFFFFFBFDFFFFE4ED
        F1FFF8F9F7FFD4D3E1FF8D8DE8FFB6B6FFFF8D8DFEFF3C3CC6FF8181B5FFBABA
        B2FF919292FFCBCFD1FFAFB3B6FF878F94FFE8EBEDFF80878BCD090909146969
        69ACF1F1F1FFEAEAEAFFDCDDDDFFA7A7A8FF92674CFFD8BFAAFFF2F4F4FFEBEE
        EEFFEEEEEDFFDFDFDDFFB4B4EBFFAEAEFCFF9191FFFF3F3FC9FF8282ABFFADAD
        A6FFB3B3B3FFCECDCEFFCFCECDFFACAEAEFF9CA3A7FF53585CBC030303064545
        4584E8E8E8FFEDEDEDFFDADCDDFFB0A7A4FFAD490EFFA55C26FFDADBDDFFF9FA
        FAFFDDDDDEFFE7E6E0FFB4B4CDFF7171EAFF6B6BF5FF6464C2FFA6A6A5FFAFAF
        AEFFCBCBCBFFD2D2D2FFD9D9D9FFC3C2C1FF878B8CFF36393A9D000000002626
        2651BFBFBFEDF7F7F7FFDCE0E1FFB3A09AFFC55E1CFFAA6F42FFB9BEC3FFF5F5
        F5FFCAC8C7FFC1C1BFFF6D6DC4FF6F6FF9FF4141E2FF4D4DB1FFA7A79EFFBDBD
        BDFFD3D3D3FFDBDCDCFFD7D7D7FFABAAAAFF8B9194FF1A1B1C66000000000D0D
        0D1D717171B6F8F8F8FFE3E6E8FFBCA79FFFC7692FFFB78C6CFFE4EAEFFFEAE9
        E8FFE0DBD1FF9796A9FF7979E3FF9998FFFF4747E8FF2626A1FF999997FFC5C5
        C5FFDBDCDCFFD2D2D2FFB9B9B9FF959797FF7D8184DD01010116000000000000
        00002525254EA5A5A5DEEEF2F3FFC2AEA6FFCA743FFFDCB396FFFDFFFFFFD8D5
        D1FFE7E1D6FFE0D8CEFFB0AAC2FF9592E9FF4E48CFFF4C4B92FFADAEA9FFABAC
        ADFFCFCFCEFFD9DBDCFFCACACAFFABAEAFF10F0F104A00000000000000000000
        0000040404082E2E2E60B0B1B3E8CCBCB7FFCE7944FFD69D71FFF1F7FBFFE8E4
        DBFFF7ECE0FFC4D1D0FF94C7D9FF57A5E1FF6D96BFFFBAB3A6FFBAB9B8FFA271
        4EFFA35927FFB9A9A3F75557589B0707072F0000000000000000000000000000
        000000000000030303062B2B2B5A818080D9C27D50FFD07631FFE5DFDDFFF4EC
        DFFF8FB2C1FF4FABDAFF54AFE1FF3598D2FF177DBAFF4F6F8AFFA78571FFD869
        0DFF8C400EDB1411114300000000000000000000000000000000000000000000
        00000000000000000000010101020A0B0B3232271F8FB85307FAB68262FF7394
        ABFF3195D7FF53B5F2FF21649DFF003474FF003B80FF003E87FF1C4B81FF4C33
        25BE0503021C0000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000131A0A0087415978FD319D
        F6FF54B7FFFF64C1F9FF2164A2FF2D6EABFF105699FF0C4A91FF1960A9FF0323
        47A9000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000200000023021D35981E99FFFF3BA8
        FFFF54B7FCFF69C8FEFF2E78B9FF1B6AB8FF4BB2E7FF3595CFFF2B99DEFF125A
        9EF201060B380000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000120102035C2978BDEB3EA9FFFF47AD
        FFFF58BAFFFF6CCAFFFF55ADE3FF0551A9FF2281CFFF2C99E1FF1E84D3FF1D82
        D6FF044C77B40000000000000000000000000000000000000000000000000000
        000000000000000000000000000100000028101E2CAC58ABF8FF64B7FFFF71C0
        FFFF7DCAFFFF7BD0FFFF75D2FFFF48A1DBFF146ABDFF0A60BCFF1D6BC1FF2397
        E5FF058ED9F10002031D00000000000000000000000000000000000000000000
        000000000000000000000000000402030454315D86EC7DC1FFFF93D0FFFF9FD4
        FFFFACDDFFFFA3DEFFFF82D6FFFF71D4FEFF57C1F3FF3FB1ECFF2BA9EDFF16A6
        F3FF079CF0FE00090F4000000000000000000000000000000000000000000000
        000000000000000000000000000B040B137D356795FA6A9CCEFE6C9DCBFFB5DE
        FEFFC1E6FFFFB6E5FFFF92DBFFFF70D2FEFF58C3F6FF43B8F2FF2DAFF2FF17A7
        F4FF0799ECFC00070C3A00000000000000000000000000000000000000000000
        00000000000000000000000000130716239910508BFF174D83FF0A4280FF78A4
        CDFFC7ECFFFFBAE7FFFF99DEFFFF73D3FEFF59C5F8FF42B8F2FF2CAEF1FF17A9
        F7FF0681C8E80001011400000000000000000000000000000000000000000000
        000000000000000000000000001206121C8B065DA6FF075196FF09468AFF5385
        B6FFBDE9FFFFAFE5FFFF92DEFFFF72D3FCFF5CC6F6FF46BBF4FF2EB3F6FF16B0
        FFFF023554990000000000000000000000000000000000000000000000000000
        00000000000000000000000000070100003D0D3658C90C70C0FF1262ACFF2765
        A7FF6DA1CEFF7BB2D7FF599BC9FF4088BDFF327BB3FF2873ADFF217AB7FF1261
        93DB0002031D0000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000F02030451115388E4147CCFFF1A73
        BFFF206CB8FF276BB6FF2162ADFF1A59A2FF134E95FF0B4587FF053D7EFF0D38
        69EC05080A2A0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000010000000F03070A5D175385E2207C
        C9FF2683D3FF277BCDFF2770C1FF2065B3FF185BA6FF125298FF0F4177F1050C
        1462000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000001000000090101012E0710
        186F122D45A51E4A75CA225285D71C4774CF12304FB409172582010303290000
        0000000000000000000000000000000000000000000000000000}
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 24
    Top = 176
    PixelsPerInch = 96
    object cxStyle2: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = 8388672
    end
  end
  object cxStyleRepository3: TcxStyleRepository
    Left = 24
    Top = 72
    PixelsPerInch = 96
    object cxStyle3: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 520
    Top = 104
  end
  object PopupMenu1: TPopupMenu
    Left = 568
    Top = 192
    object E1: TMenuItem
      Caption = 'Excele G'#246'nder'
      ImageIndex = 75
      OnClick = E1Click
    end
    object G1: TMenuItem
      Tag = 1
      Caption = 'Detay A'#231
      ImageIndex = 14
      OnClick = G1Click
    end
    object D1: TMenuItem
      Tag = 2
      Caption = 'Detay Kapat'
      ImageIndex = 16
      OnClick = G1Click
    end
    object H1: TMenuItem
      Caption = 'Hasta Kart'
      ImageIndex = 44
      OnClick = H1Click
    end
  end
end
