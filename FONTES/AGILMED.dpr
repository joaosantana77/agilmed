program AGILMED;

uses
  Forms,
  Uprincipal in 'Uprincipal.pas' {F_Principal},
  UDM in 'UDM.pas' {DM: TDataModule},
  ufrmCadPadrao in 'ufrmCadPadrao.pas' {frmCadastro},
  uCadMedicos in 'uCadMedicos.pas' {F_CadMed},
  uCadRemedios in 'uCadRemedios.pas' {F_CadRem},
  ULibrary in 'ULibrary.pas',
  UCadLocal in 'UCadLocal.pas' {F_CadLocal},
  UCadExames in 'UCadExames.pas' {F_CadExames},
  UQRREC in 'UQRREC.pas' {F_PrintREC},
  UCadPosol in 'UCadPosol.pas' {F_CadPosol},
  UQRAT in 'UQRAT.pas' {F_PrintAT},
  UQREXAM in 'UQREXAM.pas' {F_PrintEXAM},
  UConfig in 'UConfig.pas' {F_Config},
  UCadPacientes in 'UCadPacientes.pas' {F_CadPacientes},
  URelATEND in 'URelATEND.pas' {F_RelAtend},
  uGeral in 'uGeral.pas',
  UImpAtendidos in 'UImpAtendidos.pas' {F_ImpAtend},
  UABOUT in 'UABOUT.pas' {F_Sobre},
  fsenha in 'fsenha.pas' {F_Senha};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TF_Principal, F_Principal);
  Application.CreateForm(TDM, DM);
  F_Senha := TF_Senha.Create(Application);
  try
     F_Senha.ShowModal;
  finally
     F_Senha.Free;
  end;

  Application.Run;
end.