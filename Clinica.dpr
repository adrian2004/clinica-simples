program Clinica;

uses
  Vcl.Forms,
  UnitPrincipal in 'UnitPrincipal.pas' {formPrincipal},
  UnitCadAgendamentos in 'UnitCadAgendamentos.pas' {formCadAgendamentos},
  UnitCadPacientes in 'UnitCadPacientes.pas' {formCadPacientes},
  Unit1DM in 'Unit1DM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformPrincipal, formPrincipal);
  Application.CreateForm(TformCadPacientes, formCadPacientes);
  Application.CreateForm(TformCadAgendamentos, formCadAgendamentos);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
