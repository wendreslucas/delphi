unit Unit_dados;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Comp.UI, Data.DB,
  FireDAC.Comp.Client, classe.conexao;

type
  Tform_dados = class(TDataModule)
    FDConnection: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private

    { Private declarations }
  public
     Conexao : TConexao;
    { Public declarations }
  end;

var
  form_dados: Tform_dados;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure Tform_dados.DataModuleCreate(Sender: TObject);
begin
   Conexao := TConexao.Create(FDConnection);
end;

procedure Tform_dados.DataModuleDestroy(Sender: TObject);
begin
   Conexao.Destroy;
end;

end.
