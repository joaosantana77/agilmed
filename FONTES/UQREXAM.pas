unit UQREXAM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls;

type
  TF_PrintEXAM = class(TForm)
    qrEXAM: TQuickRep;
    DetailBand1: TQRBand;
    TitleBand1: TQRBand;
    PageFooterBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    qrlblTIT1: TQRLabel;
    qrlblTIT2: TQRLabel;
    QRLabel2: TQRLabel;
    qrEXNOME: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRSysData1: TQRSysData;
    qrNome: TQRLabel;
    qrCargo: TQRLabel;
    qrCRM: TQRLabel;
    procedure qrEXAMBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_PrintEXAM: TF_PrintEXAM;

implementation

uses Uprincipal;

{$R *.dfm}

procedure TF_PrintEXAM.qrEXAMBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
   if (RecImpTitulo = 'S') then
   begin
      qrlblTIT1.Caption := F_Principal.lblTIT1.Caption;
      qrlblTIT2.Caption := F_Principal.lblTIT2.Caption;
   end
   else
   begin
      qrlblTIT1.Caption := ' ';
      qrlblTIT2.Caption := ' ';
   end;
   qrEXNOME.Caption  := F_Principal.lblEXNOME.Caption;
//   qrIMEXAM.Picture.LoadFromFile(EXTRACTFILEPATH(PARAMSTR(0))+'ADRM4.BMP');
   qrNome.Caption  := NomeMedico;
   qrCargo.Caption := CargMedico;
   qrCRM.Caption   := CRM_Medico;
   F_Principal.cdsTMPEX.First;

end;

end.
