# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ElmerFudd/version'

Gem::Specification.new do |spec|
  spec.name          = "ElmerFudd"
  spec.version       = ElmerFudd::VERSION
  spec.authors       = ["Andrzej Sliwa"]
  spec.email         = ["andrzej.sliwa@i-tool.eu"]
  spec.summary       = %q{RabbitMQ in OTP way}
  spec.description   = %q{Be vewwy, vewwy quiet...I'm hunting wabbits!}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "bunny"
  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end