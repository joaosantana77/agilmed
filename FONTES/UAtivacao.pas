unit UAtivacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, SqlExpr, StdCtrls, ExtCtrls, WideStrings, DBXFirebird;

type
  TF_Ativacao = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    AGILMED: TSQLConnection;
    Qry: TSQLQuery;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Ativacao: TF_Ativacao;

implementation

{$R *.dfm}

procedure TF_Ativacao.Button1Click(Sender: TObject);
begin
   Qry.SQL.Add('UPDATE CONFIG SET ATIVADO = 2');
   Qry.ExecSQL();
   ShowMessage('Agilmed Ativado');
   Close;
end;

procedure TF_Ativacao.Button2Click(Sender: TObject);
begin
   Close;
end;

end.
