program ProjectFORMS;

uses
  Forms,
  ULogin in '..\FORMS\ULogin.pas' {FrmLogin},
  UDM in '..\FORMS\UDM.pas' {DM: TDataModule},
  UMenu in '..\FORMS\UMenu.pas' {FrmMenu},
  UCadastro in '..\FORMS\UCadastro.pas' {FrmCadastro},
  UMensagem in '..\FORMS\UMensagem.pas' {msg};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmMenu, FrmMenu);
  Application.Run;
end.
