unit Unit_mensagens;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfrm_mensagens = class(TForm)
    Panel1: TPanel;
    shp_fundo: TShape;
    pnl_barra: TPanel;
    lb_titulo_janela: TLabel;
    lb_MSG: TLabel;
    img_icone: TImage;
    lb_titulo_mensagem: TLabel;
    pnl_sim: TPanel;
    spd_sim: TSpeedButton;
    pnl_nao: TPanel;
    spd_nao: TSpeedButton;
    procedure spd_naoClick(Sender: TObject);
    procedure spd_simClick(Sender: Tobject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    { Public declarations }

    sTituloJanela, sTituloMSG, sMSG, sCaminhoIcone, sTipo : String;
    bRespostaMSG : Boolean;
  end;

var
  frm_mensagens: Tfrm_mensagens;

implementation

{$R *.dfm}

procedure Tfrm_mensagens.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfrm_mensagens.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN  then
		spd_simClick( Self )
  else
  if Key = VK_ESCAPE  then
		spd_naoClick( Self );
end;

procedure Tfrm_mensagens.FormShow(Sender: TObject);
begin
  bRespostaMSG := False;

	lb_titulo_janela.Caption 				    :=	sTituloJanela;
	lb_titulo_mensagem.Caption  				:=	sTituloMSG;
	lb_msg.Caption 			              	:=	sMSG;
	img_icone.Picture.LoadFromFile(	sCaminhoIcone ) ;

  if sTipo = 'OK' then
	  begin
		  pnl_nao.Visible := False;
		  spd_sim.Caption := 'OK (ENTER)';
	end;

end;

procedure Tfrm_mensagens.spd_naoClick(Sender: TObject);
begin
  bRespostaMSG := False;
  Close;
end;

procedure Tfrm_mensagens.spd_simClick(Sender: TObject);
begin
  bRespostaMSG  := True;
  Close;
end;

end.
