object DATALAR: TDATALAR
  OldCreateOrder = False
  Height = 436
  Width = 452
  object Kaynak: TADOConnection
    CommandTimeout = 0
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=5353;Persist Security Info=True;Use' +
      'r ID=sa;Initial Catalog=DIALIZ;Data Source=cmptr'
    ConnectionTimeout = 20
    KeepConnection = False
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 33
    Top = 17
  end
  object Hedef: TADOConnection
    CommandTimeout = 0
    ConnectionTimeout = 0
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 33
    Top = 79
  end
  object ADO_SQL: TADOQuery
    Connection = Hedef
    Parameters = <>
    Left = 40
    Top = 184
  end
  object ADO_SQL1: TADOQuery
    Connection = Kaynak
    Parameters = <>
    Left = 96
    Top = 16
  end
  object ADO_SQL2: TADOQuery
    Connection = Hedef
    Parameters = <>
    Left = 160
    Top = 184
  end
  object ADO_SQL3: TADOQuery
    Connection = Hedef
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select name from dbo.sysobjects where xtype = '#39'U'#39' and category =' +
        ' 0 and name <> '#39'Users'#39' order by name')
    Left = 32
    Top = 120
  end
  object Q_LogADO: TADOQuery
    Connection = Hedef
    Parameters = <>
    Left = 264
    Top = 144
  end
  object ADO_SQL4: TADOQuery
    Connection = Hedef
    Parameters = <>
    Left = 280
    Top = 8
  end
  object ADO_SQL5: TADOQuery
    Connection = Kaynak
    Parameters = <>
    Left = 232
    Top = 8
  end
end
