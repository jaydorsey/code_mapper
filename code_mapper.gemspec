# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'code_mapper/version'

Gem::Specification.new do |spec|
  spec.name          = "code_mapper"
  spec.version       = CodeMapper::VERSION
  spec.authors       = ["Christian Joudrey"]
  spec.email         = ["cmallette@gmail.com"]

  spec.summary       = %q{CodeMapper is a tool to generate call graphs from your Ruby code.}
  spec.homepage      = "https://github.com/cjoudrey/code_mapper"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "graphviz", "~> 1.3.0"

  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest", ">= 5.0"
end
