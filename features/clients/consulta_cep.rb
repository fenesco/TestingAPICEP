class ConsultaCep
  include HTTParty
  attr_accessor :base_uri

  def initialize(base_uri)
    self.base_uri = base_uri
  end

  def getCep(codigo_cep)
    self.class.get("#{base_uri}/#{codigo_cep}/json/")
  end
end
