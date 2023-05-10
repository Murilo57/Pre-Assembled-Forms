unit UMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Buttons, ExtCtrls, Menus;

type
  TFrmMenu = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Consulta1: TMenuItem;
    Ajuda1: TMenuItem;
    pnlCentro: TPanel;
    pnlOpcoes: TPanel;
    pnlGRID: TPanel;
    SpeedButton1: TSpeedButton;
    btnCadastro: TSpeedButton;
    btnAviso: TSpeedButton;
    SpeedButton4: TSpeedButton;
    StatusBar1: TStatusBar;
    PopupMenu1: TPopupMenu;
    Cadastro2: TMenuItem;
    procedure btnCadastroClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMenu: TFrmMenu;

implementation

uses UCadastro, UMensagem;

{$R *.dfm}

procedure TFrmMenu.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    Close;
end;


procedure TFrmMenu.btnCadastroClick(Sender: TObject);
begin
  FrmCadastro := TFrmCadastro.Create(nil);
  FrmCadastro.ShowModal;
end;

end.
