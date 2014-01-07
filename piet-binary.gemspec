# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "piet-binary/version"

Gem::Specification.new do |s|
  s.name        = "piet-binary"
  s.version     = PietBinary::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Daniel Loureiro"]
  s.email       = ["loureirorg@gmail.com"]
  s.homepage    = "https://github.com/loureirorg/piet-binary"
  s.summary     = %q{Fallback binaries for Piet gem}
  s.description = %q{-}

  s.rubyforge_project = "piet-binary"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ["lib"]
  s.add_dependency "png_quantizator"
  s.add_dependency "piet", ['>= 2.0.0']
  s.add_development_dependency "rspec"
  s.add_development_dependency "ZenTest"
  s.add_runtime_dependency 'os', ['~> 0.9.6']
end
