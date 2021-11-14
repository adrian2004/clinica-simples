unit UnitCadAgendamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Mask, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TformCadAgendamentos = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBNavigator1: TDBNavigator;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBComboBox1: TDBComboBox;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    DBGrid1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formCadAgendamentos: TformCadAgendamentos;

implementation

{$R *.dfm}

uses Unit1DM;

end.
