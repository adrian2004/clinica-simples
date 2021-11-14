unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Menus;

type
  TformPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Sistema1: TMenuItem;
    Sair1: TMenuItem;
    Cadastros1: TMenuItem;
    Pacientes1: TMenuItem;
    Agendamentos1: TMenuItem;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Image1: TImage;
    Edit1: TEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Pacientes1Click(Sender: TObject);
    procedure Agendamentos1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formPrincipal: TformPrincipal;

implementation

{$R *.dfm}

uses UnitCadPacientes, UnitCadAgendamentos;

procedure TformPrincipal.Agendamentos1Click(Sender: TObject);
begin
  formCadAgendamentos.ShowModal;
end;

procedure TformPrincipal.BitBtn1Click(Sender: TObject);
begin
  Edit1.SetFocus;
  formCadAgendamentos.ShowModal;
end;

procedure TformPrincipal.BitBtn2Click(Sender: TObject);
begin
  Edit1.SetFocus;
  formCadPacientes.ShowModal;
end;

procedure TformPrincipal.Pacientes1Click(Sender: TObject);
begin
  formCadPacientes.ShowModal;
end;

procedure TformPrincipal.Sair1Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.
