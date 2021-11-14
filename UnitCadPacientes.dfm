object formCadPacientes: TformCadPacientes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de pacientes'
  ClientHeight = 488
  ClientWidth = 620
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 15
  object Label2: TLabel
    Left = 24
    Top = 91
    Width = 33
    Height = 15
    Caption = 'Nome'
  end
  object Label3: TLabel
    Left = 24
    Top = 139
    Width = 21
    Height = 15
    Caption = 'CPF'
  end
  object Label4: TLabel
    Left = 24
    Top = 187
    Width = 44
    Height = 15
    Caption = 'Telefone'
  end
  object Label5: TLabel
    Left = 24
    Top = 237
    Width = 88
    Height = 15
    Caption = 'Data de cadastro'
  end
  object label6: TLabel
    Left = 284
    Top = 115
    Width = 83
    Height = 15
    Caption = 'Buscar paciente'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 620
    Height = 81
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 15
      Width = 244
      Height = 37
      Caption = 'Cadastro pacientes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 284
      Top = 15
      Width = 280
      Height = 37
      DataSource = DM.dsPaciente
      TabOrder = 0
    end
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 112
    Width = 217
    Height = 23
    DataField = 'nome'
    DataSource = DM.dsPaciente
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 158
    Width = 153
    Height = 23
    DataField = 'cpf'
    DataSource = DM.dsPaciente
    MaxLength = 14
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 24
    Top = 256
    Width = 217
    Height = 23
    DataField = 'data_cadastro'
    DataSource = DM.dsPaciente
    ReadOnly = True
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 24
    Top = 208
    Width = 121
    Height = 23
    DataField = 'celular'
    DataSource = DM.dsPaciente
    MaxLength = 14
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 284
    Top = 171
    Width = 320
    Height = 309
    DataSource = DM.dsPaciente
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'PACIENTES CADASTRADOS'
        Visible = True
      end>
  end
  object txtBusca: TEdit
    Left = 284
    Top = 136
    Width = 310
    Height = 23
    TabOrder = 5
    OnChange = txtBuscaChange
  end
end
