object dtmPrincipal: TdtmPrincipal
  Height = 452
  Width = 985
  object ConexaoDB: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Properties.Strings = (
      'controls_cp=CP_UTF16'
      'AutoEncodeStrings=ON')
    Connected = True
    SQLHourGlass = True
    HostName = ''
    Port = 0
    Database = 
      'Provider=SQLOLEDB.1;Password=masterkey;Persist Security Info=Tru' +
      'e;User ID=sa;Initial Catalog=Vendas;Data Source=ISAAC\SERVERCURS' +
      'O'
    User = 'sa'
    Password = 'masterkey'
    Protocol = 'ado'
    LibraryLocation = 'C:\Users\kanee\OneDrive\Documentos\Curso Delphi\ntwdblib.dll'
    Left = 488
    Top = 192
  end
end
