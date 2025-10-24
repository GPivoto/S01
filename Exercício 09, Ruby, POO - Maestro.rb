
class Musico
  attr_reader :nome, :instrumento

  def initialize(nome, instrumento)
    @nome = nome
    @instrumento = instrumento
  end

  def tocar_partitura(peca)
    raise NotImplementedError, "O método tocar_partitura deve ser implementado nas subclasses."
  end

  def to_s
    "#{@nome} (#{@instrumento})"
  end
end

class Pianista < Musico
  def initialize(nome)
    super(nome, "Piano")
  end

  def tocar_partitura(peca)
    puts "#{@nome} está tocando a peça '#{peca}' ao piano com emoção!"
  end
end

class Violinista < Musico
  def initialize(nome)
    super(nome, "Violino")
  end

  def tocar_partitura(peca)
    puts "#{@nome} está executando a peça '#{peca}' no violino com precisão!"
  end
end

class Maestro
  def initialize(nome, musicos)
    @nome = nome
    @musicos = musicos
  end

  def iniciar_ensaio(peca)
    puts "\n🎵 Maestro #{@nome} inicia o ensaio da peça '#{peca}'!"
    @musicos.each do |musico|
      musico.tocar_partitura(peca)
    end
  end

  def mudar_foco(estado)
    mensagens = @musicos.map do |musico|
      "#{musico.nome} agora está #{estado}!"
    end
    mensagens
  end
end

puts "Digite o nome da peça a ser ensaiada:"
peca = gets.chomp

musico1 = Pianista.new("Kousei")
musico2 = Violinista.new("Kaori")
musico3 = Violinista.new("Takeshi")

maestro = Maestro.new("Hiroshi", [musico1, musico2, musico3])

maestro.iniciar_ensaio(peca)

puts "\n🎶 Mudando o foco dos músicos..."
mensagens_foco = maestro.mudar_foco("Concentrado")
mensagens_foco.each { |msg| puts msg }
