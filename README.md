# SenadoChile

Obten información del Senado de Chile como tramitaciones, senadores, leyes, votaciones, etc. Todo esto en formato JSON


## Installation

Agregar esta linea en tu Gemfile:

```ruby
gem 'senado_chile'
```

Y entonces ejecuta

    $ bundle

o instalaló a través de consola con:

    $ gem install senado_chile

## USO

Métodos disponibles

- SenadoChile.buscar('Gabriel'): Puedes buscar por coincidencia por defecto es nombre y diputado. (Esto puede ser otro atributo del json y otro objeto como senador)
- SenadoChile.diputados: Obtiene todos los diputados
- SenadoChile.periodo_actual: Obtiene el periodo legislativo actual
- SenadoChile.periodos_legislativos: Obtien los periodos legislativos
- SenadoChile.senadores: Obtiene todos los senadores
- SenadoChile.tramitaciones: Obtiene los trámites por dd/mm/yyyy. Por defecto busca en el día actual


## Contribución

Reporte de bugs y pull requests son bienvenidos en GitHub at https://github.com/nelyj/senado_chile. Este es un proyecto que busca ser un espacio seguro y acogedor a las contribuciones, sean bienvenidos a colaborar y se espera que los contribuyentes se adhieran al código de conducta de [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
