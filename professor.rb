class Professor
    attr_reader :ferias, :data_inicio_ferias, :data_fim_ferias
    attr_accessor :nome, :codigo_funcionario, :disciplina

    def initialize(nome, codigo_funcionario, disciplina)
        @nome = nome
        @codigo_funcionario = codigo_funcionario
        @disciplina = disciplina
        @ferias = false
        @data_inicio_ferias
        @data_fim_ferias
    end

    def inicia_ferias()
        @ferias = true
        @data_inicio_ferias = Time.now()
    end

    def encerra_ferias()
        @ferias = false
        @data_fim_ferias = Time.now()
    end
end