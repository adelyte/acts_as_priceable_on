# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'acts_as_priceable_on/version'

Gem::Specification.new do |spec|
  spec.name          = 'acts_as_priceable_on'
  spec.version       = ActsAsPriceableOn::VERSION
  spec.authors       = ['Kyle Crop', 'Chris Massey']
  spec.email         = ['kylecrop@utexas.edu']
  spec.summary       = %q{TODO: Write a short summary. Required.}
  spec.description   = %q{TODO: Write a longer description. Optional.}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_depdency 'money-rails'

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rails'
  spec.add_development_dependency 'rspec-rails', '~> 3.0.0'
  spec.add_development_dependency 'sqlite3'
end
