require "senado_chile/version"
require 'httparty'
require 'array'

module SenadoChile

  def buscar(value, attribute='nombre', object='diputados')
    response = send(object)
    founds = response.select{ |row| row[attribute.to_sym].include?(value) }
  end
  module_function :buscar

  def diputados
    response = HTTParty.get('http://opendata.congreso.cl/wscamaradiputados.asmx/getDiputados_Vigentes')
    response.parsed_response["Diputados"]["Diputado"].string_to_symbol
  end
  module_function :diputados

  def periodo_actual
    reponse = HTTParty.get('http://opendata.congreso.cl/wscamaradiputados.asmx/getPeriodosLegislativos')
    current = reponse.parsed_response['PeriodosLegislativo']['PeriodoLegislativo'].string_to_symbol
    current.last
  end
  module_function :periodo_actual

  def periodos_legislativos
    reponse = HTTParty.get('http://opendata.congreso.cl/wscamaradiputados.asmx/getPeriodosLegislativos')
    reponse.parsed_response['PeriodosLegislativo']['PeriodoLegislativo'].string_to_symbol
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
