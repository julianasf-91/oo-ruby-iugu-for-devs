class Funcionario
    attr_reader :ferias, :data_inicio_ferias, :data_fim_ferias
    attr_accessor :nome, :ferias, :codigo_funcionario
    
    def initialize(nome, codigo_funcionario)
        @nome = nome
        @codigo_funcionario = codigo_funcionario
        @ferias = false
    end
    def imprime()
        puts "Funcionário: #{nome} - Código: #{codigo_funcionario.to_s()} - Férias: #{ferias}" 
    end
    def inicia_ferias()
        ferias = true
        data_inicio_ferias = Time.now()
    end
    def encerra_ferias()
        ferias = false
        data_fim_ferias = Time.now()
    end
end

