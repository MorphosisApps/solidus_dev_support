# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'solidus_dev_support/version'

Gem::Specification.new do |spec|
  spec.name = 'solidus_dev_support'
  spec.version = SolidusDevSupport::VERSION
  spec.authors = ['Alessandro Desantis']
  spec.email = ['alessandrodesantis@nebulab.it']

  spec.summary = 'Development tools for Solidus extensions.'
  spec.homepage = 'https://github.com/solidusio/solidus_dev_support'
  spec.license = 'MIT'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/solidusio/solidus_dev_support'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'apparition', '~> 0.4'
  spec.add_dependency 'capybara', '~> 3.29'
  spec.add_dependency 'capybara-screenshot', '~> 1.0'
  spec.add_dependency 'codecov', '~> 0.1.16'
  spec.add_dependency 'database_cleaner', '~> 1.7'
  spec.add_dependency 'factory_bot_rails', '~> 5.1'
  spec.add_dependency 'ffaker', '~> 2.13'
  spec.add_dependency 'gem-release', '~> 2.1'
  spec.add_dependency 'github_changelog_generator', '~> 1.15'
  spec.add_dependency 'puma', '~> 4.3'
  spec.add_dependency 'rspec-rails', '~> 4.0.0.beta3'
  spec.add_dependency 'rspec_junit_formatter'
  spec.add_dependency 'rubocop', '~> 0.76'
  spec.add_dependency 'rubocop-performance', '~> 1.5'
  spec.add_dependency 'rubocop-rails', '~> 2.3'
  spec.add_dependency 'rubocop-rspec', '~> 1.36'
  spec.add_dependency 'solidus_core', ['>= 2.0', '< 3']

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
end
