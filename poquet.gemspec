# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'poquet/version'

Gem::Specification.new do |spec|
  spec.name          = "poquet"
  spec.version       = Poquet::VERSION
  spec.authors       = ["Horacio Bertorello"]
  spec.email         = ["syrii@msn.com"]
  spec.summary       = %q{Dead simple Pocket API wrapper.}
  spec.homepage      = "http://github.com/svankmajer/poquet"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", "~> 0.9"
  spec.add_dependency "faraday_middleware", "~> 0.9"
  spec.add_dependency "simple_oauth"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.1"
  spec.add_development_dependency "guard-rspec", "~> 4.3"
end
