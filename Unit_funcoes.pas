unit Unit_funcoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

	function fnc_criar_mensagem ( TituloJanela, TituloMSG, MSG, Icone,  Tipo : String ) : boolean;
  procedure prcValidarCamposObrigatorios( Form: Tform );
  function fncRemoveCaracteres( AString: String ) : String;
//  function Criptografia( Senha, Chave : String ) : String;

implementation

uses Unit_mensagens;

function fnc_criar_mensagem ( TituloJanela, TituloMSG, MSG, Icone,  Tipo : String ) : boolean;
begin
  Result := False;

  frm_mensagens                      := Tfrm_mensagens.Create( Nil );
  frm_mensagens.sTituloJanela        := TituloJanela;
  frm_mensagens.sTituloMSG           := TituloMSG;
  frm_mensagens.sMsg                 := MSG;
  frm_mensagens.sCaminhoIcone        := Icone;
  frm_mensagens.sTipo                := Tipo;

  frm_mensagens.ShowModal;

  Result := frm_mensagens.bRespostaMSG;

end;

procedure prcValidarCamposObrigatorios( Form: Tform );
  var
    i : Integer;

  begin

    for  I := 0 to Form.ComponentCount - 1 do
    begin

		  if Form.Components[i].Tag = 5 then
		  begin


        //Tedit - tem que fazer o teste em cada componente a ser testado, se tiver, ex: Tcombobox, Tmaskedit
        if Form.Components[i] is Tedit then
        begin


            if ( ( Form.Components[i] as Tedit ).Hint <> '') and
               ( ( Form.Components[i] as Tedit ).Text = '') Then

             begin
             ShowMessage ('Favor preencher o Campo: ' + ( Form.Components[i] as Tedit ).Hint );
             Abort;
             end;
        end;
      end;
    end;
  end;

function  fncRemoveCaracteres(AString: String) : String;
var
  I : Integer;
  Limpos : String;

begin

  Limpos := '';

  for I := 1 to Length(AString) do
  begin
    if Pos ( Copy( AString, I, 1 ), '"!@#$%¨&*().,;:/<>[]{}=+-_\|') = 0 then
       Limpos := Limpos + Copy(AString, i, 1);
  end;
       Result := Limpos;

end;

//function Criptografia( Senha, Chave : String ) : String;
//var
//	x, y : Integer;
//	NovaSenha : String;
//
//begin
//	for x := 1 to Length( Chave ) do
//	begin
//		NovaSenha := '';
//
//		for y := 1 to Length( Senha ) do
//		begin
//			NovaSenha := NovaSenha + chr( ( Ord( Chave[x] ) xor Ord(Senha[y] ) ) );
//		end;
//
//		Senha := NovaSenha;
//	end;
//
//	Result := Senha;
//end;






end.

