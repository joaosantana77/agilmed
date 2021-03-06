unit Uprincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ToolWin, Menus, ImgList, DB, DBCtrls,
  ActnList, XPStyleActnCtrls, ActnMan, Printers, ExtCtrls, Grids, DBGrids,
  Mask, ExtDlgs, jpeg, QuickRpt, QRCtrls, DBClient, Buttons, IniFiles;

type
  TF_Principal = class(TForm)
    edtNOME: TEdit;
    Label1: TLabel;
    ImageList1: TImageList;
    edtIDADE: TEdit;
    Label3: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    GroupBox1: TGroupBox;
    edtHora: TEdit;
    edtDias: TEdit;
    Label2: TLabel;
    dsRemedios: TDataSource;
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Relatrios1: TMenuItem;
    Medicos1: TMenuItem;
    Pacientes3: TMenuItem;
    Posologias: TMenuItem;
    Sair1: TMenuItem;
    Remedios1: TMenuItem;
    Atendidos1: TMenuItem;
    AtendimentosnoPerodo1: TMenuItem;
    Remdios1: TMenuItem;
    butEnvNome: TButton;
    ActionManager1: TActionManager;
    actCadRemedios: TAction;
    actLocal: TAction;
    dsPosto: TDataSource;
    dsMedico: TDataSource;
    rgExame: TRadioGroup;
    Button9: TButton;
    DBGrid1: TDBGrid;
    dsExames: TDataSource;
    butLimpa: TButton;
    Button11: TButton;
    edtLocaliza: TEdit;
    DBGrid2: TDBGrid;
    cbPsl: TComboBox;
    Label9: TLabel;
    edtApres: TEdit;
    edtPos: TEdit;
    Panel1: TPanel;
    lblTIT1: TLabel;
    lblTIT2: TLabel;
    DBGrid3: TDBGrid;
    cdsTmp: TClientDataSet;
    cdsTmpCOMP: TStringField;
    dsTmp: TDataSource;
    butImp: TButton;
    butRECLimpa: TButton;
    actPosologia: TAction;
    Label7: TLabel;
    Panel2: TPanel;
    lblTITAt1: TLabel;
    lblTITAT2: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    butAtestEnvia: TButton;
    edtAt1: TEdit;
    edtATNome: TEdit;
    edtAT2: TEdit;
    edtAT4: TEdit;
    edtAT6: TEdit;
    RichEdit1: TRichEdit;
    edtAT3: TEdit;
    edtAT5: TEdit;
    butATEIMP: TButton;
    butATELimpa: TButton;
    Panel3: TPanel;
    lblTITEX1: TLabel;
    lblTITEX2: TLabel;
    butEXAIMP: TButton;
    butEXALimpa: TButton;
    DBGrid4: TDBGrid;
    cdsTMPEX: TClientDataSet;
    dsTMPEX: TDataSource;
    cdsTMPEXMARCA: TStringField;
    cdsTMPEXNOME: TStringField;
    BitBtn1: TBitBtn;
    ImageList2: TImageList;
    Configuraes1: TMenuItem;
    actRelATEND: TAction;
    cdsTmpREMEDIO: TStringField;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    Sobre1: TMenuItem;
    N1: TMenuItem;
    Sair2: TMenuItem;
    sbGravaRemedio: TSpeedButton;
    SpeedButton1: TSpeedButton;
    GroupBox2: TGroupBox;
    lblNOME: TLabel;
    spEnvRec1: TSpeedButton;
    EnvRec2: TSpeedButton;
    GroupBox3: TGroupBox;
    lblAtest: TLabel;
    GroupBox4: TGroupBox;
    lblEXNOME: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Mdicos1: TMenuItem;
    actMedicos: TAction;
    lblVERSAO: TLabel;
    procedure ToolButton4Click(Sender: TObject);
    procedure Pacientes1Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure butRec1Click(Sender: TObject);
    procedure actCadRemediosExecute(Sender: TObject);
    procedure actLocalExecute(Sender: TObject);
    procedure butEnvNomeClick(Sender: TObject);
    procedure Medicos1Click(Sender: TObject);
    procedure butATELimpaClick(Sender: TObject);
    procedure rgExameClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure butLimpaClick(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure butLimpaNomeClick(Sender: TObject);
    procedure edtLocalizaKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure edtIDADEExit(Sender: TObject);
    procedure butImpClick(Sender: TObject);
    procedure actPosologiaExecute(Sender: TObject);
    procedure butAtestSubstClick(Sender: TObject);
    procedure butAtestEnviaClick(Sender: TObject);
    procedure butATEIMPClick(Sender: TObject);
    procedure butRECLimpaClick(Sender: TObject);
    procedure butEXAIMPClick(Sender: TObject);
    procedure butGRAVNREMClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure butEXALimpaClick(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Configuraes1Click(Sender: TObject);
    procedure GravaIni(aImpres, aCopias, aTitulo: string);
    procedure LeIni(var aImpres, aCopias, aTitulo: string);
    procedure Atendidos1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure actRelATENDExecute(Sender: TObject);
    procedure Sair2Click(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure sbGravaRemedioClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure spEnvRec1Click(Sender: TObject);
    procedure actMedicosExecute(Sender: TObject);
    procedure EnvRec2Click(Sender: TObject);
  private
    { Private declarations }
//    function SubstString(S: String; C1: String; C2: String): String;
  public
    { Public declarations }
  end;

var
  F_Principal: TF_Principal;
  flagnome, nprod, ImpDireto, RecNumCopias, RecImpTitulo : string;
  Assinatura: TPicture;
  NomeMedico, CargMedico, CRM_Medico, NomePosto : string;


implementation

uses uCadMedicos, uCadRemedios, UDM, UCadLocal, UCadExames, uqrrec,
  UCadPosol, UQRAT, UQREXAM, UConfig, UCadPacientes, URelATEND, UABOUT, UGeral;
{$R *.dfm}

procedure TF_Principal.ToolButton4Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TF_Principal.Pacientes1Click(Sender: TObject);
begin
  with TF_CadMed.Create(Self) do
    try
      ShowModal;
    finally
      FreeAndNil(F_CadMed);
    end;

end;

procedure TF_Principal.FormPaint(Sender: TObject);
// var altura, coluna: Word;
begin
  { altura := (ClientHeight + 255) div 256;
    for coluna := 0 to 255 do
    with Canvas do
    begin
    Brush.Color := RGB(coluna, 255, 0); // Modifique para obter cores diferentes
    FillRect(Rect(0, coluna * altura, ClientWidth, (coluna + 1) * altura)) ;
    end; }
end;

procedure TF_Principal.FormResize(Sender: TObject);
begin
  // Invalidate;
end;

procedure TF_Principal.FormShow(Sender: TObject);
begin
  F_Principal.Caption := 'AGILMED - Dr. '+NomeMedico;
  dsRemedios.DataSet.Open;
  dsPosto.DataSet.Open;
  DM.cdsPosto.Locate('TIT1',Nomeposto,[]);
  // Coloca os titulos nos panels
  lblTIT1.Caption := DM.cdsPostoTIT1.AsString;
  lblTIT2.Caption := DM.cdsPostoTIT2.AsString;
  lblTITAt1.Caption := lblTIT1.Caption;
  lblTITAT2.Caption := lblTIT2.Caption;
  lblTITEX1.Caption := lblTIT1.Caption;
  lblTITEX2.Caption := lblTIT2.Caption;
  cdsTmp.CreateDataSet;
  DM.cdsCadPos.Open;
  DM.cdsCadPos.First;
  while not DM.cdsCadPos.Eof do
  begin
    cbPsl.Items.Add(DM.cdsCadPosPOSOLOGIA.AsString);
    DM.cdsCadPos.Next;
  end;
  DM.cdsCadPos.Close;

  flagnome := '0';
  PageControl1.ActivePageIndex := 0;
  edtHora.Text := FormatDateTime('hh:mm', now);
  cdsTMPEX.CreateDataSet;
  cdsTMPEX.Open;
  LeIni(ImpDireto,RecNumCopias,RecImpTitulo);

end;

procedure TF_Principal.butRec1Click(Sender: TObject);
var taman : integer;
    posol, lin1, lin2, lin3 : string;
begin
  if (edtNome.Text = '') then
  begin
     showmessage('Preencha o nome do paciente');
     edtNome.SetFocus;
     exit;
  end;

  posol := Trim(edtPos.Text);
  taman := Length(posol);
  lin1 := copy(posol,1,52);

  cdsTmp.Append;
  cdsTmpREMEDIO.Value := DM.cdsRemediosNOME.AsString;
  cdsTmpCOMP.Value := edtApres.Text;
  cdsTmp.Append;
  cdsTmpREMEDIO.Value := lin1;
  if taman > 52 then
  begin
     lin2 := copy(posol,53,52);
     cdsTmp.Append;
     cdsTmpREMEDIO.Value := lin2;
  end;
  if taman > 104  then
  begin
     lin3 := copy(posol,105,52);
     cdsTmp.Append;
     cdsTmpREMEDIO.Value := lin3;
  end;
  cdsTmp.Post;
end;

procedure TF_Principal.actCadRemediosExecute(Sender: TObject);
begin
  with TF_CadRem.Create(Self) do
    try
      ShowModal;
    finally
      FreeAndNil(F_CadRem);
    end;

end;

procedure TF_Principal.actLocalExecute(Sender: TObject);
begin
  with TF_CadLocal.Create(Self) do
    try
      ShowModal;
    finally
      FreeAndNil(F_CadLocal);
    end;

end;

procedure TF_Principal.actMedicosExecute(Sender: TObject);
begin
  with TF_CadMed.Create(Self) do
    try
      ShowModal;
    finally
      FreeAndNil(F_CadMed);
    end;

end;

procedure TF_Principal.butEnvNomeClick(Sender: TObject);
begin
  lblNOME.Caption := 'Nome: ' + edtNOME.Text;
  edtATNome.Text := edtNOME.Text;
  lblEXNOME.Caption := 'Nome: ' + edtNOME.Text;
  edtLocaliza.SetFocus;
end;

procedure TF_Principal.Medicos1Click(Sender: TObject);
begin
  with TF_CadExames.Create(Self) do
    try
      ShowModal;
    finally
      FreeAndNil(F_CadExames);
    end;

end;

procedure TF_Principal.butATELimpaClick(Sender: TObject);
var
  i, altura: Integer;
  sMemo: String;

begin
  RichEdit1.Clear;
end;

procedure TF_Principal.rgExameClick(Sender: TObject);
begin

  case rgExame.ItemIndex of
    0:
      DM.cdsEXAMES.Filtered := False;
    1:
      begin
        DM.cdsEXAMES.Filter := 'GRUPO = ' + QuotedStr('CHECKUP');
        DM.cdsEXAMES.Filtered := True;
      end;
    2:
      begin
        DM.cdsEXAMES.Filter := 'GRUPO = ' + QuotedStr('SANGUE');
        DM.cdsEXAMES.Filtered := True;
      end;
    3:
      begin
        DM.cdsEXAMES.Filter := 'GRUPO = ' + QuotedStr('ESPECIAL');
        DM.cdsEXAMES.Filtered := True;
      end;
  end;
end;

procedure TF_Principal.PageControl1Change(Sender: TObject);
begin
  if PageControl1.ActivePage = TabSheet3 then
  begin
    DM.cdsEXAMES.Open;
  end;
end;

procedure TF_Principal.butLimpaClick(Sender: TObject);
begin
  DM.cdsEXAMES.First;
  While not DM.cdsEXAMES.Eof do
  begin
    DM.cdsEXAMES.Edit;
    DM.cdsEXAMESSN.Value := ' ';
    DM.cdsEXAMES.Post;
    DM.cdsEXAMES.Next;
  end;

end;

procedure TF_Principal.Button11Click(Sender: TObject);
begin
  DM.cdsEXAMES.First;
  While not DM.cdsEXAMES.Eof do
  begin
    DM.cdsEXAMES.Edit;
    DM.cdsEXAMESSN.Value := 'S';
    DM.cdsEXAMES.Post;
    DM.cdsEXAMES.Next;
  end;

end;

procedure TF_Principal.Button1Click(Sender: TObject);
begin
  if MessageDlg('Tem certeza que deseja GRAVAR dados do Paciente?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    DM.cdsCadPACI.Open;
    DM.cdsCadPACI.Insert;
    DM.cdsCadPACIIDPACIENTE.Value := 0;
    DM.cdsCadPACIDATA_ATEND.AsDateTime := now;
    DM.cdsCadPACINOME.Value := edtNOME.Text;
    DM.cdsCadPACIIDADE.Value := STRTOINT(edtIDADE.Text);
    DM.Start;
    try
      DM.cdsCadPACI.Post;
      DM.Comit;
    except
      DM.Rollback;
    end;
    DM.cdsCadPACI.Close;
    if MessageDlg('Dados Gravados. Pode apagar os dados?', mtConfirmation,
      [mbYes, mbNo], 0) = mrYes then
    begin
      BitBtn1.Click;
    end;

  end;
end;

procedure TF_Principal.Button9Click(Sender: TObject);
begin
  DM.cdsEXAMES.First;
  while not DM.cdsEXAMES.Eof do
  begin
    if (DM.cdsEXAMESSN.AsString <> ' ') then
    begin
      { i     := Length(TRIM(DM.cdsCadExamNOME.AsString));
        l2    := TRIM(DM.cdsCadExamNOME.AsString);
        adlin := l2+' '+StringOfChar( '-', 50 - i) + '[ ]';
        }
      cdsTMPEX.Append;
      cdsTMPEXNOME.Value := DM.cdsEXAMESNOME.AsString;
      cdsTMPEXMARCA.Value := '[X]';
      cdsTMPEX.Post;
      // reEXAM.Lines.Add(adlin);
    end;
    // showMessage( StringOfChar( '0', 6 - Length( numero ) ) + numero );
    DM.cdsEXAMES.Next;
  end;
end;

procedure TF_Principal.Configuraes1Click(Sender: TObject);
begin
  with TF_Config.Create(Self) do
    try
      ShowModal;
    finally
      FreeAndNil(F_Config);
    end;

end;

procedure TF_Principal.butLimpaNomeClick(Sender: TObject);
begin
  edtNOME.Clear;

end;

procedure TF_Principal.edtLocalizaKeyPress(Sender: TObject; var Key: Char);
begin
  nprod := Trim(edtLocaliza.Text) + Key;
  dsRemedios.DataSet.Locate('NOME', nprod, [loPartialKey, loCaseInsensitive]);
  { if ((length(nprod) > 5) and
    not (dsRemedios.Dataset.Locate('NOME',nprod,[loPartialKey,loCaseInsensitive]))) then
    begin
    showmessage('remedio nao encontrado');
    end; }
end;

procedure TF_Principal.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0); // Dar Tab pelo ENTER
  end;

end;

procedure TF_Principal.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if gdSelected in State then
  begin
    DBGrid2.Canvas.Brush.Color := clYellow;
    DBGrid2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TF_Principal.edtIDADEExit(Sender: TObject);
begin
  butEnvNome.SetFocus;
end;

procedure TF_Principal.butImpClick(Sender: TObject);
begin
  Application.CreateForm(TF_PrintRec, F_PrintRec);
  if ImpDireto = 'S' then
  begin
    F_PrintRec.qrREC.Print;
    if (StrToInt(RecNumCopias) > 1) then
       F_PrintRec.qrREC.Print;
  end
  else
    F_PrintRec.qrREC.PreviewModal;
// fim impressao - libera form

  F_PrintRec.qrREC.Free;
  // F_Principal.cdsTmp.EmptyDataSet;
end;

procedure TF_Principal.actPosologiaExecute(Sender: TObject);
begin
  with TF_CadPosol.Create(Self) do
    try
      ShowModal;
    finally
      FreeAndNil(F_CadPosol);
    end;

end;

procedure TF_Principal.actRelATENDExecute(Sender: TObject);
begin
  with TF_RelAtend.Create(Self) do
    try
      ShowModal;
    finally
      FreeAndNil(F_RelAtend);
    end;

end;

procedure TF_Principal.Atendidos1Click(Sender: TObject);
begin
  with TF_CadPacientes.Create(Self) do
    try
      ShowModal;
    finally
      FreeAndNil(F_CadPacientes);
    end;

end;

procedure TF_Principal.butAtestSubstClick(Sender: TObject);
var nome: string;
begin
  nome := ' ' + edtNOME.Text + ' ';
end;

procedure TF_Principal.Sair1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TF_Principal.Sair2Click(Sender: TObject);
begin
   Application.Terminate;
end;

procedure TF_Principal.Sobre1Click(Sender: TObject);
begin
  with TF_Sobre.Create(Self) do
    try
      ShowModal;
    finally
      FreeAndNil(F_Sobre);
    end;
end;

procedure TF_Principal.SpeedButton1Click(Sender: TObject);
begin
  if MessageDlg('Tem certeza que deseja GRAVAR dados do Paciente?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    DM.cdsCadPACI.Open;
    DM.cdsCadPACI.Insert;
    DM.cdsCadPACIIDPACIENTE.Value := 0;
    DM.cdsCadPACIDATA_ATEND.AsDateTime := now;
    DM.cdsCadPACINOME.Value := edtNOME.Text;
    DM.cdsCadPACIIDADE.Value := STRTOINT(edtIDADE.Text);
    DM.Start;
    try
      DM.cdsCadPACI.Post;
      DM.Comit;
    except
      DM.Rollback;
    end;
    DM.cdsCadPACI.Close;
    if MessageDlg('Dados Gravados. Limpa as informa��es?', mtConfirmation,
      [mbYes, mbNo], 0) = mrYes then
    begin
      BitBtn1.Click;
    end;

  end;

end;

procedure TF_Principal.EnvRec2Click(Sender: TObject);
var taman : integer;
    posol, lin1, lin2, lin3 : string;
begin
  if (edtNome.Text = '') then
  begin
     showmessage('Preencha o nome do paciente');
     edtNome.SetFocus;
     exit;
  end;
  posol := Trim(cbPsl.Text);
  taman := Length(posol);
  lin1 := copy(posol,1,52);

  cdsTmp.Append;
  cdsTmpREMEDIO.Value := DM.cdsRemediosNOME.AsString;
  cdsTmpCOMP.Value := edtApres.Text;
  cdsTmp.Append;
  cdsTmpREMEDIO.Value := lin1;
  if taman > 52 then
  begin
     lin2 := copy(posol,53,52);
     cdsTmp.Append;
     cdsTmpREMEDIO.Value := lin2;
  end;
  if taman > 104  then
  begin
     lin3 := copy(posol,105,52);
     cdsTmp.Append;
     cdsTmpREMEDIO.Value := lin3;
  end;
  cdsTmp.Post;

end;

procedure TF_Principal.spEnvRec1Click(Sender: TObject);
var taman : integer;
    posol, lin1, lin2, lin3 : string;
begin
  if (edtNome.Text = '') then
  begin
     showmessage('Preencha o nome do paciente');
     edtNome.SetFocus;
     exit;
  end;
  posol := Trim(edtPos.Text);
  taman := Length(posol);
  lin1 := copy(posol,1,52);

  cdsTmp.Append;
  cdsTmpREMEDIO.Value := DM.cdsRemediosNOME.AsString;
  cdsTmpCOMP.Value := edtApres.Text;
  cdsTmp.Append;
  cdsTmpREMEDIO.Value := lin1;
  if taman > 52 then
  begin
     lin2 := copy(posol,53,52);
     cdsTmp.Append;
     cdsTmpREMEDIO.Value := lin2;
  end;
  if taman > 104  then
  begin
     lin3 := copy(posol,105,52);
     cdsTmp.Append;
     cdsTmpREMEDIO.Value := lin3;
  end;
  cdsTmp.Post;

end;

procedure TF_Principal.sbGravaRemedioClick(Sender: TObject);
var napres: string;
begin
  napres := edtApres.Text;
  if not(dsRemedios.DataSet.Locate('NOME;APRESENTACAO',
      VarArrayOF([nprod, napres]), [loPartialKey, loCaseInsensitive])) then
  // Tabela.Locate('Campo1;Campo2;Campo3', VarArrayOf(['Valor1', 'Valor2','Valor3']),[loPartialKey, loCaseinsensitive]);
  begin
    DM.cdsCadRemed.Open;
    DM.cdsCadRemed.Append;
    DM.cdsCadRemedNOME.Value := nprod;
    DM.cdsCadRemedIDREMEDIO.Value := 0;
    DM.cdsCadRemedAPRESENTACAO.Value := napres;
    DM.cdsCadRemedPOSOLOGIA.Value := edtPos.Text;
    DM.cdsCadRemed.Post;
    DM.cdsCadRemed.Close;
    DM.cdsRemedios.Close;
    DM.cdsRemedios.Open;
    dsRemedios.DataSet.Locate('NOME;APRESENTACAO', VarArrayOF([nprod, napres]),
      [loPartialKey, loCaseInsensitive]);
    // dsRemedios.Dataset.Locate('NOME',nprod,[loPartialKey,loCaseInsensitive]);
    // GravaRemedio;
  end
  else
  begin
    ShowMessage('Esse rem�dio j� est� cadastrado!');
  end;
end;

procedure TF_Principal.butAtestEnviaClick(Sender: TObject);
var
  l1, l2, l3, l4: string;
begin
  l1 := Trim(edtAt1.Text) + ' ' + Trim(edtATNome.Text);
  l2 := Trim(edtAT2.Text) + ' ' + Trim(edtHora.Text) + ' ' + Trim(edtAT3.Text);
  l3 := Trim(edtAT4.Text) + ' ' + Trim(edtDias.Text) + ' ' + Trim(edtAT5.Text);
  l4 := Trim(edtAT6.Text);

  RichEdit1.Lines.Add(l1 + ' ' + l2 + ' ' + l3 + ' ' + l4);
  { Richedit1.Lines.Add(l2);
    Richedit1.Lines.Add(l3);
    Richedit1.Lines.Add(l4); }
end;

procedure TF_Principal.butATEIMPClick(Sender: TObject);
begin
  Application.CreateForm(TF_PrintAT, F_PrintAT);
  if ImpDireto = 'S' then
    F_PrintAT.qrAT.Print
  else
    F_PrintAT.qrAT.PreviewModal;
  F_PrintAT.qrAT.Free;
end;

procedure TF_Principal.butRECLimpaClick(Sender: TObject);
begin
  cdsTmp.Emptydataset;

end;

procedure TF_Principal.butEXAIMPClick(Sender: TObject);
begin
  Application.CreateForm(TF_PrintExam, F_PrintExam);
  if ImpDireto = 'S' then
    F_PrintExam.qrEXAM.Print
  else
    F_PrintExam.qrEXAM.PreviewModal;
  F_PrintExam.qrEXAM.Free;
end;

procedure TF_Principal.butGRAVNREMClick(Sender: TObject);
var
  napres: string;
begin
  napres := edtApres.Text;
  if not(dsRemedios.DataSet.Locate('NOME;APRESENTACAO',
      VarArrayOF([nprod, napres]), [loPartialKey, loCaseInsensitive])) then
  // Tabela.Locate('Campo1;Campo2;Campo3', VarArrayOf(['Valor1', 'Valor2','Valor3']),[loPartialKey, loCaseinsensitive]);
  begin
    DM.cdsCadRemed.Open;
    DM.cdsCadRemed.Append;
    DM.cdsCadRemedNOME.Value := nprod;
    DM.cdsCadRemedIDREMEDIO.Value := 0;
    DM.cdsCadRemedAPRESENTACAO.Value := napres;
    DM.cdsCadRemedPOSOLOGIA.Value := edtPos.Text;
    DM.cdsCadRemed.Post;
    DM.cdsCadRemed.Close;
    DM.cdsRemedios.Close;
    DM.cdsRemedios.Open;
    dsRemedios.DataSet.Locate('NOME;APRESENTACAO', VarArrayOF([nprod, napres]),
      [loPartialKey, loCaseInsensitive]);
    // dsRemedios.Dataset.Locate('NOME',nprod,[loPartialKey,loCaseInsensitive]);
    // GravaRemedio;
  end
  else
  begin
    ShowMessage('Esse rem�dio j� est� cadastrado!');
  end;

end;

procedure TF_Principal.BitBtn1Click(Sender: TObject);
begin
  edtNOME.Text := '';
  edtATNome.Text := '';
  lblNOME.Caption := 'Nome: ';
  lblEXNOME.Caption := 'Nome: ';
  edtIDADE.Text := '0';
  butATELimpa.Click;
  butEXALimpa.Click;
  butRECLimpa.Click;
end;

procedure TF_Principal.butEXALimpaClick(Sender: TObject);
begin
  cdsTMPEX.Emptydataset;
end;

procedure TF_Principal.GravaIni(aImpres, aCopias, aTitulo: string);
var
  ArqIni: TIniFile;
begin
  ArqIni := TIniFile.Create(ExtractFilePath(Application.ExeName)
      + 'Config.ini');
  try
    ArqIni.WriteString('DADOS', 'IMPDIRETO', aImpres);
    ArqIni.WriteString('DADOS', 'COPIAS', aCopias);
    ArqIni.WriteString('DADOS', 'TITULO', aTitulo);
  finally
    ArqIni.Free;
  end;
end;

procedure TF_Principal.LeIni(var aImpres, aCopias, aTitulo: string);
var
  ArqIni: TIniFile;
begin
  ArqIni := TIniFile.Create(ExtractFilePath(Application.ExeName)
      + 'Config.ini');
  try
    aImpres := ArqIni.ReadString('DADOS', 'IMPDIRETO', ImpDireto);
    aCopias := ArqIni.ReadString('DADOS', 'COPIAS', RecNumCopias);
    aTitulo := ArqIni.ReadString('DADOS', 'TITULO', RecImpTitulo);

  finally
    ArqIni.Free;
  end;
end;

end.
