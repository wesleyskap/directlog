# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'directlog/version'

Gem::Specification.new do |spec|
  spec.name          = "directlog"
  spec.version       = Directlog::VERSION
  spec.authors       = ["Wesley Conde"]
  spec.email         = ["kerponeis@gmail.com"]
  spec.summary       = "Ruby API to directlog"
  spec.description   = "Ruby API to directlog"
  spec.homepage      = "https://github.com/wesleyskap/directlog"
  spec.license       = "MIT"

  spec.required_ruby_version     = '>= 2.0.0'
  spec.required_rubygems_version = '>= 1.8.11'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'savon'
  spec.add_dependency 'tiny_tds'
  spec.add_dependency 'bundler', '>= 1.3.0', '< 2.0'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'vcr'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'webmock'
end
