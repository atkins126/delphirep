object DM1: TDM1
  OldCreateOrder = False
  Height = 271
  Width = 346
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=Razrab_Andryuschenko'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 32
    Top = 24
  end
  object Querydol: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'select * from dolshnost')
    Left = 48
    Top = 80
  end
  object ins_dol: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'ins_dol;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@Nam_dol'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = ''
      end>
    Left = 40
    Top = 200
  end
  object DSdol: TDataSource
    DataSet = Querydol
    Left = 40
    Top = 144
  end
  object Queryetap: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'select * from etap')
    Left = 104
    Top = 80
  end
  object DSetap: TDataSource
    DataSet = Queryetap
    Left = 112
    Top = 136
  end
  object ins_etap: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'ins_etap;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@Nam_etap'
        Attributes = [paNullable]
        DataType = ftString
        Size = 150
        Value = ''
      end>
    Left = 104
    Top = 208
  end
  object Querywork: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from work')
    Left = 168
    Top = 80
  end
  object DSwork: TDataSource
    DataSet = Querywork
    Left = 176
    Top = 144
  end
  object ins_work: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'ins_work;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@Nam_work'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = ''
      end
      item
        Name = '@T_days'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = ''
      end
      item
        Name = '@N_Etap'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 176
    Top = 208
  end
end