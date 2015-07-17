# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'crowdstart-rails/version'

Gem::Specification.new do |spec|
  spec.name          = "crowdstart-rails"
  spec.version       = Crowdstart::Rails::VERSION
  spec.authors       = ["David Tai"]
  spec.email         = ["david@verus.io"]

  spec.summary       = "Crowdstart Rails Gem"
  spec.description   = "Analytics integration with Crowdstart"
  spec.homepage      = "https://github.com/crowdstart/crowdstart-rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
