# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "judge/formtastic/version"

Gem::Specification.new do |s|
  s.name        = "judge-formtastic"
  s.version     = Judge::Formtastic::VERSION
  s.authors     = ["Joe Corcoran"]
  s.email       = ["joecorcoran@gmail.com"]
  s.homepage    = "http://github.com/joecorcoran/judge-formtastic"
  s.summary     = "Formtastic adapter for Judge"
  s.description = %q{Easily add Judge client side validation to your Formtastic forms.}

  s.rubyforge_project = "judge-formtastic"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency "judge",      "~> 1.1"
  s.add_runtime_dependency "formtastic", "~> 2.0"

  s.add_development_dependency "rake"
  s.add_development_dependency "rails",              "~> 3.2"
  s.add_development_dependency "sqlite3-ruby",       "~> 1.3.3"
  s.add_development_dependency "judge",              "~> 1.1"
  s.add_development_dependency "formtastic",         "~> 2.0"
  s.add_development_dependency "rspec",              "~> 2.8"
  s.add_development_dependency "factory_girl",       "~> 2.5.2"
end
