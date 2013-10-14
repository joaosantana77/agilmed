unit UCadPosol;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmCadPadrao, DB, ExtCtrls, DBCtrls, Grids,
  DBGrids, StdCtrls, Buttons, ComCtrls, Mask, SqlExpr;

type
  TF_CadPosol = class(TfrmCadastro)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_CadPosol: TF_CadPosol;

implementation

uses UDM;

{$R *.dfm}

procedure TF_CadPosol.btnEditarClick(Sender: TObject);
begin
  inherited;
  DBEdit2.SetFocus;
end;

procedure TF_CadPosol.btnNovoClick(Sender: TObject);
var Qry: TSQLQuery;
begin
  inherited;
  Qry := TSQLQuery.Create(nil);  //cria uma instancia do
  try
     Qry.SQLConnection := DM.CONEXAO;  //o seu componente de conex�o com o banco
     Qry.SQL.Text := 'select max(idposol) from POSOLOGIAS';
     Qry.Open;
     if not QRY.Fields[0].IsNull then   //se nao estiver vazia a tabela retornar� nulo
     begin
        DBEdit1.Text := IntToStr(QRY.Fields[0].AsInteger + 1);
     end
     else
        DBEdit1.Text := IntToStr(1);
  finally
     FreeAndNil(QRY);    //libera o objeto da mem�ria
  end;
  DBEdit2.SetFocus;
end;

end.
