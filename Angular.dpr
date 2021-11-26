program Angular;

uses
  Vcl.Forms,
  Unit_dados in 'Unit_dados.pas' {form_dados: TDataModule},
  Unit_login in 'Unit_login.pas' {form_login},
  Unit_config_servidor in 'Unit_config_servidor.pas' {frm_config_servidor},
  Unit_mensagens in 'Unit_mensagens.pas' {frm_mensagens},
  classe.conexao in 'classe.conexao.pas',
  System.SysUtils,
  Unit_campo_obrigatorio in 'Unit_campo_obrigatorio.pas',
  Unit_remover_caracteres in 'Unit_remover_caracteres.pas',
  Unit_funcoes in 'Unit_funcoes.pas',
  Unit_principal in 'Unit_principal.pas' {form_principal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tform_dados, form_dados);

    if form_dados.Conexao.fcn_conectar_banco_dados then
      begin
        form_login := Tform_login.Create(nil);
        form_login.ShowModal;
        Application.CreateForm(Tform_principal, form_principal);
        form_login.Hide;
        form_login.Free ;
        Application.Run;
      end else
      begin
        fnc_criar_mensagem('CONEXÃO BANCO DE DADOS',
                           'ERRO AO CONECTAR AO BANCO DE DADOS',
                           'Não foi possível conectar ao Banco de Dados, possível causa: ' + #13 +
                           form_dados.Conexao.MsgErro,
                           ExtractFilePath( Application.ExeName ) + '\Icones\ERRO.PNG',
                           'OK');
        Application.CreateForm( Tfrm_config_servidor, frm_config_servidor);
        frm_config_servidor.ShowModal;
      end;
  end.
