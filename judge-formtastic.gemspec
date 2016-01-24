# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'judge/formtastic/version'

Gem::Specification.new do |s|
  s.name        = 'judge-formtastic'
  s.version     = Judge::Formtastic::VERSION
  s.authors     = ['Joe Corcoran']
  s.email       = ['joe@tribesports.com']
  s.homepage    = 'http://github.com/joecorcoran/judge-formtastic'
  s.summary     = 'Formtastic adapter for Judge'
  s.description = 'Easily add Judge client side validation to your Formtastic forms.'

  s.files         = Dir['lib/**/*'] + ['LICENSE.txt', 'README.md']
  s.require_paths = ['lib']

  s.add_runtime_dependency 'judge',       '~> 2.0'
  s.add_runtime_dependency 'formtastic',  '~> 3.1'

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rails',   '~> 4.2'
  s.add_development_dependency 'sqlite3', '~> 1.3.11'
  s.add_development_dependency 'rspec',   '~> 3.4'
end
