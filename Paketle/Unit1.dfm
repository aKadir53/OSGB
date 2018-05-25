object frmPaket: TfrmPaket
  Left = 450
  Top = 119
  BorderStyle = bsDialog
  Caption = 'frmPaket'
  ClientHeight = 588
  ClientWidth = 664
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 4
    Top = 556
    Width = 5
    Height = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object pb: TProgressBar
    Left = 0
    Top = 570
    Width = 664
    Height = 18
    Align = alBottom
    TabOrder = 0
  end
  object txtMemo1: TMemo
    Left = 376
    Top = 512
    Width = 81
    Height = 17
    Lines.Strings = (
      'txtMemo1')
    TabOrder = 1
    Visible = False
  end
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 53
    Width = 664
    Height = 517
    Align = alClient
    TabOrder = 2
    Properties.ActivePage = cxTabSheet1
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'McSkin'
    ClientRectBottom = 513
    ClientRectLeft = 4
    ClientRectRight = 660
    ClientRectTop = 26
    object cxTabSheet1: TcxTabSheet
      Caption = 'G'#252'ncelleme Komutlar'#305
      ImageIndex = 0
      object SpeedButton2: TSpeedButton
        Left = 3
        Top = 272
        Width = 89
        Height = 26
        Caption = 'DosyaDan Ekle'
        Visible = False
        OnClick = SpeedButton2Click
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 656
        Height = 241
        Align = alTop
        DataSource = DataSource1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object DBMemo1: TDBMemo
        Left = 0
        Top = 266
        Width = 656
        Height = 221
        Align = alClient
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object DBNavigator1: TDBNavigator
        Left = 0
        Top = 241
        Width = 656
        Height = 25
        DataSource = DataSource1
        Align = alTop
        Kind = dbnHorizontal
        TabOrder = 2
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Rapor Dizayn'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBMemo2: TDBMemo
        Left = 0
        Top = 266
        Width = 656
        Height = 221
        Align = alClient
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object DBNavigator2: TDBNavigator
        Left = 0
        Top = 241
        Width = 656
        Height = 25
        DataSource = DataSource2
        Align = alTop
        Kind = dbnHorizontal
        TabOrder = 1
      end
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 656
        Height = 241
        Align = alTop
        DataSource = DataSource2
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 664
    Height = 53
    Align = alTop
    TabOrder = 3
    object SpeedButton4: TSpeedButton
      Left = 4
      Top = 2
      Width = 97
      Height = 26
      Caption = 'Ba'#287'lan'
      OnClick = SpeedButton4Click
    end
    object SpeedButton1: TSpeedButton
      Left = 105
      Top = 2
      Width = 97
      Height = 26
      Caption = 'Paket '#199#305'kar'
      Enabled = False
      OnClick = SpeedButton1Click
    end
    object SpeedButton3: TSpeedButton
      Left = 206
      Top = 2
      Width = 170
      Height = 26
      Caption = 'Exe '#39'leri Sunucuya G'#246'nder'
      Enabled = False
      OnClick = SpeedButton3Click
    end
    object btPanodanYapistir: TSpeedButton
      Left = 459
      Top = 4
      Width = 158
      Height = 26
      Caption = 'Panodan SQL Yap'#305#351't'#305'r'
      Enabled = False
      OnClick = btPanodanYapistirClick
    end
    object label111: TLabel
      Left = 528
      Top = 32
      Width = 67
      Height = 13
      Caption = 'ID Art'#305#351' miktar'#305
      FocusControl = SpinEdit1
    end
    object btnGit: TSpeedButton
      Left = 105
      Top = 26
      Width = 97
      Height = 26
      Caption = 'Git....'
      Enabled = False
      OnClick = btnGitClick
    end
    object ComboBox1: TComboBox
      Left = 380
      Top = 4
      Width = 73
      Height = 21
      ItemIndex = 1
      TabOrder = 0
      Text = 'OSGB'
      OnChange = ComboBox1Change
      Items.Strings = (
        ''
        'OSGB')
    end
    object Versiyon: TMemo
      Left = 207
      Top = 28
      Width = 167
      Height = 23
      Lines.Strings = (
        '')
      TabOrder = 1
      Visible = False
    end
    object txtRev: TMemo
      Left = 380
      Top = 28
      Width = 73
      Height = 23
      Lines.Strings = (
        '')
      TabOrder = 2
    end
    object SpinEdit1: TSpinEdit
      Left = 608
      Top = 28
      Width = 46
      Height = 22
      Hint = 'araya script sokmak laz'#305'm gelirse atlamas'#305' i'#231#252'n'
      MaxValue = 3
      MinValue = 1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      Value = 2
    end
    object cbSonBirAy: TCheckBox
      Left = 6
      Top = 30
      Width = 92
      Height = 17
      Caption = 'Son 1 ay'#305' getir'
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 4
      OnClick = cbSonBirAyClick
    end
  end
  object DataSource1: TDataSource
    DataSet = table1
    Left = 488
    Top = 104
  end
  object OpenDialog1: TOpenDialog
    Filter = '*.sql'
    InitialDir = 'C:\NoktaDiyaliz\SQLBAKIM\UPDATE'
    Left = 98
    Top = 276
  end
  object IdFTP1: TIdFTP
    OnStatus = IdFTP1Status
    OnWork = IdFTP1Work
    OnWorkBegin = IdFTP1WorkBegin
    OnWorkEnd = IdFTP1WorkEnd
    OnConnected = IdFTP1Connected
    IPVersion = Id_IPv4
    Host = 'ftp.noktayazilim.net'
    Passive = True
    Password = '53Noktanokta'
    Username = 'mavinokta'
    NATKeepAlive.UseKeepAlive = False
    NATKeepAlive.IdleTimeMS = 0
    NATKeepAlive.IntervalMS = 0
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    ReadTimeout = 0
    Left = 354
    Top = 196
  end
  object table1: TADOQuery
    Connection = DATALAR.Hedef
    OnNewRecord = table1NewRecord
    Parameters = <>
    SQL.Strings = (
      'select * from UPDATE_CMD_OSGB'
      'where Modul = '#39'O'#39
      'order by ID')
    Left = 536
    Top = 104
  end
  object DataSource2: TDataSource
    DataSet = ADO_Rapor_Dizayn
    Left = 512
    Top = 192
  end
  object ADO_Rapor_Dizayn: TADOQuery
    Connection = DATALAR.Hedef
    Parameters = <>
    SQL.Strings = (
      'select * from RaporlarDizayn')
    Left = 584
    Top = 192
  end
  object ado_sql: TADOQuery
    Connection = Kaynak
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select SLVV s,SLXX u ,SLYY p , SLZZ db from parametreler where S' +
        'LK = '#39'GA'#39' and SLB = '#39'00'#39)
    Left = 208
    Top = 96
  end
  object Kaynak: TADOConnection
    CommandTimeout = 0
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=5353;Persist Security Info=True;Use' +
      'r ID=sa;Initial Catalog=DIALIZ;Data Source=cmptr'
    ConnectionTimeout = 20
    KeepConnection = False
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 257
    Top = 97
  end
end
