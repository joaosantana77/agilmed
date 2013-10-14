unit UQRREC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls;

type
  TF_PrintREC = class(TForm)
    qrREC: TQuickRep;
    TitleBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    qrlblTIT1: TQRLabel;
    qrlblTIT2: TQRLabel;
    qrlblNOME: TQRLabel;
    PageFooterBand1: TQRBand;
    QRImage1: TQRImage;
    DetailBand1: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText1: TQRDBText;
    QRSysData1: TQRSysData;
    qrNome: TQRLabel;
    qrCargo: TQRLabel;
    qrCRM: TQRLabel;
    procedure qrRECBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_PrintREC: TF_PrintREC;

implementation

uses Uprincipal;

{$R *.dfm}

procedure TF_PrintREC.qrRECBeforePrint(Sender: TCustomQuickRep;
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
   qrlblNOME.Caption := F_Principal.lblNOME.Caption;
   //qrIREC.Picture.LoadFromFile(EXTRACTFILEPATH(PARAMSTR(0))+'ADRM4.BMP');
   qrNome.Caption  := NomeMedico;
   qrCargo.Caption := CargMedico;
   qrCRM.Caption   := CRM_Medico;

end;

end.