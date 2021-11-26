unit Unit_login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  Tform_login = class(TForm)
    pnl_fundo: TPanel;
    pnl_lateral: TPanel;
    lb_bem_vindo: TLabel;
    lb_dev: TLabel;
    lb_versao: TLabel;
    Image1: TImage;
    lb_digite_usuario_senha: TLabel;
    Panel1: TPanel;
    lb_usuario: TLabel;
    lb_nome_usuario: TEdit;
    Panel2: TPanel;
    pnl_algular: TPanel;
    Panel5: TPanel;
    lb_senha: TLabel;
    lb_senha_usuario: TEdit;
    Panel3: TPanel;
    pnl_fundo_confirmar: TPanel;
    spd_confirmar: TSpeedButton;
    spd_fechar: TSpeedButton;
    procedure spd_fecharClick(Sender: TObject);
    procedure spd_confirmarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_login: Tform_login;

implementation

{$R *.dfm}

uses Empresa;

procedure Tform_login.FormActivate(Sender: TObject);
begin
   pnl_fundo.left	:= Round	( (form_login.Width - pnl_fundo.Width ) / 2	) ;
	 pnl_fundo.top	:= Round	( (form_login.Height	- pnl_fundo.Height ) / 2	) ;
end;

procedure Tform_login.spd_confirmarClick(Sender: TObject);
begin
   Close;
end;

procedure Tform_login.spd_fecharClick(Sender: TObject);
begin
   Application.Terminate;

end;

end.
