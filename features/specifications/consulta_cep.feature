# language:pt

@consulta
Funcionalidade: Consultar CEP
  Eu como QA
  Quero realizar uma consulta a API de CEP
  Para validar o CEP

  @consulta_sucesso
  Cenário: Consulta de CEP válido informando o código IBGE do endereço
    Dado possuir um cep do tipo 'valido'
    Quando a consulta for realizada
    Então a consulta sera validada com 'sucesso'

  @consulta_erro
  Cenário: Consulta de CEP inválido
    Dado possuir um cep do tipo 'invalido'
    Quando a consulta for realizada
    Então a consulta sera validada com 'erro'
