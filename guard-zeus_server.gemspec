# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'guard/zeus_server/version'

Gem::Specification.new do |gem|
  gem.name          = "guard-zeus_server"
  gem.version       = Guard::Zeus::Server::VERSION
  gem.authors       = ["Aaron Jensen"]
  gem.email         = ["aaronjensen@gmail.com"]
  gem.description   = %q{Guard for "zeus server"}
  gem.summary       = %q{Automatically starts/stops/restarts "zeus server" with guard.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'guard', '>= 1.4'

  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'fakefs'
end
