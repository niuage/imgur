# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'imgur/version'

Gem::Specification.new do |spec|
  spec.name          = "simple_imgur"
  spec.version       = Imgur::VERSION
  spec.authors       = ["Robin Boutros"]
  spec.email         = ["niuage@gmail.com"]
  spec.description   = %q{Super simple gem to get Imgur public albums and images}
  spec.summary       = %q{Super simple gem to get Imgur public albums and images}
  spec.homepage      = "https://github.com/niuage/imgur"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
