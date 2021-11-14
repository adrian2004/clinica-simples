unit Unit1DM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDM = class(TDataModule)
    Conexao: TFDConnection;
    tbAgenda: TFDTable;
    tbPaciente: TFDTable;
    dsPaciente: TDataSource;
    dsAgenda: TDataSource;
    tbPacienteid: TIntegerField;
    tbPacientecpf: TWideStringField;
    tbPacientenome: TWideStringField;
    tbPacientecelular: TWideStringField;
    tbPacientedata_cadastro: TDateField;
    tbAgendaid: TIntegerField;
    tbAgendaid_paciente: TIntegerField;
    tbAgendadata: TDateField;
    tbAgendahora: TWideStringField;
    tbAgendaespecialidade: TWideStringField;
    tbAgendamedico: TWideStringField;
    procedure tbPacienteAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM.tbPacienteAfterInsert(DataSet: TDataSet);
begin
  tbPacientedata_cadastro.Value := Date();
end;

end.
