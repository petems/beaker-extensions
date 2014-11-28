# -*- encoding: utf-8 -*-
$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require 'beaker/extensions/version'

Gem::Specification.new do |s|
  s.name        = "beaker-extensions"
  s.version     = Beaker::Extensions::VERSION
  s.authors     = ["Peter Souter"]
  s.email       = ["p.morsou@gmail.com"]
  s.homepage    = "https://github.com/petems/beaker-extensions"
  s.summary     = %q{Extend Beaker}
  s.description = %q{Additional functionality for Puppetlabs accceptance testing harness Beaker}
  s.license     = 'Apache2'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # Testing dependencies
  s.add_development_dependency 'minitest', '~> 4.0'
  s.add_development_dependency 'rspec', '~> 2.14.0'
  s.add_development_dependency 'fakefs', '0.4'
  s.add_development_dependency 'rake', '~> 10.1.0'
  s.add_development_dependency 'simplecov' unless RUBY_VERSION < '1.9'
  s.add_development_dependency 'pry', '~> 0.9.12.6'

  # Documentation dependencies
  s.add_development_dependency 'yard'
  s.add_development_dependency 'markdown' unless RUBY_VERSION < '1.9'
  s.add_development_dependency 'thin'
  s.add_development_dependency 'gitlab-grit'

  # Require Beaker!
  s.add_dependency 'beaker', '~> 1.20.1'

end
