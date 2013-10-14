unit UCadLocal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmCadPadrao, DB, ExtCtrls, DBCtrls, Grids,
  DBGrids, StdCtrls, Buttons, ComCtrls, Mask,  SqlExpr;

type
  TF_CadLocal = class(TfrmCadastro)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_CadLocal: TF_CadLocal;

implementation

uses UDM;

{$R *.dfm}

procedure TF_CadLocal.btnEditarClick(Sender: TObject);
begin
  inherited;
  DBEdit2.SetFocus;
end;

procedure TF_CadLocal.btnNovoClick(Sender: TObject);
var Qry : TSQLQuery;
begin
  inherited;
  Qry := TSQLQuery.Create(nil);  //cria uma instancia do
  try
     Qry.SQLConnection := DM.CONEXAO;  //o seu componente de conexão com o banco
     Qry.SQL.Text := 'select max(idposto) from POSTO';
     Qry.Open;
     if not QRY.Fields[0].IsNull then   //se nao estiver vazia a tabela retornará nulo
     begin
        DBEdit1.Text := IntToStr(QRY.Fields[0].AsInteger + 1);
     end;
  finally
     FreeAndNil(QRY);    //libera o objeto da memória
  end;
  DBEdit2.SetFocus;
end;

end.
