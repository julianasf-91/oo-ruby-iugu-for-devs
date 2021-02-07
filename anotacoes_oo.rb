class Aluno                             #cria uma classe, sempre inicia com letra maiúscula  
end

require_relative 'aluno'                #serve para carregar o arquivo aluno.rb, retorna true, toda vez que alterar a class sair e digitar esse comando novamente

jose = Aluno.new                        #objeto criado "instância de uma class"

class Aluno                                 
    def initialize(nome, telefone, matricula)       #initialize altera o comportamento padrão da classe, com os atributos das classes
        @nome = nome                                #@variavel para declararos atributosdos objetos
        @telefone = telefone
        @matricula = matricula
    end
 end

 ana = Aluno.new('Ana','99 9999-0000','2255')       #cria um obejeto de acordo com o novo comportamento 

 class Aluno                                 
    def initialize(nome, telefone, matricula)       #metodo initialize altera o comportamento padrão da classe, com os atributos das classes
        @nome = nome                                #@variavel para declararos atributosdos objetos
        @telefone = telefone
        @matricula = matricula
    end
    def telefone                                    #metodo getter
        return @telefone                            #retorna o numero de telefone
    end
    def telefone = (valor)                          #metodo setter
        @telefone = valor                           #digitar o valor com aspa    
    end
 end

 class Aluno       
    attr_accessor :nome, :telefone, :matricula      #attr_accessor permite a leitura e escrita
                                                    #attr_reader declara todos os métodos de leitura de valor
    def initialize(nome, telefone, matricula)       #attr_writer declara todods os métodos de escita
        @nome = nome                                
        @telefone = telefone
        @matricula = matricula
    end
 end

 alan.inspect                                       #inspeciona o objeto

 class Professor
    attr_reader :ferias
    attr_accessor :nome, :codigo_funcionario, :disciplina

    def initialize(nome, codigo_funcionario, disciplina)
        @nome = nome
        @codigo_funcionario = codigo_funcionario
        @disciplina = disciplina
        @ferias = false
    end

    def inicia_ferias()                                #método para iniciar férias
        @ferias = true
    end
end

alan.inicia_ferias()                                   #usando o método de férias, mas pode ser escrito: alan.send(:inicia_ferias)

class Professor
    attr_reader :ferias, :data_inicio_ferias, :data_fim_ferias
    attr_accessor :nome, :codigo_funcionario, :disciplina

    def initialize(nome, codigo_funcionario, disciplina)
        @nome = nome
        @codigo_funcionario = codigo_funcionario
        @disciplina = disciplina
        @ferias = false
        @data_inicio_ferias = 0
        @data_fim_ferias = 0
    end

    def inicia_ferias()
        @ferias = true
        @data_inicio_ferias = Time.now()                    #método retorna o dia e hora atual do seu computador
    end

    def encerra_ferias()
        @ferias = false
        @data_fim_ferias = Time.now()
    end
end


class Turma
    attr_accessor :alunos, :nome

    def initialize(nome)
        @nome = nome
        @alunos = []
    end
    def adiciona_aluno(aluno)                               #recebe um objeto como parâmetro
        alunos << aluno                                     #adiciona o objeto dentro do array alunos
    end
    def total_alunos(alunos)
        print("Essa turma possui #{alunos.length.to_s()} alunos")     
    end
end

class Turma
    attr_reader :alunos                                                 #dentro da class somente lê
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

    private                                                             #consegue trocar seu valor somente através
    attr_writer :alunos                                                 #dos métodos declarados na class Turma
end

turma1 = Turma.new('Turma 101')                                         #cria um objeto dentro da class turma
ana = Aluno.new('Ana', '99 9999 9999', 123)                             #cria um objeto dentro da class aluno      
turma1.adiciona_aluno(ana)                                              #adiciona o aluno dentro do objeto ana


class Professor < Funcionario                                           #professor herda de funcionários
    attr_accessor :disciplina

    def initialize(nome, codigo_funcionario, disciplina)
        super(nome, codigo_funcionario)                                 #método supe, permite chmar o método com o mesmo nome na classe pai, ou, seja, o initialize da classe pai 
        @disciplina = disciplina
    end
    def imprime()
        puts "Funcionário: #{nome} - Código: #{codigo_funcionario.to_s()} - Férias: #{ferias} - Disciplina: #{disciplina}"
    end
end

