object DM: TDM
  OldCreateOrder = False
  Height = 371
  Width = 426
  object Conexao: TSQLConnection
    ConnectionName = 'IBConnection'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbxint30.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      
        'Database=C:\Documents and Settings\Aldo\Meus documentos\Projetos' +
        ' Delphi\Forms Pre Montados\EXE\DADOS\BANCO.FDB'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'Interbase TransIsolation=ReadCommited'
      'Trim Char=False')
    VendorLib = 'gds32.dll'
    Connected = True
    Left = 29
    Top = 10
  end
  object sqlLogin: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'SELECT ID, NOME, LOGIN, SENHA FROM USUARIO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 35
    Top = 70
  end
  object dspLogin: TDataSetProvider
    DataSet = sqlLogin
    Left = 90
    Top = 70
  end
  object cdsLogin: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLogin'
    Left = 145
    Top = 70
    object cdsLoginID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsLoginNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsLoginLOGIN: TStringField
      FieldName = 'LOGIN'
    end
    object cdsLoginSENHA: TStringField
      FieldName = 'SENHA'
    end
  end
  object dtsLogin: TDataSource
    DataSet = cdsLogin
    Left = 210
    Top = 70
  end
  object sqlCadastro: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'SELECT ID, NOME, EMAIL, CPF, CIDADE, BAIRRO, DATACAD FROM CADAST' +
      'RO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 30
    Top = 125
  end
  object dspCadastro: TDataSetProvider
    DataSet = sqlCadastro
    Left = 85
    Top = 125
  end
  object cdsCadastro: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCadastro'
    Left = 135
    Top = 130
    object cdsCadastroID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCadastroNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsCadastroEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object cdsCadastroCPF: TStringField
      FieldName = 'CPF'
      Required = True
      EditMask = '000.000.000-00;1;_'
      Size = 14
    end
    object cdsCadastroCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object cdsCadastroBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object cdsCadastroDATACAD: TDateField
      FieldName = 'DATACAD'
      Required = True
      EditMask = '00/00/0000;1;_'
    end
  end
  object dtsCadastro: TDataSource
    DataSet = cdsCadastro
    Left = 210
    Top = 125
  end
end
