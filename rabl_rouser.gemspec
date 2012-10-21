# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rabl_rouser/version'

Gem::Specification.new do |gem|
  gem.name          = "rabl_rouser"
  gem.version       = RablRouser::VERSION
  gem.authors       = ["Adam Hutchison"]
  gem.email         = ["liveh2o@gmail.com"]
  gem.description   = %q{MessagePack, BSON, and Plist param parsers for Rails – the perfect compliment to RABL}
  gem.summary       = %q{MessagePack, BSON, and Plist param parsers for Rails – the perfect compliment to RABL}
  gem.homepage      = "http://github.com/liveh2o/rabl_rouser"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "activesupport", "~> 3.0"
  gem.add_dependency "railties", "~> 3.0"

  gem.add_development_dependency "minitest"
  gem.add_development_dependency "rake"
  gem.add_development_dependency "simplecov"
  gem.add_development_dependency "msgpack"
  gem.add_development_dependency "bson"
  gem.add_development_dependency "plist"
end
