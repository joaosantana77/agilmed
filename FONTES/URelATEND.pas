unit URelATEND;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, SqlExpr, StdCtrls, Mask, ComCtrls, ExtCtrls,
  Grids, DBGrids, DBClient, Provider;

type
  TF_RelAtend = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    MEdtHoraIni: TMaskEdit;
    Label3: TLabel;
    Label2: TLabel;
    DateTimePicker2: TDateTimePicker;
    Label5: TLabel;
    MEdtHoraFim: TMaskEdit;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Button1: TButton;
    sqlqATEND: TSQLQuery;
    dspATEND: TDataSetProvider;
    cdsATEND: TClientDataSet;
    cdsATENDIDPACIENTE: TIntegerField;
    cdsATENDDATA_ATEND: TSQLTimeStampField;
    cdsATENDNOME: TStringField;
    cdsATENDIDADE: TIntegerField;
    dsATEND: TDataSource;
    Button2: TButton;
    butImprimir: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure butImprimirClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_RelAtend: TF_RelAtend;

implementation

uses UDM, UGeral, UImpAtendidos;

{$R *.dfm}

procedure TF_RelAtend.Button1Click(Sender: TObject);
var DataIni, DataFim, sSQL : string;
    Qry: TSQLQuery;
begin
   cdsAtend.Close;
   DataIni := DateToStr(DateTimePicker1.Date);
   DataIni := DataIni +' '+MEdtHoraIni.Text+':00';
   DataFim := DateToStr(DateTimePicker2.Date);
   DataFim := DataFim +' '+MedtHoraFim.Text+':00';
   DataIni := SubstBarraPonto(DataIni);
   DataFim := SubstBarraPonto(DataFim);
//   sSQLAnt := DM_Cela.SQLQRY_Caixa.SQL.Text;
   sSQL := 'SELECT IDPACIENTE, DATA_ATEND, NOME, IDADE ';
   sSQL := sSQL + 'FROM PACIENTES ';
   sSQL := sSQL + 'WHERE (DATA_ATEND BETWEEN ';
   sSQL := sSQL + QuotedStr(DATAINI);
   sSQL := sSQL + ' AND ';
   sSQL := sSQL + QuotedStr(DATAFIM)+')';
   sSQL := sSQL + ' ORDER BY DATA_ATEND ';
   sqlqATEND.SQL.Text := sSQL;
   cdsAtend.Open;
   {
   Try
      cdsATEND.Open;
   except
       showmessage('Erro no arquivo');
   End;
    }
   butImprimir.SetFocus;
end;

procedure TF_RelAtend.Button2Click(Sender: TObject);
begin
   cdsATEND.Close;
   Close;
end;

procedure TF_RelAtend.butImprimirClick(Sender: TObject);
begin
   Application.CreateForm(TF_ImpAtend,F_ImpAtend);
   F_ImpAtend.QuickRep1.PreviewModal;
   F_ImpAtend.Free;
   Close;
end;

procedure TF_RelAtend.FormCreate(Sender: TObject);
begin
  DateTimePicker1.Date := Now();
  DateTimePicker2.Date := Now();
  MEdtHoraIni.Text := '00:00';
  MedtHoraFim.Text := '23:59';

end;

end.
