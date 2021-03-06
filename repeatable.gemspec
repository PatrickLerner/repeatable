lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'repeatable/version'

Gem::Specification.new do |spec|
  spec.name          = 'repeatable'
  spec.version       = Repeatable::VERSION
  spec.authors       = ['Mo Lawson']
  spec.email         = ['mo@molawson.com']

  spec.summary       = 'Describe recurring event schedules and calculate their occurrences'
  spec.description   = "Ruby implementation of Martin Fowler's 'Recurring Events for Calendars' paper."
  spec.homepage      = 'https://github.com/molawson/repeatable'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
