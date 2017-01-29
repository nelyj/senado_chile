require "senado_chile/version"
require 'httparty'

module SenadoChile
  def senadores
    response = HTTParty.get('http://www.senado.cl/wspublico/senadores_vigentes.php')
    response.parsed_response
  end
  module_function :senadores

  def tramitaciones(date=Time.now.strftime('%d/%m/%Y').to_s)
    response = HTTParty.get("http://www.senado.cl/wspublico/tramitacion.php?fecha=#{date}")
    response.parsed_response
  end
  module_function :tramitaciones
end
