# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rsync_wrapper/version'

Gem::Specification.new do |spec|
  spec.name          = 'rsync_wrapper'
  spec.version       = RsyncWrapper::VERSION
  spec.authors       = ['Sean Huber']
  spec.email         = ['seanhuber@seanhuber.com']
  spec.summary       = 'Configurable wrapper to rsync utility'
  spec.homepage      = 'https://github.com/seanhuber/rsync_wrapper'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.12'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'coveralls', '~> 0.8'
end
