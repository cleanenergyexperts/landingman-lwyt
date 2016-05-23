# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lwyt/version'

Gem::Specification.new do |spec|
  spec.name          = "lwyt"
  spec.version       = Lwyt::VERSION
  spec.authors       = ["Matt Snider"]
  spec.email         = ["matt@cleanenergyexperts.com"]

  spec.summary       = %q{Assets required for lightweight youtube loading}
  spec.description   = %q{: Write a longer description or delete this line.}
  spec.homepage      = "http://www.cleanenergyexperts.com"

  #spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.files         = Dir["{lib,vendor}/**/*"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'http://mygemserver.com'
  end

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
