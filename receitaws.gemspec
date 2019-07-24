# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'receitaws/version'

Gem::Specification.new do |spec|
  spec.name                   = "receitaws"
  spec.version                = Receitaws::Version::STRING
  spec.platform               = Gem::Platform::RUBY
  gem.authors                 = ["Leandro Falcão"]
  gem.email                   = ["le.sfalcao@gmail.com"]
  spec.summary                = "Gem ReceitaWS API - Consulta de Dados de CNPJ"
  spec.description            = "Uma Gem simples para recuperação de informações de empresas através de seu CNPJ utilizando Webservice da ReceitaWS - https://receitaws.com.br/ versão Comercial. Acreditamos que estas informações devem estar acessíveis a qualquer indivíduo ou empresa, e sem nenhum custo."
  spec.homepage               = "https://github.com/lsfalcao/receitaws"
  spec.license                = "MIT"

  spec.files                  = `git ls-files`.split($/)
  spec.executables            = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files             = spec.files.grep(%r{^(test|spec|features)/})

  spec.require_paths          = ["lib"]

  spec.required_ruby_version  = Gem::Requirement.new(">= 1.9")

end
