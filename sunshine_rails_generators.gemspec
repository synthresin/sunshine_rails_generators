# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sunshine_rails_generators/version'

Gem::Specification.new do |spec|
  spec.name          = "sunshine_rails_generators"
  spec.version       = SunshineRailsGenerators::VERSION
  spec.authors       = ["synthresin"]
  spec.email         = ["synthresin@me.com"]
  spec.summary       = "Rails generators for typical client job of sunshine underground."
  spec.description   = "Rails generators for typical client job of sunshine underground."
  spec.homepage      = "http://sunshineunderground.kr"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake", "~> 0"
end
