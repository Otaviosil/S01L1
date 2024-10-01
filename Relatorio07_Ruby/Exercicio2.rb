class Carro
  def descrever
    "Este é um carro generico."
  end
end

class CarroEsportivo < Carro
  def descrever
    "Este é um carro esportivo para alta performance."
  end
end

class CarroSedan < Carro
  def descrever
    "Este é um carro sedan para viagens familiares."
  end
end

carro_generico = Carro.new
carro_esportivo = CarroEsportivo.new
carro_sedan = CarroSedan.new

puts carro_generico.descrever
puts carro_esportivo.descrever
puts carro_sedan.descrever