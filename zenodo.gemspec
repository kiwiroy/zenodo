# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'zenodo/version'

Gem::Specification.new do |spec|
  spec.name          = "zenodo"
  spec.version       = Zenodo::VERSION
  spec.authors       = ["David Iorns"]
  spec.email         = ["david.iorns@gmail.com"]
  spec.summary       = 'A Ruby wrapper for the Zenodo API.'
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 2.0.0'

  spec.add_dependency 'faraday', '~> 0.9'
  spec.add_dependency 'activesupport', '~> 4.2'
  spec.add_dependency 'ruby-filemagic', '~> 0.6'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'webmock', '~> 1.18'
  spec.add_development_dependency 'vcr', '~> 2.9'
end
