#Hash com os números associados aos objetos
numeros_para_objetos = {
  1234 => "Gaveta de Parafusos",
  5678 => "Gaveta de Porcas",
  9012 => "Gaveta de Arruela",
  123 => "Prego",
  9912 => "Broca",
  7164 => "Tampa de LEDs",
  4242 => "Botões",
  3234 => "Lero Lero",
  2434 => "Inventado"
}

#Função para buscar o número de um objeto
def buscar_numero(objeto, numeros_para_objetos)
  numero = numeros_para_objetos.key(objeto)
  return numero
end

#Função para buscar o objeto a partir de um número
def buscar_objeto(numero, numeros_para_objetos)
  objeto = numeros_para_objetos[numero]
  return objeto
end

#Consultar objeto pelo número
numero_desejado = 1234
if numeros_para_objetos.key?(numero_desejado)
  objeto = numeros_para_objetos[numero_desejado]
  puts "O objeto associado ao número #{numero_desejado} é: #{objeto}"
  puts "O número do objeto associado é: #{numero_desejado}"
else
  puts "Número inválido"
end

#Consultar número pelo objeto
objeto_desejado = "Gaveta de Porcas"
if numeros_para_objetos.value?(objeto_desejado)
  numero = buscar_numero(objeto_desejado, numeros_para_objetos)
  puts "O número associado ao objeto '#{objeto_desejado}' é: #{numero}"
  puts "O objeto associado ao número #{numero} é: #{objeto_desejado}"
else
  puts "Objeto não encontrado"
end
