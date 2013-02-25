# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "judge/formtastic/version"

Gem::Specification.new do |s|
  s.name        = "judge-formtastic"
  s.version     = Judge::Formtastic::VERSION
  s.authors     = ["Joe Corcoran"]
  s.email       = ["joe@tribesports.com"]
  s.homepage    = "http://github.com/joecorcoran/judge-formtastic"
  s.summary     = "Formtastic adapter for Judge"
  s.description = "Easily add Judge client side validation to your Formtastic forms."

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- spec/*`.split("\n")
  s.require_paths = ["lib"]

  s.add_runtime_dependency "judge",       "~> 2.0"
  s.add_runtime_dependency "formtastic",  "~> 2.2"

  s.add_development_dependency "rake"
  s.add_development_dependency "rails",   "~> 3.2"
  s.add_development_dependency "sqlite3", "~> 1.3.7"
  s.add_development_dependency "rspec",   "~> 2.13"
end
