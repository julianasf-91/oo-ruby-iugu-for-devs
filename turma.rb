class Turma
    attr_reader :alunos 
    attr_writer :nome

    def initialize(nome)
        @nome = nome
        @alunos = []
    end
    def adiciona_aluno(aluno)
        alunos << aluno
    end
    def total_alunos(turma)
        print("Essa turma possui #{alunos.length.to_s()} alunos")
    end

    private
    attr_writer :alunos
end
