
class MicroondasUnidade
  def aquecer_por(segundos)
    puts "Aquecendo por #{segundos} segundos..."
    sleep(1) 
    puts " Aquecimento concluído!"
  end
end

class DMail
  attr_reader :conteudo, :hora_envio

  def initialize(conteudo, hora_envio)
    @conteudo = conteudo
    @hora_envio = hora_envio
  end

  def to_s
    "D-Mail: '#{@conteudo}' enviado às #{@hora_envio}"
  end
end

class TelefoneDeMicroondas
  def initialize
    @unidade = MicroondasUnidade.new  
    @dmails = []                     
  end

  def enviar_dmail
    puts "Digite o conteúdo do D-Mail:"
    conteudo = gets.chomp

    puts "Digite a hora de envio (ex: 10:30):"
    hora_envio = gets.chomp

    puts "Quantos segundos o micro-ondas deve aquecer?"
    segundos = gets.chomp.to_i

    @unidade.aquecer_por(segundos)

    novo_dmail = DMail.new(conteudo, hora_envio)
    @dmails << novo_dmail

    puts "D-Mail enviado com sucesso!\n"
  end

  def listar_dmails(horario_corte)
    puts "\n📋 D-Mails enviados após #{horario_corte}:"
    filtrados = @dmails.select { |dmail| dmail.hora_envio > horario_corte }

    if filtrados.empty?
      puts "Nenhum D-Mail encontrado após o horário informado."
    else
      filtrados.each { |dmail| puts dmail.to_s }
    end
  end
end

telefone = TelefoneDeMicroondas.new

puts "=== Sistema D-Mail Iniciado ==="

loop do
  puts "\nEscolha uma opção:"
  puts "1 - Enviar novo D-Mail"
  puts "2 - Listar D-Mails após um horário"
  puts "3 - Sair"
  print "> "
  opcao = gets.chomp.to_i

  case opcao
  when 1
    telefone.enviar_dmail
  when 2
    puts "Digite o horário de corte (ex: 12:00):"
    horario_corte = gets.chomp
    telefone.listar_dmails(horario_corte)
  when 3
    puts "Encerrando o sistema D-Mail..."
    break
  else
    puts "Opção inválida!"
  end
end
