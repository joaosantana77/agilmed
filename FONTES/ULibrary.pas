unit ULibrary;

interface

uses DBclient, SysUtils, Classes, Forms;

type
  TTypeLocalizar = (fsInteger, fsString);
  procedure FilterCDS (aCDS: TClientDataSet; aType: TTypeLocalizar; aBusca: String);
  procedure AbreForm(aClasseForm: TComponentClass; aForm: TForm);
  function IDTransaction : String;
  procedure RefreshCDS (aDataSet: TClientDataSet);

  const
     MSG_OK = 'Informação cadastrada com sucesso';
     MSG_PERMISSOES = 'Você não tem permissão para executar essa ação';
     MSG_CAMPO_OBR = 'Campo obrigatório';
     MSG_ERRO = 'Ocorreu um erro!';

implementation

procedure FilterCDS (aCDS: TClientDataSet; aType: TTypeLocalizar; aBusca: String);
begin
  aCDS.Close;
  case aType of
    fsInteger: aCDS.Params[0].AsInteger := StrToInt(aBusca);
    fsString: aCDS.Params[0].AsString := UpperCase('%'+aBusca+'%');
  end;
  aCDS.Open;
end;

procedure AbreForm(aClasseForm: TComponentClass; aForm: TForm);
begin
  Application.CreateForm(aClasseForm, aForm);
  try
    aForm.ShowModal;
  finally
    aForm.Free;
  end;
end;

function IDTransaction : String;
var
  i : Integer;
const
  str = '0123456789';
begin
  for i := 1 to 2 do
  begin
    Randomize;
    Result := Result + str[Random(Length(str))+1];
  end
end;

procedure RefreshCDS (aDataSet: TClientDataSet);
begin
  aDataSet.Close;
  aDataSet.Open;
end;
end.





