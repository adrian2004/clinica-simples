object formCadAgendamentos: TformCadAgendamentos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de agendamentos'
  ClientHeight = 323
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
    Width = 98
    Height = 15
    Caption = 'Nome do paciente'
  end
  object Label5: TLabel
    Left = 24
    Top = 149
    Width = 24
    Height = 15
    Caption = 'Data'
  end
  object Label3: TLabel
    Left = 161
    Top = 147
    Width = 26
    Height = 15
    Caption = 'Hora'
  end
  object Label4: TLabel
    Left = 24
    Top = 203
    Width = 71
    Height = 15
    Caption = 'Especialidade'
  end
  object Label6: TLabel
    Left = 24
    Top = 261
    Width = 40
    Height = 15
    Caption = 'M'#233'dico'
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
      Width = 195
      Height = 37
      Caption = 'Agendamentos'
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
      Width = 310
      Height = 37
      DataSource = DM.dsAgenda
      TabOrder = 0
    end
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 24
    Top = 112
    Width = 225
    Height = 23
    DataField = 'id_paciente'
    DataSource = DM.dsAgenda
    KeyField = 'id'
    ListField = 'nome'
    ListSource = DM.dsPaciente
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 24
    Top = 168
    Width = 88
    Height = 23
    DataField = 'data'
    DataSource = DM.dsAgenda
    MaxLength = 10
    TabOrder = 2
  end
  object DBEdit1: TDBEdit
    Left = 161
    Top = 168
    Width = 88
    Height = 23
    DataField = 'hora'
    DataSource = DM.dsAgenda
    MaxLength = 5
    TabOrder = 3
  end
  object DBComboBox1: TDBComboBox
    Left = 24
    Top = 224
    Width = 225
    Height = 23
    DataField = 'especialidade'
    DataSource = DM.dsAgenda
    Items.Strings = (
      'Oftalmologista'
      'Cardiologista'
      'Proctologista'
      'Ginecologista'
      'Psicologo'
      'Psiquiatra')
    TabOrder = 4
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 282
    Width = 221
    Height = 23
    DataField = 'medico'
    DataSource = DM.dsAgenda
    TabOrder = 5
  end
  object DBGrid1: TDBGrid
    Left = 284
    Top = 127
    Width = 320
    Height = 178
    DataSource = DM.dsAgenda
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'hora'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'especialidade'
        Visible = True
      end>
  end
end
