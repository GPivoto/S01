
module Rastreavel
  def obter_localizacao(hora)
    puts "Localização de #{self.class}: #{@nome} registrada às #{hora}: #{@localizacao}"
  end
end

module Perigoso
  def calcular_risco
    "Nível de risco de #{@nome}: #{rand(1..10)} / 10"
  end
end

class Participante
  attr_accessor :nome, :localizacao

  def initialize(nome)
    @nome = nome
    @localizacao = "Desconhecida"
  end

  def to_s
    "#{@nome} (#{self.class})"
  end
end

class Detetive < Participante
  include Rastreavel

  def initialize(nome)
    super(nome)
  end

  def investigar(peca)
    puts "#{@nome} está investigando o caso '#{peca}'..."
  end
end

class MestreDoCrime < Participante
  include Rastreavel
  include Perigoso

  def initialize(nome)
    super(nome)
  end

  def executar_plano(plano)
    puts "#{@nome} iniciou o plano maligno: '#{plano}'!"
  end
end

class Cenario
  def initialize(participantes)
    @participantes = participantes
  end

  def identificar_ameacas
    perigosos = @participantes.select { |p| p.respond_to?(:calcular_risco) }
    perigosos
  end

  def listar_participantes
    puts "Participantes no cenário:"
    @participantes.each { |p| puts "- #{p}" }
  end
end

puts "Jogo das Sombras"

sherlock = Detetive.new("Sherlock Holmes")
moriarty = MestreDoCrime.new("Professor Moriarty")

puts "Digite a localização atual de Sherlock Holmes:"
sherlock.localizacao = gets.chomp

puts "Digite a localização atual de Moriarty:"
moriarty.localizacao = gets.chomp

puts "Digite o horário atual (ex: 22:30):"
hora = gets.chomp

sherlock.obter_localizacao(hora)
moriarty.obter_localizacao(hora)

cenario = Cenario.new([sherlock, moriarty])

cenario.listar_participantes

puts "Identificando ameaças no cenário..."
ameacas = cenario.identificar_ameacas

if ameacas.empty?
  puts "Nenhum criminoso encontrado."
else
  ameacas.each do |alvo|
    puts "#{alvo.nome} é uma ameaça. #{alvo.calcular_risco}"
  end
end
