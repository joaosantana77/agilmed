unit uCadMedicos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmCadPadrao, DB, ExtCtrls, DBCtrls, Grids,
  DBGrids, StdCtrls, Buttons, ComCtrls, Mask, SqlExpr;
type
  TF_CadMed = class(TfrmCadastro)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    procedure btnNovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_CadMed: TF_CadMed;

implementation

uses UDM;

{$R *.dfm}

procedure TF_CadMed.btnNovoClick(Sender: TObject);
var Qry: TSQLQuery;
begin
  inherited;
  Qry := TSQLQuery.Create(nil);  //cria uma instancia do
  try
     Qry.SQLConnection := DM.CONEXAO;  //o seu componente de conexão com o banco
     Qry.SQL.Text := 'select max(idmed) from MEDICOS';
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

procedure TF_CadMed.DBEdit6Exit(Sender: TObject);
begin
  inherited;
  btnGravar.SetFocus;
end;

procedure TF_CadMed.FormCreate(Sender: TObject);
begin
  inherited;
  DataSource1.DataSet.Open;
end;

end.
