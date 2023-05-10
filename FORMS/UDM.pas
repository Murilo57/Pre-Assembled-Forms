unit UDM;

interface

uses
  SysUtils, Classes, DBXpress, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TDM = class(TDataModule)
    Conexao: TSQLConnection;
    sqlLogin: TSQLDataSet;
    dspLogin: TDataSetProvider;
    cdsLogin: TClientDataSet;
    dtsLogin: TDataSource;
    cdsLoginID: TIntegerField;
    cdsLoginNOME: TStringField;
    cdsLoginLOGIN: TStringField;
    cdsLoginSENHA: TStringField;
    sqlCadastro: TSQLDataSet;
    dspCadastro: TDataSetProvider;
    cdsCadastro: TClientDataSet;
    dtsCadastro: TDataSource;
    cdsCadastroID: TIntegerField;
    cdsCadastroNOME: TStringField;
    cdsCadastroEMAIL: TStringField;
    cdsCadastroCPF: TStringField;
    cdsCadastroCIDADE: TStringField;
    cdsCadastroBAIRRO: TStringField;
    cdsCadastroDATACAD: TDateField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

end.
