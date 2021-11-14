object DM: TDM
  Height = 251
  Width = 486
  PixelsPerInch = 120
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=clinica'
      'User_Name=postgres'
      'Password=1203'
      'Server=127.0.0.1'
      'DriverID=PG')
    Connected = True
    LoginPrompt = False
    Left = 24
    Top = 80
  end
  object tbAgenda: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = Conexao
    TableName = 'agenda'
    Left = 104
    Top = 128
    object tbAgendaid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
    end
    object tbAgendaid_paciente: TIntegerField
      FieldName = 'id_paciente'
      Origin = 'id_paciente'
    end
    object tbAgendadata: TDateField
      FieldName = 'data'
      Origin = 'data'
      EditMask = '##/##/####;1;_'
    end
    object tbAgendahora: TWideStringField
      FieldName = 'hora'
      Origin = 'hora'
      EditMask = '##:##;1;_'
      Size = 5
    end
    object tbAgendaespecialidade: TWideStringField
      FieldName = 'especialidade'
      Origin = 'especialidade'
      Size = 25
    end
    object tbAgendamedico: TWideStringField
      FieldName = 'medico'
      Origin = 'medico'
      Size = 30
    end
  end
  object tbPaciente: TFDTable
    Active = True
    AfterInsert = tbPacienteAfterInsert
    IndexFieldNames = 'id'
    Connection = Conexao
    TableName = 'paciente'
    Left = 104
    Top = 48
    object tbPacienteid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
    end
    object tbPacientecpf: TWideStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      EditMask = '###.###.###-##;1;_'
      Size = 14
    end
    object tbPacientenome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 60
    end
    object tbPacientecelular: TWideStringField
      FieldName = 'celular'
      Origin = 'celular'
      EditMask = '(##)#####-####;1;_'
      Size = 16
    end
    object tbPacientedata_cadastro: TDateField
      FieldName = 'data_cadastro'
      Origin = 'data_cadastro'
    end
  end
  object dsPaciente: TDataSource
    DataSet = tbPaciente
    Left = 184
    Top = 48
  end
  object dsAgenda: TDataSource
    DataSet = tbAgenda
    Left = 176
    Top = 128
  end
end
