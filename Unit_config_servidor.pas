unit Unit_config_servidor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls,
  Unit_campo_obrigatorio, Unit_funcoes, Unit_dados, classe.conexao;

type
  Tfrm_config_servidor = class(TForm)
    shp_fundo: TShape;
    Panel4: TPanel;
    pnl_config_atual: TPanel;
    pnl_nova_config: TPanel;
    pnl_nome_tela: TPanel;
    Image: TImage;
    lb_nome_tela: TLabel;
    lb_inf_tela: TLabel;
    pnl_fundo_confirmar: TPanel;
    Panel5: TPanel;
    spd_confirmar: TSpeedButton;
    pnl_fundo_cancelar: TPanel;
    spd_cancelar: TSpeedButton;
    lb_nova_conf: TLabel;
    lb_config_atual: TLabel;
    Panel7: TPanel;
    Panel8: TPanel;
    ed_caminho_novo: TEdit;
    ed_base_nova: TEdit;
    ed_senha_nova: TEdit;
    ed_login_novo: TEdit;
    ed_porta_nova: TEdit;
    lb_caminho_novo: TLabel;
    lb_porta_nova: TLabel;
    lb_base_nova: TLabel;
    bl_login_novo: TLabel;
    lb_senha_nova: TLabel;
    lb_caminho_atual: TLabel;
    ed_caminho_atual: TEdit;
    lb_nome_base_atual: TLabel;
    ed_nome_base_atual: TEdit;
    lb_login_atual: TLabel;
    ed_login_atual: TEdit;
    lb_porta_atual: TLabel;
    ed_porta_atual: TEdit;
    lb_senha_atual: TLabel;
    ed_senha_atual: TEdit;
    procedure spd_confirmarClick(Sender: TObject);
    procedure spd_cancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
//    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_config_servidor: Tfrm_config_servidor;

implementation

{$R *.dfm}


procedure Tfrm_config_servidor.FormShow(Sender: TObject);
begin
  if form_dados.Conexao.fncLerArquivoINI then begin
    ed_caminho_novo.Text  :=   Form_dados.Conexao.Servidor;
    ed_base_nova.Text     :=   Form_dados.Conexao.Base          ;
    ed_login_novo.Text    :=   Form_dados.Conexao.Login        ;
    ed_senha_nova.Text    :=   Form_dados.Conexao.Senha         ;
    ed_porta_nova.Text    :=   Form_dados.Conexao.Porta        ;
  end;

end;

procedure Tfrm_config_servidor.spd_cancelarClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_config_servidor.spd_confirmarClick(Sender: TObject);
begin
  prcValidarCamposObrigatorios( frm_config_servidor );

  Form_dados.Conexao.Servidor   :=   ed_caminho_novo.Text;
  Form_dados.Conexao.Base       :=   ed_base_nova.Text;
  Form_dados.Conexao.Login      :=   ed_login_novo.Text;
  Form_dados.Conexao.Senha      :=   ed_senha_nova.Text;
  Form_dados.Conexao.Porta      :=   ed_porta_nova.Text;

  form_dados.Conexao.pcrGravarArquivoINI;
  if Form_dados.Conexao.fcn_conectar_banco_dados then begin


    fnc_criar_mensagem('CONEXÃO BANCO DE DADOS',
                           'CONECTAR AO BANCO DE DADOS',
                           'Conexão Realizada com Sucesso.' +
                           'O Sistema deve ser reiniciado.',
                           ExtractFilePath( Application.ExeName ) + '\Icones\aviso.PNG',
                           'OK');
                           Application.Terminate;

  end else
  begin
  fnc_criar_mensagem('CONEXÃO BANCO DE DADOS',
                     'ERRO AO CONECTAR AO BANCO DE DADOS',
                     'Não foi possível conectar ao Banco de Dados, possível causa: ' + #13 +
                     form_dados.Conexao.MsgErro,
                     ExtractFilePath( Application.ExeName ) + '\Icones\ERRO.PNG',
                     'OK');
                     ed_caminho_novo.SetFocus;
  end;

end;



end.
