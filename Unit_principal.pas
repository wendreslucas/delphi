unit Unit_principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
    Tform_principal = class(TForm)
    lb_titulo: TLabel;
    lb_usuario: TLabel;
    pnl_fundo: TPanel;
    pnl_linha_superior: TPanel;
    pnl_btn_fechar_minimizar: TPanel;
    pnl_logo: TPanel;
    img_logo: TImage;
    Image1: TImage;
    lb_linha_inferior: TPanel;
    lb_dev: TLabel;
    pnl_linha_de_dentro: TPanel;
    pnl_separador: TPanel;
    pnl_img_agenda: TPanel;
    img_agenda: TImage;
    lb_agenda: TLabel;
    lb_selecione_opcao: TLabel;
    pnl_botoes: TPanel;
    pnl_rel: TPanel;
    shp_rel: TShape;
    spd_btn_rel: TSpeedButton;
    pnl_btn_usr: TPanel;
    shp_usr: TShape;
    spd_btn_usr: TSpeedButton;
    pnl_config: TPanel;
    shp_config: TShape;
    spd_btn_config: TSpeedButton;
    spd_btn_minimizar: TSpeedButton;
    spd_btn_fechar: TSpeedButton;

    procedure spd_btn_fecharClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_principal: Tform_principal;

implementation

{$R *.dfm}

uses Unit_funcoes;



procedure Tform_principal.spd_btn_fecharClick(Sender: TObject);
begin
Close;
end;



end.
