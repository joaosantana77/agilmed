program ATIVAGILMED;

uses
  Forms,
  UAtivacao in 'UAtivacao.pas' {F_Ativacao};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TF_Ativacao, F_Ativacao);
  Application.Run;
end.
