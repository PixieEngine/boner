# -*- encoding: utf-8 -*-
require File.expand_path('../lib/boner/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Matt Diebolt", "Daniel X. Moore"]
  gem.email         = ["pixie@pixieengine.com"]
  gem.description   = %q{}
  gem.summary       = %q{}
  gem.homepage      = "https://github.com/PixieEngine/Boner"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "boner"
  gem.require_paths = ["lib"]
  gem.version       = Boner::VERSION

  gem.add_development_dependency "middleman", "~>3.0.0.beta.3"
  gem.add_development_dependency "rb-inotify"
  gem.add_development_dependency "sass"
  gem.add_development_dependency "therubyracer"
end
