require "senado_chile/version"
require 'httparty'
require 'array'

module SenadoChile
  def diputados
    response = HTTParty.get('http://opendata.congreso.cl/wscamaradiputados.asmx/getDiputados_Vigentes')
    response.parsed_response["Diputados"]["Diputado"].string_to_symbol
  end
  module_function :diputados

  def periodos_legislativos
    reponse = HTTParty.get('http://opendata.congreso.cl/wscamaradiputados.asmx/getPeriodosLegislativos')
    binding.pry
    reponse.parsed_response
  end
  module_function :periodos_legislativos

  def senadores
    response = HTTParty.get('http://www.senado.cl/wspublico/senadores_vigentes.php')
    response.parsed_response["senadores"]["senador"].string_to_symbol
  end
  module_function :senadores

  def tramitaciones(date=Time.now.strftime('%d/%m/%Y').to_s)
    response = HTTParty.get("http://www.senado.cl/wspublico/tramitacion.php?fecha=#{date}")
    response.parsed_response["proyectos"]["proyecto"].string_to_symbol
  end
  module_function :tramitaciones
end
