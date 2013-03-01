# -*- encoding: utf-8 -*-

$:.unshift(File.join(File.dirname(__FILE__), 'lib'))

require 'erbgood/version'

Gem::Specification.new do |s|
  s.name = 'erbgood'
  s.version = Erbgood::VERSION
  s.summary = 'Verify that a binding can satisfy ERB templates'
  s.description = s.summary
  s.homepage = 'https://github.com/mmb/erbgood'
  s.authors = ['Matthew M. Boedicker']
  s.email = %w{matthewm@boedicker.org}

  s.add_development_dependency 'rspec'

  s.files = `git ls-files`.split("\n")
  s.executables = %w{erbgood}
end
