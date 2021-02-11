Dado('possuir um cep do tipo {string}') do |numero_cep|
  @cep = numero_cep.eql?('valido') ? '06680065' : '00000000'
end

Quando('a consulta for realizada') do
  $response = $consulta_cep.getCep(@cep)
end

Então('a consulta sera validada com {string}') do |validacao|
  puts "response: #{validacao.eql?('sucesso') ? "Código IBGE: #{$response['ibge']}" : $response}"
end
