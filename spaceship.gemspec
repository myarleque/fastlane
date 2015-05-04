# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'spaceship/version'

Gem::Specification.new do |spec|
  spec.name          = "spaceship"
  spec.version       = Spaceship::VERSION
  spec.authors       = ["Stefan Natchev", "Felix Krause"]
  spec.email         = ["stefan@natchev.com", "spaceship@krausefx.com"]
  spec.summary       = %q{Because you would rather spend your time building stuff than fighting provisioning}
  spec.description   = %q{Because you would rather spend your time building stuff than fighting provisioning}
  spec.homepage      = "https://fastlane.tools"
  spec.license       = "MIT"

  spec.required_ruby_version = '>= 2.0.0'

  spec.files = Dir["lib/**/*"] + %w{ bin/spaceship README.md LICENSE }

  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'fastlane_core', '>= 0.5.0' # all shared code and dependencies
  spec.add_dependency 'plist', '~> 3.1.0' # for reading the API Responses
  spec.add_dependency 'multi_xml', '~> 0.5'
  spec.add_dependency 'faraday', '~> 0.9'
  spec.add_dependency 'faraday_middleware', '~> 0.9'
  spec.add_dependency 'nokogiri', '~> 1.6'

  # Development only
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '~> 3.1.0'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'yard', '~> 0.8.7.4'
  spec.add_development_dependency 'webmock', '~> 1.21.0'
  spec.add_development_dependency 'codeclimate-test-reporter'
end
