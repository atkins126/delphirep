object fDM: TfDM
  OldCreateOrder = False
  Height = 326
  Width = 435
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=conkurs'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 32
    Top = 24
  end
  object Queryrab: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select  *  from rabota')
    Left = 48
    Top = 72
  end
  object Queryuch: TADOQuery
    Connection = ADOConnection1
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select * from uchastnik')
    Left = 120
    Top = 80
  end
  object DSrab: TDataSource
    DataSet = Queryrab
    Left = 64
    Top = 136
  end
  object DSUch: TDataSource
    DataSet = Queryuch
    Left = 144
    Top = 144
  end
  object ins_rab: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'ins_rabota;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@naim'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = ''
      end
      item
        Name = '@opis'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = ''
      end
      item
        Name = '@dater'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 16
        Value = '0:00:00'
      end>
    Left = 72
    Top = 192
  end
  object ins_uch: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'ins_uchastnik;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@naim'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = ''
      end
      item
        Name = '@tel'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = ''
      end
      item
        Name = '@id_rab'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 200
    Top = 192
  end
  object Queryot: TADOQuery
    Connection = ADOConnection1
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM RABOTA')
    Left = 192
    Top = 80
  end
  object DSot: TDataSource
    DataSet = Queryot
    Left = 200
    Top = 144
  end
end
