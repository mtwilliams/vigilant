$:.push File.expand_path("../lib", __FILE__)
require 'vigilant'

Gem::Specification.new do |spec|
  spec.name = "vigilant"
  spec.version = Vigilant::VERSION
  spec.platform = Gem::Platform::RUBY
  spec.authors = ["Michael Williams"]
  spec.email = ["devbug@bitbyte.ca"]
  spec.homepage = "http://github.com/mtwilliams/vigilant"
  spec.summary = "A simple C/C++ unit test generator."
  spec.description = spec.summary

  spec.rubyforge_project = "vigilant"

  spec.add_development_dependency "bundler", "~>1.0"

  spec.files         = `git ls-files`.split("\n")
  spec.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  spec.require_paths = ["lib"]
end