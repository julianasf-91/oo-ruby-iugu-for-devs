class Turma
    attr_accessor :alunos, :nome

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
end
