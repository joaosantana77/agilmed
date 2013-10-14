unit UCadExames;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmCadPadrao, DB, ExtCtrls, DBCtrls, Grids,
  DBGrids, StdCtrls, Buttons, ComCtrls, Mask, SqlExpr;

type
  TF_CadExames = class(TfrmCadastro)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_CadExames: TF_CadExames;

implementation

uses UDM, Uprincipal;

{$R *.dfm}

procedure TF_CadExames.btnEditarClick(Sender: TObject);
begin
  inherited;
  DBEdit2.SetFocus;
end;

procedure TF_CadExames.btnNovoClick(Sender: TObject);
var Qry: TSQLQuery;
begin
  inherited;
  Qry := TSQLQuery.Create(nil);  //cria uma instancia do
  try
     Qry.SQLConnection := DM.CONEXAO;  //o seu componente de conexão com o banco
     Qry.SQL.Text := 'select max(idexame) from EXAMES';
     Qry.Open;
     if not QRY.Fields[0].IsNull then   //se nao estiver vazia a tabela retornará nulo
     begin
        DBEdit1.Text := IntToStr(QRY.Fields[0].AsInteger + 1);
     end
     else
        DBEdit1.Text := IntToStr(1);
  finally
     FreeAndNil(QRY);    //libera o objeto da memória
  end;
  DBEdit2.SetFocus;
end;

procedure TF_CadExames.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  F_Principal.dsExames.DataSet.Close;
  F_PRINCIPAL.dsExames.Dataset.Open;

end;

end.
