# -*- encoding: utf-8 -*-
require File.expand_path('../lib/enrycher/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Ezekiel Templin"]
  gem.email         = ["zeke@templ.in"]
  gem.description   = %q{A Ruby interface to Enrycher text-processing API}
  gem.summary       = %q{A Ruby interface to Enrycher text-processing API}
  gem.homepage      = "https://github.com/ezkl/enrycher"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "enrycher"
  gem.require_paths = ["lib"]
  gem.version       = Enrycher::VERSION
  
  gem.add_dependency("nokogiri", "~> 1.5")
  gem.add_dependency("typhoeus", "~> 0.3.3")
  
  gem.add_development_dependency("rspec", "~> 2.9")
end
