# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'redis_rspec/version'

Gem::Specification.new do |spec|
  spec.name          = "redis_rspec"
  spec.version       = RedisRspec::VERSION
  spec.authors       = ["Abibullah"]
  spec.email         = ["abibullah@kiprosh.com"]
  spec.description   = %q{ This gem will run a seperate redis server test}
  spec.summary       = %q{rspec_redis}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency(%q<rspec>)
  spec.add_runtime_dependency(%q<redis>)

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
