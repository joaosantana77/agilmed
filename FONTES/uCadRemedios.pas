unit uCadRemedios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmCadPadrao, DB, ExtCtrls, DBCtrls, Grids,
  DBGrids, StdCtrls, Buttons, ComCtrls, Mask, SqlExpr;

type
  TF_CadRem = class(TfrmCadastro)
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_CadRem: TF_CadRem;

implementation

uses UDM, Uprincipal;

{$R *.dfm}

procedure TF_CadRem.btnEditarClick(Sender: TObject);
begin
  inherited;
  DBEdit2.SetFocus;
end;

procedure TF_CadRem.btnNovoClick(Sender: TObject);
var Qry: TSQLQuery;
begin
  inherited;
  Qry := TSQLQuery.Create(nil);  //cria uma instancia do
  try
     Qry.SQLConnection := DM.CONEXAO;  //o seu componente de conex�o com o banco
     Qry.SQL.Text := 'select max(idremedio) from REMEDIOS';
     Qry.Open;
     if not QRY.Fields[0].IsNull then   //se nao estiver vazia a tabela retornar� nulo
     begin
        DBEdit1.Text := IntToStr(QRY.Fields[0].AsInteger + 1);
     end;
  finally
     FreeAndNil(QRY);    //libera o objeto da mem�ria
  end;
  DBEdit2.SetFocus;
end;

procedure TF_CadRem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  F_Principal.dsRemedios.DataSet.Close;
  F_PRINCIPAL.dsRemedios.Dataset.Open;

end;

end.
