unit classe.conexao;

interface

uses
  FireDAC.Comp.Client, System.SysUtils, System.iniFiles,
  Vcl.Forms, Unit_funcoes, FireDAC.Stan.Intf;

	type
		Tconexao = class

  private
    FServidor : String;
    FMsgErro  : String;
    FSenha    : String;
    FBase     : String;
    FLogin    : String;
    FPorta    : String;
    FConexao  : TFDConnection;

  public
    constructor   Create ( NomeConexao : TFDConnection );
    destructor    Destroy; override;

    function  fcn_conectar_banco_dados  : Boolean;
    procedure pcrGravarArquivoINI;
    function  fncLerArquivoINI       : Boolean;
    property Conexao	: TFDConnection Read FConexao Write FConexao;
    property Servidor	: String Read FServidor Write FServidor;
    property Base		  : String Read FBase 	  Write FBase;
    property Login		: String Read FLogin    Write FLogin;
    property Senha		: String Read FSenha    Write FSenha;
    property Porta		: String Read FPorta    Write FPorta;
    property MsgErro	: String Read FMsgErro  Write FMsgErro;
    end;

implementation

{ Tconexao }

constructor Tconexao.Create( NomeConexao: TFDConnection );
begin
  FConexao := NomeConexao;
end;

destructor Tconexao.Destroy;
begin
  FConexao.Connected := False;
  inherited;
end;

function Tconexao.fcn_conectar_banco_dados: Boolean;
begin
  Result := True;
  FConexao.Params.Clear;

  if not fncLerArquivoINI then begin
   Result := False;
    FMsgErro := ' O Arquivo de configuração não foi encontrado ';
  end   ;
  //else
  begin
    FConexao.Params.Add('Server=' + FServidor);
    FConexao.Params.Add('user_name=' + FLogin);
    FConexao.Params.Add('password=' + FSenha);
    FConexao.Params.Add('port=' + FPorta);
    FConexao.Params.Add('Database=' + FBase);
    FConexao.Params.Add('DriverID=' + 'MySQL');

    try
      FConexao.Connected := True;
    Except
      on e:Exception do
      begin
        FMsgErro := e.Message;
        Result   := False;
      end;
    end;
  end;
end;


procedure Tconexao.pcrGravarArquivoINI;
var
  IniFile : String;
  Ini     : TiniFile;
begin
  IniFile := ChangeFileExt( Application.ExeName, '.ini' );
  Ini     := TIniFile.Create( Inifile );

  try
    Ini.WriteString( 'Configuração', 'Servidor', FServidor );
    Ini.WriteString( 'Configuração', 'Base', FBase );
    Ini.WriteString( 'Configuração', 'Porta', FPorta );
    Ini.WriteString( 'Acesso','Login', FLogin );
    Ini.WriteString( 'Acesso', 'Senha', FSenha );
  finally
    Ini.Free;
  end;
end;

function Tconexao.fnclerArquivoINI : boolean;
var
  IniFile : String;
  Ini     : Tinifile;
begin
  IniFile := ChangeFileExt( Application.ExeName, '.ini' ) ;
  Ini     := TIniFile.Create( IniFile );

//    if fileexists ( IniFile ) then
//      Result := False
//    else
    begin
      Try
       FServidor  := Ini.ReadString( 'Configuação','Servidor' , 'localhost' );
       FBase      := Ini.ReadString( 'Configuação','Base'     , 'empresa' );
       FPorta     := Ini.ReadString( 'Configuação','Porta'    , '3306' );
       FLogin     := Ini.ReadString( 'Acesso','Login'         , 'root' );

       FSenha     := Ini.ReadString( 'Acesso','Senha', 'root');
      // FSenha     := Criptografia ( FSenha, 'NewHorizons7' );

      Finally
        Result := True;
        Ini.Free;
      End;
    end;
end;
end.

