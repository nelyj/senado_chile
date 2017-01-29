# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'senado_chile/version'

Gem::Specification.new do |spec|
  spec.name          = "senado_chile"
  spec.version       = SenadoChile::VERSION
  spec.authors       = ["Nelson Pato Jimenez"]
  spec.email         = ["developer.jimenez@gmail.com"]

  spec.summary       = %q{Gema para obtener información del Senado de Chile en formato JSON}
  spec.description   = %q{Obten información del Senado de Chile como tramitaciones, senadores, leyes, votaciones, etc. Todo esto en formato JSON}
  spec.homepage      = "https://nelyj.github.io/senado_chile/"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "httparty", ">= 0.14.0"
  spec.add_development_dependency "pry-byebug", "~> 3.4.2"
  spec.add_development_dependency "nokogiri", ">= 1.7.0.1"
end
