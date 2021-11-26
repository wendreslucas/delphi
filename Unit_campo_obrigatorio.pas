unit Unit_campo_obrigatorio;

interface

  Uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
    Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls,
    Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

  procedure prcValidarCamposObrigatorios( Form: Tform );

implementation

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
             ShowMessage ('Favor preencher o Campo ' + ( Form.Components[i] as Tedit ).Hint );
             Abort;
             end;
        end;
      end;
    end;
  end;
end.
