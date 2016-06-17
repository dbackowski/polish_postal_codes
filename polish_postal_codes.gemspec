# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'polish_postal_codes/version'

Gem::Specification.new do |spec|
  spec.name          = "polish_postal_codes"
  spec.version       = PolishPostalCodes::VERSION
  spec.authors       = ["Damian Baćkowski"]
  spec.email         = ["damianbackowski@gmail.com"]

  spec.summary       = %q{Library for getting information about polish postal codes.}
  spec.description   = %q{Library for getting information about polish postal codes.}
  spec.homepage      = "https://github.com/dbackowski/polish_postal_codes"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rspec", "~> 3.4.0"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
