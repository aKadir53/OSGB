object frmKontrolUserSet: TfrmKontrolUserSet
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  ClientHeight = 475
  ClientWidth = 486
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 486
    Height = 475
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet1
    ClientRectBottom = 468
    ClientRectLeft = 3
    ClientRectRight = 479
    ClientRectTop = 26
    object cxTabSheet1: TcxTabSheet
      Caption = 'Form Kontrol Yetki Atamas'#305
      ImageIndex = 0
      object cxGroupBox2: TcxGroupBox
        Left = 0
        Top = 0
        Align = alLeft
        Caption = 'Kontrolller'
        PanelStyle.Active = True
        TabOrder = 0
        Height = 402
        Width = 478
        object Kontroller: TcxListView
          Left = 2
          Top = 23
          Width = 474
          Height = 377
          Align = alClient
          Columns = <
            item
              Width = 1
            end
            item
              Alignment = taCenter
              Caption = 'From Tag'
              Width = 60
            end
            item
              Alignment = taCenter
              Caption = 'Kontrol Tag'
              Width = 70
            end
            item
              Alignment = taCenter
              Width = 32
            end
            item
              Caption = 'Tan'#305'm'#305
              Width = 250
            end
            item
              Caption = 'Durum'
            end>
          MultiSelect = True
          RowSelect = True
          TabOrder = 0
          ViewStyle = vsReport
        end
        object txtKullanici: TcxButtonEditKadir
          Left = 2
          Top = 2
          Hint = 'Kullan'#305'c'#305' Se'#231'imi'
          Align = alTop
          ParentShowHint = False
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = cxButtonEditKadir1PropertiesButtonClick
          ShowHint = True
          TabOrder = 1
          indexField = False
          ListeAcTus = 0
          Width = 474
        end
      end
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 402
        Align = alBottom
        Caption = '.'
        PanelStyle.Active = True
        TabOrder = 1
        Height = 40
        Width = 476
        object cxButton1: TcxButton
          Tag = 1
          Left = 196
          Top = 2
          Width = 90
          Height = 36
          Align = alRight
          Glyph.Data = {
            36090000424D3609000000000000360000002800000018000000180000000100
            2000000000000009000000000000000000000000000000000000000000000000
            00000000000000000000000000000104060905212F45072F4464083750740735
            4C6F06283B560210172100000000000000010000043502021E7C030332A00303
            31A002021A800000023C00000005000000000000000000000000000000000000
            00000000000000000101082F4462499DC0F165CBE5FF5CE4F9FF4BE7FFFF33DC
            F9FF13C1E8FF089DCDFF0A5E89CB050746AB0E0EB3FE1313C6FF1010D1FF1414
            D0FF1616C0FF0B0BA0F803032FAD0000001B0000000000000000000000000000
            000000000101115474A387D8ECFFADF5FFFF9EF2FFFF90F1FFFF8BF0FFFF95F2
            FFFFA5F4FFFF51A7DCFF0B0EAEFF2A2ACBFF3534FBFF1818FFFF0706FFFF1312
            FFFF2F2FFFFF4748F3FF2020BEFF06065DD50000001C00000000000000000000
            0000083850753BCBE9FF4CE9FFFF32E6FFFF1BE3FFFF12E2FFFF10E4FFFF11E5
            FFFF1BD1F4FF141DB3FF5454E0FF6162F1FF4747E4FF3333E4FF1112F8FF1A1B
            F9FF4142E4FF5958E4FF7070E9FF2323BCFF03032FA80000000400000000020D
            131B0AA0C9F306DFFDFF0CE3FFFF11E3FFFF11E3FFFF11D4EAFF183C45FF2A60
            71FF1444ABFF4C4CD5FF7777FFFF7676E4FFEFEFEFFFE3E3E2FF7474CBFF807F
            D9FFE9E9E8FFE4E4E3FF8383D9FF7C7CF5FF0D0DA4F90000023C00000000083D
            577F03C2E9FF01D8F8FF0DE4FFFF11E4FFFF11E4FFFF11D3E8FF1D3640FF2C57
            65FF0C0FA7FF8080F5FF7979FFFF6161FDFFC1C1EAFFFEFEFEFFDBDBDFFFE7E7
            EAFFFEFEFEFFBEBEE0FF6D6DFBFF8383FFFF3232C4FF02022085000203050B7B
            A8E100C6ECFF03DDFBFF0FE5FFFF10E5FFFF10E5FFFF139BABFF2C5464FF2A52
            64FF1515B9FF8A8AFFFF7575FFFF6666FFFF6B6BE9FFF6F6F9FFFFFFFFFFFFFF
            FFFFF1F1F0FF7A7AE6FF7272FFFF7D7DFFFF4848D5FF04043BA60524334B06A1
            D0FF00C7EDFF08E3FEFF10E6FFFF10E6FFFF10E7FFFF124A52FF2C5667FF2950
            64FF1717BBFF7C7CFFFF7171FFFF6B6BFFFF6A6AF0FFE4E4EEFFFFFFFFFFFFFF
            FFFFD3D3D6FF7575E9FF7575FFFF7676FFFF4949D8FF040440A90B5073A902A9
            D8FF00C5ECFF0BE5FFFF10E6FFFF10E6FFFF10E6FFFF0D5C64FF203E4AFF2B53
            63FF0E0EB1FF7070FDFF6B6AFFFF7070FFFFAAAADFFFFCFCFCFFFEFEFEFFFCFC
            FCFFF5F5F5FF9E9ECCFF7B7BFFFF7272FFFF3F3ED2FF030331920C4D6FA302A8
            D8FF00B9E4FF09E3FEFF10E6FFFF10E6FFFF10E6FFFF10D9EEFF0D7680FF0D71
            7AFF0C37B9FF5353E7FF6969FFFF7677ECFFF5F5F6FFFFFFFFFFD6D6E6FFCBCB
            E1FFFFFFFFFFE4E4E4FF8080E1FF7373FFFF2121BDFF01010E4E03131C29089E
            CDFC00AEDDFF01D1F3FF0DE6FFFF10E6FFFF10E6FFFF10E6FFFF10E6FFFF10E6
            FFFF0E98E1FF2626C0FF6F6FFFFF8383F1FFACACEAFFC2C2EAFFCECEF3FFCACA
            F6FFBDBDEAFFABABEAFF8C8CF0FF5858E4FF070776D10000000600000000094B
            6A9702BBE4FF00B3E0FF01D6F6FF0CE5FFFF10E6FFFF10E6FFFF10E6FFFF10E6
            FFFF10E7FFFF0D5BCAFF1F1FBBFF6E6EF4FFA6A5FFFFC9C9FFFFDEDEFFFFD3D3
            FFFFBCBCFFFF9C9CFFFF6464EBFF1010AAF70101082F00000000000000000107
            0A0E0B77A0D401BCE5FF00B2DFFF00C7ECFF05DCF9FF0BE4FEFF0DE5FFFF0DE5
            FFFF09E3FEFF04D6F7FF0675D2FF101AB5FF4545D7FF7E7EF3FF9F9FFFFF9999
            FEFF7272F0FF3C3CD1FF0D0D99E702021C420000000000000000000000000000
            00000A4766950B94C3FF03B5DFFF00B2DFFF00AEDDFF00B6E2FF00BCE6FF00BF
            E7FF00BEE7FF00BEE7FF00C4EBFF07A3D7FF0F49BBFF0D18ABF80C0CACFB0D0D
            ACFA0B0B8DD705054C8701010917000000000000000000000000000000000000
            00000B5173A715B8DEFF0B86B8FB097DA7DB06A1D0FF03A5D5FF02A5D6FF02A3
            D4FF059ECFFF098FBFF50B6289BF0A8DBEFF15B9DFFF09426996000005070000
            0406000000000000000000000000000000000000000000000000000000000000
            00000B5173A714BBE0FF088DBDFA0002030402101721041E2C400524354E0523
            324A0317223101040609031823330698C8FF1ABBDFFF09425F8B000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000A46669415BEE1FF0793C3FF01080B100000000000000000000000000000
            0000000000000000000008374F7305AAD4FF1EB3D8FF07324869000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000083A557C0DBADEFF10A4CEFF041924350000000000000000000000000000
            0000000000000105080B0F79AAEF17C9E8FF0D9AC7FF041C283A000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000005202F4407B3DAFF1AB9DDFF094868960000000000000000000000000000
            000000000000062E42601EBCDEFF2FD9F2FF0B79A8E700030507000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000203041584AADC2AD1ECFF0A8FBEFA0419243500000000000000000000
            000002101721358DB0E130E7FDFF30CDEAFF083B567D00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000007354C6F4DCAE5FF25C3E3FF0A8BBAF70945638E062D4260083A
            547B0E83AFE755E6F9FF69EEFEFF108CB5EC01090D1300000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000101135475A461D5EBFF2FCDE9FF18B9DDFF1CB5DAFF1FBF
            E0FF36D7F0FF46DFF5FF3B9BC0F4041E2C400000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000203040A43618D2DA6CBFA0ABFE3FF02B2D9FF03A1
            CDFF089ECAFE0D5C80B5020D131C000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000020D131C073147680A43628F093D
            588003141E2B0000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          TabOrder = 0
          OnClick = cxButton1Click
          ExplicitLeft = 290
        end
        object cxButton2: TcxButton
          Tag = 1
          Left = 286
          Top = 2
          Width = 94
          Height = 36
          Align = alRight
          Caption = 'K'#305's'#305'tla'
          Glyph.Data = {
            36090000424D3609000000000000360000002800000018000000180000000100
            2000000000000009000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000001070A0E07314768155D
            7DAC1B88ADDE129EC7F50D9CC9F70A88B4E70A5F85B808395379021119250000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000003141D2B2E799DD0A1E2F1FFB2F8
            FFFFACF5FFFFA9F4FFFF9CF2FFFF76EEFFFF38DDFAFF07BDE8FF0A8BBDF5062B
            3F5C000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000021118232C91B7E98AEFFDFF7DEFFFFF63EC
            FFFF4DE9FFFF40E8FFFF42E8FFFF59EBFFFF89F1FFFF94F2FFFF35D8F5FF079C
            CEFE072F44630000000000000000000000000000000000000000000000000000
            00000000000000000000000101020C698FC424E2FAFF22E4FFFF18E3FFFF12E3
            FFFF11E3FFFF10BDCEFF19B8CBFF17C3D7FF14E3FFFF32E7FFFF8DF1FFFF34DA
            F7FF0A8DBFF70211182300000000000000000000000000000000000000000000
            000000000000000000000524354D06B9E1FF01DAFAFF0AE2FFFF11E4FFFF11E4
            FFFF11E4FFFF0E646BFF2C5565FF257A88FF11E5FFFF11E4FFFF2AE7FFFF9FF4
            FFFF0ECAEFFF0A4F70A200000000000000000000000000000000000000000000
            000000000000000000000B5A7FB400C8EEFF01DAF9FF0EE4FFFF10E5FFFF10E5
            FFFF10E6FFFF1A7782FF2C5666FF257886FF10E6FFFF10E5FFFF11E5FFFF5AED
            FFFF6FEEFEFF0A92C0F5010A0E15000000000000000000000000000000000000
            000000000000021119240A96C6FB00C7ECFF05E0FCFF10E5FFFF10E5FFFF10E5
            FFFF0EADBAFF254754FF2C5666FF2C5464FF15CBDDFF10E5FFFF10E5FFFF22E7
            FFFFA5F6FFFF0FC3E7FF07314768000000000000000000000000000000000000
            0000000000000A45649304A9D7FF00C9EDFF0AE4FEFF10E6FFFF10E6FFFF10E6
            FFFF0D8C95FF203E49FF2C5666FF2C5565FF19BCCCFF10E6FFFF10E6FFFF11E6
            FFFF83F2FFFF42E5FBFF0A597DAE000000000000000000000000000000000000
            000000000000106C9CE301AADAFF00C3EBFF0CE5FFFF10E6FFFF10E6FFFF10E6
            FFFF10D1E2FF0D2D32FF1D3641FF1F505CFF11DAEEFF10E6FFFF10E6FFFF10E6
            FFFF58EEFFFF90F3FFFF1082A7D6000000000000000000000000000000000000
            0000000000000A45649303ABD9FF00B4E0FF06E0FCFF0FE6FFFF10E6FFFF10E6
            FFFF10E6FFFF10DCEFFF0FB4C1FF10E1F4FF10E6FFFF10E6FFFF10E6FFFF10E6
            FFFF4FEDFFFFB8F8FFFF195F7DAA000000000000000000000000000000000000
            00000000000001090D130A8BB8ED00B2E0FF00C5EBFF08E3FEFF10E6FFFF10E6
            FFFF10E6FFFF10E6FFFF10E6FFFF10E6FFFF10E6FFFF10E6FFFF10E6FFFF14E6
            FFFF62EEFFFF8ED6E9FF0525364F000000000000000000000000000000000000
            00000000000000000000093F5B8502BFE7FF00AEDEFF00CFF2FF09E5FFFF10E6
            FFFF10E6FFFF10E6FFFF10E6FFFF10E6FFFF10E6FFFF10E6FFFF0AE5FFFF12E6
            FFFF6BF0FFFF297EA2D700020304000000000000000000000000000000000000
            0000000000000000000001080C110B78A1D601BFE7FF00B1DFFF00C5EBFF04D9
            F8FF09E1FDFF0CE5FEFF0EE6FFFF0BE5FEFF07E1FDFF02DDFAFF00D9F8FF0AE4
            FDFF35B8D8FF05293B5700000000000000000000000000000000000000000000
            00000000000000000000000000000A4767950C93C3FF04B6DFFF00B4E0FF00AD
            DCFF00B2DFFF00BAE5FF00BEE7FF00BEE7FF00BDE6FF00C0E8FF02C3E9FF0DA5
            CFFF0C8CBEFF0319243400000000000000000000000000000000000000000000
            00000000000000000000000000000B5478AC1DC0E3FF0B87B9F90A79A3D707A0
            CEFD04A6D5FF02A7D7FF02A6D6FF03A2D3FF069BCCFE0A83B0E60D6996D713B4
            DBFF0A97C6FE0210172100000000000000000000000000000000000000000000
            00000000000000000000000000000B5478AC1CC2E4FF098BB9F30106080C020D
            131B041C293C06283A55062A3D5905202F450211182300010203094E6E9D19BD
            E2FF098FBFFC020C111900000000000000000000000000000000000000000000
            00000000000000000000000000000A48679618C3E5FF0E95C3FB020B10180000
            00000000000000000000000000000000000000000000000101020B7099D123C7
            E7FF0B7FAEEF0002030500000000000000000000000000000000000000000000
            0000000000000000000000000000093C58810ABBE0FF12A6D0FF0524354D0000
            00000000000000000000000000000000000000000000041D2A3D099DC9FE2CCD
            E9FF0D638DCA0000000000000000000000000000000000000000000000000000
            00000000000000000000000000000526375008B6DBFF17B8DDFF0A4D6E9F0000
            000000000000000000000000000000000000000102030F5980B918D0EDFF23BC
            DEFF083A547B0000000000000000000000000000000000000000000000000000
            00000000000000000000000000000105070A148AB0E327D1ECFF0A8EBCF60526
            375000010102000000000000000000000000083953795BC6E0FF38E7FCFF0D8B
            B9F4020B10180000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000083852784DCBE4FF25C5E5FF0A91
            C2FF0A5477AA062C3F5D06283B560A4E6FA036BBDBFE51ECFEFF4ED9EFFF0941
            5F8A000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000010102175B7BAB68D8ECFF34D3
            EDFF19BBDEFF17AFD6FF1AB0D6FF29C8E6FF39E4FAFF6CDBEFFF1B6B90C50002
            0305000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000010406090C4B6C9C38A5
            CAFB1AC7E5FF07C2E5FF08B0D8FF04A4D0FF1197C0F50A4766950106080C0000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000000000000020F
            162007344C6F0C5780BB0D5D86C3093F5B86020D131C00000000000000000000
            0000000000000000000000000000000000000000000000000000}
          TabOrder = 1
          OnClick = cxButton2Click
          ExplicitLeft = 380
        end
        object cxButton5: TcxButton
          Left = 2
          Top = 2
          Width = 90
          Height = 36
          Align = alLeft
          Caption = 'G'#246'ster'
          Glyph.Data = {
            36090000424D3609000000000000360000002800000018000000180000000100
            2000000000000009000000000000000000000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009F77
            6700695E5A8F71635CEE71635CEE71635CEE71635CEE71635CEE6E605BEE7163
            5CEE71635CEE71635CEE71635CEE71635CEE71635CEE71635CEE71635CEE7163
            5CEE71635CEE71635CEE71635CEE71635CEE6C605BE85555555FFFFFFF00AC85
            77967DA9B3FF81B0B7FF81B0B7FF81B0B7FF81B0B7FF81B1B8FF9D8E85FFCFBE
            9FFFCFBE9FFFCFBE9FFFCFBE9FFFCFBE9FFFCFBE9FFFCFBE9FFFCFBE9FFFCFBE
            9FFFCFBE9FFFCFBE9FFFCFBE9FFFCFBE9FFFC6AD8CFF75655DECFFFFFF00BA98
            8FCB49B5E2FF4AB5E1FF4AB5E1FF4AB5E1FF4AB5E1FF49B6E2FF969494FFD8CF
            B5FFD8CFB5FFD8CFB5FFD8CFB5FFD8CFB5FFD8CFB5FFD8CFB5FFD8CFB5FFD8CF
            B5FFD8CFB5FFD8CFB5FFD8CFB5FFD8CFB5FFD2C3A5FF7C685FEEFFFFFF00BB9A
            90CB53BAE6FF54BAE5FF54BAE5FF54BAE5FF54BAE5FF54BBE6FF999696FFDCD2
            BAFFDCD2BAFFDCD2BAFFDCD2BAFFDCD2BAFFDCD2BAFFDCD2BAFFDCD2BAFFDCD2
            BAFFDCD2BAFFDCD2BAFFDCD2BAFFDCD2BAFFD6C6AAFF7C685FEEFFFFFF00BB99
            90CB60C0EAFF61C0E9FF61C0E9FF61C0E9FF61C0E9FF61C1EAFF9C9999FFE0D7
            C0FFE0D7C0FFE0D7C0FFE0D7C0FFE0D7C0FFE0D7C0FFE0D7C0FFE0D7C0FFE0D7
            C0FFE0D7C0FFE0D7C0FFE0D7C0FFE0D7C0FFDACBAFFF7C685FEEFFFFFF00BA99
            90CB6CC6EEFF6DC6EEFF6DC6EEFF6DC6EEFF6DC6EEFF6DC7EFFFA09B9BFFE4DB
            C5FFE4DBC5FFE4DBC5FFE4DBC5FFE4DBC5FFE4DBC5FFE4DBC5FFE4DBC5FFE4DB
            C5FFE4DBC5FFE4DBC5FFE4DBC5FFE4DBC5FFDECFB4FF7C685FEEFFFFFF00BA99
            90CB74C7E1FFACE9FBFFACE9FBFFACE9FBFFACE9FBFF82DDFAFFA29E9DFFE8E0
            CBFFE8E0CBFFE8E0CBFFE8E0CBFFE8E0CBFFE8E0CBFFE8E0CBFFE8E0CBFFE8E0
            CBFFE8E0CBFFE8E0CBFFE8E0CBFFE8E0CBFFE2D3B9FF7C685FEEFFFFFF00BA99
            90CB76B2C1FFCDCBCAFFCDCBCAFFCDCBCAFFCDCBCAFF8DD5E9FFA5A0A0FFEBE4
            D1FFEBE4D1FFEBE4D1FFEBE4D1FFEBE4D1FFEBE4D1FFEBE4D1FFEBE4D1FFEBE4
            D1FFEBE4D1FFEBE4D1FFEBE4D1FFEBE4D1FFE5D7BFFF7C685FEEFFFFFF00BA99
            90CB74CFF0FF6FC8E6FF6FC8E6FF6FC8E6FF6FC8E6FF75D1F2FFA6A2A2FFEFE8
            D6FFEFE8D6FFEFE8D6FFEFE8D6FFEFE8D6FFEFE8D6FFEFE8D6FFEFE8D6FFEFE8
            D6FFEFE8D6FFEFE8D6FFEFE8D6FFEFE8D6FFE9DBC3FF7B675FEEFFFFFF00BA99
            90CB74D2F8FF71D3F9FF71D3F9FF71D3F9FF71D3F9FF74D2F9FFA5A2A3FFF1EB
            DAFFF1EBDAFFF1EBDAFFF1EBDAFFF1EBDAFFF1EBDAFFF1EBDAFFF1EBDAFFF1EB
            DAFFF1EBDAFFF1EBDAFFF1EBDAFFF1EBDAFFEBDEC7FF7B675EEEFFFFFF00BA99
            90CB79BED0FFEEFCFFFFEEFCFFFFEEFCFFFFEEFCFFFF95E7FEFFA4A2A5FFF4EE
            DFFFF4EEDFFFF4EEDFFFF4EEDFFFF4EEDFFFF4EEDFFFF4EEDFFFF4EEDFFFF4EE
            DFFFF4EEDFFFF4EEDFFFF4EEDFFFF4EEDFFFEEE1CCFF7B685EEEFFFFFF00BB99
            90CB64BACFFF87B5BAFF87B5BAFF87B5BAFF87B5BAFF6FCCE4FFA1A1A6FFF6F1
            E3FFF6F1E3FFF6F1E3FFF6F1E3FFF6F1E3FFF6F1E3FFF6F1E3FFF6F1E3FFF6F1
            E3FFF6F1E3FFF6F1E3FFF6F1E3FFF6F1E3FFF0E3D0FF7B685EEEFFFFFF00BB99
            90CB55C6F8FF56C6F9FF56C6F9FF56C6F9FF56C6F9FF55C6FAFFA0A1A7FFF8F4
            E7FFF8F4E7FFF8F4E7FFF8F4E7FFF8F4E7FFF8F4E7FFF8F4E7FFF8F4E7FFF8F4
            E7FFF8F4E7FFF8F4E7FFF8F4E7FFF8F4E7FFF2E6D3FF7B675EEEFFFFFF00B991
            81CB57B5DAFF58B5DBFF58B5DBFF58B5DBFF58B5DBFF57B6DBFF9D989AFFEFE1
            D0FFEFE1D0FFEFE1D0FFEFE1D0FFEFE1D0FFEFE1D0FFEFE1D0FFEFE1D0FFEFE1
            D0FFEFE1D0FFEFE1D0FFEFE1D0FFEFE1D0FFEAD5BFFF7B655AEEFFFFFF00BB82
            44CBBA783BFFBA783BFFBA783BFFBA783BFFBA783BFFBA783BFFB9793BFFB878
            3BFFB8783BFFB8783BFFB8783BFFB8783BFFB8783BFFB8783BFFB8783BFFB878
            3BFFB8783BFFB8783BFFB8783BFFB8783BFFB87639FF82593CEEFFFFFF00D299
            6CCBD2996CFFD2996CFFD2996CFFD2996CFFD2996CFFD2996CFFD2996CFFD299
            6CFFD2996CFFD2996CFFD2996CFFD2996CFFD2996CFFD2996CFFD2996CFFD299
            6CFFD2996CFFD2996CFFD2996CFFD2996CFFD19667FF8D6044EEFFFFFF00D69A
            7DABDD9371FFDD9777FFDD9777FFDD9777FFDD9777FFDD9777FFDD9777FFDD97
            77FFDD9777FFDD9777FFDD9777FFDD9777FFDD9777FFDD9777FFDD9777FFDD97
            77FFDD9777FFDD9777FFDD9777FFDD9777FFDD9574FF95644D90FFFFFF00CC9C
            8A05DB886BB5E1896DE5E1896DE5E1896DE5E1896DE5E1896DE5E1896DE5E189
            6DE5E1896DE5E1896DE5E1896DE5E1896DE5E1896DE5E1896DE5E1896DE5E189
            6DE5E1896DE5E1896DE5E1896DE5E1896DE5D88E76BB966F6007FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
          TabOrder = 2
          Visible = False
          OnClick = cxButton1Click
          ExplicitLeft = 290
        end
        object cxButton6: TcxButton
          Left = 380
          Top = 2
          Width = 94
          Height = 36
          Align = alRight
          Caption = 'Gizle'
          Glyph.Data = {
            36090000424D3609000000000000360000002800000018000000180000000100
            2000000000000009000000000000000000000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009F77
            6700695E5A8F71635CEE71635CEE71635CEE71635CEE71635CEE71635CEE7163
            5CEE71635CEE71635CEE71635CEE71635CEE71635CEE71635CEE71635CEE7163
            5CEE71635CEE71635CEE71635CEE71635CEE6C605BE85555555FFFFFFF00AA84
            7896C9B396FFCFBE9FFFCFBE9FFFCFBE9FFFCFBE9FFFCFBE9FFFCFBE9FFFCFBE
            9FFFCFBE9FFFCFBE9FFFCFBE9FFFCFBE9FFFCFBE9FFFD0BF9FFFC3B39EFFBBAA
            9EFFCAB99EFFCFBE9FFFCFBE9FFFCFBE9FFFC6AD8CFF75655DECFFFFFF00B798
            90CBDBD3BBFFD8CFB5FFD8CFB5FFD8CFB5FFD8CFB5FFD8CFB5FFD8CFB5FFD8CF
            B5FFD8CFB5FFD8CFB5FFD8CFB5FFD8CFB5FF9790B3FF2F2EB9FF1212D2FF0E0E
            D7FF1D1DCCFF4C49B2FFC1B9B4FFD8CFB5FFD2C3A5FF7C685FEEFFFFFF00B899
            91CBDFD6C0FFDCD2BAFFDCD2BAFFDCD2BAFFDCD2BAFFDCD2BAFFDCD2BAFFDCD2
            BAFFDCD2BAFFDCD2BAFFDCD2BAFF8E88B5FF3635D0FF3636FDFF1515FFFF0B0B
            FFFF2B2BFFFF4E4EF2FF3B39BDFFCBC2B9FFD6C6AAFF7C685FEEFFFFFF00B899
            91CBE2DBC5FFE0D7C0FFE0D7C0FFE0D7C0FFE0D7C0FFE0D7C0FFE0D7C0FFE0D7
            C0FFE0D7C0FFE0D7C0FFD8CFBFFF3B3AC4FF6C6CFBFF4242FBFF2B2CFBFF2828
            FBFF3B3BFBFF5B5BFBFF7373F2FF6561B6FFDACBAFFF7C685FEEFFFFFF00B899
            91CBE6DECAFFE4DBC5FFE4DBC5FFE4DBC5FFE4DBC5FFE4DBC5FFE4DBC5FFE4DB
            C5FFE4DBC5FFE4DBC5FFABA5BFFF5D5DC5FFB5B5C9FFA3A3BCFFA1A1BBFFA1A1
            BBFFA3A3BBFFA3A3B9FF9090BBFF3636C3FFE0D1B4FF7C685FEEFFFFFF00B899
            91CBEAE3CFFFE8E0CBFFE8E0CBFFE8E0CBFFE8E0CBFFE8E0CBFFE8E0CBFFE8E0
            CBFFE8E0CBFFE8E0CBFFA8A3C3FF5F5FC7FFFDFDFDFFF9F9F9FFF9F9F9FFF9F9
            F9FFF9F9F9FFF5F5F5FFB1B1CFFF3434C9FFE3D5B9FF7C685FEEFFFFFF00B899
            91CBEDE7D5FFEBE4D1FFEBE4D1FFEBE4D1FFEBE4D1FFEBE4D1FFEBE4D1FFEBE4
            D1FFEBE4D1FFEBE4D1FFB6B1C9FF4848D5FF7C7CE2FF9090E0FFA2A3E0FFAAAA
            E0FFA3A3E0FF9191E0FF7A7AE7FF3534C2FFE7DABFFF7C685FEEFFFFFF00B798
            91CBF0EADAFFEFE8D6FFEFE8D6FFEFE8D6FFEFE8D6FFEFE8D6FFEFE8D6FFEFE8
            D6FFEFE8D6FFEFE8D6FFEBE5D6FF3837BFFF7272FCFFA1A1FFFFC5C5FFFFD0D0
            FFFFBCBCFFFF9898FFFF6666EFFF7775C2FFE9DBC3FF7B675FEEFFFFFF00B798
            91CBF2EDDDFFF1EBDAFFF1EBDAFFF1EBDAFFF1EBDAFFF1EBDAFFF1EBDAFFF1EB
            DAFFF1EBDAFFF1EBDAFFF1EBDAFFB8B4D0FF3938C7FF8A8AF8FFC1C1FFFFD3D3
            FFFFAFAFFFFF6C6CEBFF4140BFFFE4DFD8FFEBDEC7FF7B675EEEFFFFFF00B798
            90CBF5F0E2FFF4EEDFFFF4EEDFFFF4EEDFFFF4EEDFFFF4EEDFFFF4EEDFFFF4EE
            DFFFF4EEDFFFF4EEDFFFF4EEDFFFF4EEDFFFD4D0D9FF5352BFFF2D2DC3FF2727
            C4FF3232C1FF7977C6FFECE6DDFFF4EEDFFFEEE1CCFF7B685EEEFFFFFF00B798
            90CBF7F3E6FFF6F1E3FFF6F1E3FFF6F1E3FFF6F1E3FFF6F1E3FFF6F1E3FFF6F1
            E3FFF6F1E3FFF6F1E3FFF6F1E3FFF6F1E3FFF6F1E3FFF6F1E3FFF5F1E4FFEBE8
            E1FFF6F2E4FFF6F1E3FFF6F1E3FFF6F1E3FFF0E3D0FF7B685EEEFFFFFF00B798
            90CBF8F5E9FFF8F4E7FFF8F4E7FFF8F4E7FFF8F4E7FFF8F4E7FFF8F4E7FFF8F4
            E7FFF8F4E7FFF8F4E7FFF8F4E7FFF8F4E7FFF8F4E7FFF8F4E7FFF8F4E7FFF8F4
            E7FFF8F4E7FFF8F4E7FFF8F4E7FFF8F4E7FFF2E6D3FF7B675EEEFFFFFF00B590
            82CBEFE2D2FFEFE1D0FFEFE1D0FFEFE1D0FFEFE1D0FFEFE1D0FFEFE1D0FFEFE1
            D0FFEFE1D0FFEFE1D0FFEFE1D0FFEFE1D0FFEFE1D0FFEFE1D0FFEFE1D0FFEFE1
            D0FFEFE1D0FFEFE1D0FFEFE1D0FFEFE1D0FFEAD5BFFF7B655AEEFFFFFF00BB82
            44CBB8783BFFB8783BFFB8783BFFB8783BFFB8783BFFB8783BFFB8783BFFB878
            3BFFB8783BFFB8783BFFB8783BFFB8783BFFB8783BFFB8783BFFB8783BFFB878
            3BFFB8783BFFB8783BFFB8783BFFB8783BFFB87639FF82593CEEFFFFFF00D299
            6CCBD2996CFFD2996CFFD2996CFFD2996CFFD2996CFFD2996CFFD2996CFFD299
            6CFFD2996CFFD2996CFFD2996CFFD2996CFFD2996CFFD2996CFFD2996CFFD299
            6CFFD2996CFFD2996CFFD2996CFFD2996CFFD19667FF8D6044EEFFFFFF00D69A
            7DABDD9371FFDD9777FFDD9777FFDD9777FFDD9777FFDD9777FFDD9777FFDD97
            77FFDD9777FFDD9777FFDD9777FFDD9777FFDD9777FFDD9777FFDD9777FFDD97
            77FFDD9777FFDD9777FFDD9777FFDD9777FFDD9574FF95644D90FFFFFF00CC9C
            8A05DB886BB5E1896DE5E1896DE5E1896DE5E1896DE5E1896DE5E1896DE5E189
            6DE5E1896DE5E1896DE5E1896DE5E1896DE5E1896DE5E1896DE5E1896DE5E189
            6DE5E1896DE5E1896DE5E1896DE5E1896DE5D88E76BB966F6007FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
          TabOrder = 3
          OnClick = cxButton2Click
          ExplicitLeft = 386
          ExplicitTop = 1
        end
      end
      object cxGroupBox3: TcxGroupBox
        Left = 478
        Top = 0
        Align = alClient
        PanelStyle.Active = True
        TabOrder = 2
        Visible = False
        Height = 402
        Width = 8
        object cxGrid1: TcxGrid
          Left = 2
          Top = 19
          Width = 4
          Height = 381
          Align = alClient
          TabOrder = 0
          object cxGridKontrolUser: TcxGridDBTableView
            DataController.DataSource = DataSource1
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object cxGridKontrolUserkullanici: TcxGridDBColumn
              DataBinding.FieldName = 'kullanici'
              Width = 80
            end
            object cxGridKontrolUserformTag: TcxGridDBColumn
              Caption = 'Form'
              DataBinding.FieldName = 'formTag'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 40
            end
            object cxGridKontrolUserkontrolTag: TcxGridDBColumn
              Caption = 'Kontrol'
              DataBinding.FieldName = 'kontrolTag'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 40
            end
            object cxGridKontrolUsercaption: TcxGridDBColumn
              Caption = 'Caption'
              DataBinding.FieldName = 'caption'
              Width = 200
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGridKontrolUser
          end
        end
        object cxLabel1: TcxLabel
          Left = 2
          Top = 2
          Align = alTop
          Caption = 'Kullan'#305'c'#305' K'#305's'#305'tlamalar'#305
          Transparent = True
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Zorunlu Alan'
      ImageIndex = 1
      object cxGroupBox4: TcxGroupBox
        Left = 0
        Top = 0
        Align = alLeft
        Caption = 'Kontrolller'
        PanelStyle.Active = True
        TabOrder = 0
        Height = 442
        Width = 478
        object InputKontroller: TcxListView
          Left = 2
          Top = 2
          Width = 474
          Height = 398
          Align = alClient
          Columns = <
            item
              Width = 1
            end
            item
              Alignment = taCenter
              Caption = 'From Tag'
              Width = 60
            end
            item
              Alignment = taCenter
              Caption = 'Kontrol Tag'
              Width = 70
            end
            item
              Caption = 'Tan'#305'm'#305
              Width = 250
            end
            item
              Caption = 'Durum'
            end>
          MultiSelect = True
          RowSelect = True
          TabOrder = 0
          ViewStyle = vsReport
        end
        object cxGroupBox5: TcxGroupBox
          Left = 2
          Top = 400
          Align = alBottom
          Caption = '.'
          PanelStyle.Active = True
          TabOrder = 1
          Height = 40
          Width = 474
          object cxButton3: TcxButton
            Left = 288
            Top = 2
            Width = 90
            Height = 36
            Align = alRight
            Caption = 'Bo'#351' Olabilir'
            TabOrder = 0
            OnClick = cxButton3Click
          end
          object cxButton4: TcxButton
            Left = 378
            Top = 2
            Width = 94
            Height = 36
            Align = alRight
            Caption = 'Zorunlu'
            TabOrder = 1
            OnClick = cxButton4Click
          end
        end
      end
    end
  end
  object ListeAc1: TListeAc
    TColcount = 2
    TColsW = '150,1'
    Table = 'Users'
    Conn = DATALAR.ADOConnection2
    Filtercol = 0
    BaslikRenk = clBlack
    DipRenk = clBlack
    Kolonlar.Strings = (
      'kullanici')
    KolonBasliklari.Strings = (
      'Kullan'#305'c'#305' Ad'#305)
    Calistir = fgEvet
    BiriktirmeliSecim = False
    Grup = False
    GrupCol = 0
    Left = 312
    Top = 152
  end
  object User_Kontrol_Settings: TADOTable
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    TableName = 'KontrolUserSettings'
    Left = 128
    Top = 160
  end
  object DataSource1: TDataSource
    DataSet = User_Kontrol_Settings
    Left = 128
    Top = 216
  end
  object InputKontrol: TADOTable
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    TableName = 'KontrolZorunlu'
    Left = 232
    Top = 168
    object IntegerField1: TIntegerField
      FieldName = 'formTag'
    end
    object IntegerField2: TIntegerField
      FieldName = 'kontrolTag'
    end
    object InputKontrolkontrolName: TStringField
      FieldName = 'kontrolName'
      Size = 100
    end
  end
  object DataSource2: TDataSource
    DataSet = InputKontrol
    Left = 232
    Top = 224
  end
end
