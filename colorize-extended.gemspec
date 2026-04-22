# frozen_string_literal: true

require File.expand_path('lib/colorize/extended/version', File.dirname(__FILE__))

Gem::Specification.new do |s|
  s.name = 'colorize-extended'
  s.version = Colorize::Extended::VERSION
  s.required_ruby_version = '>= 2.6'

  s.authors = ['n-at-han-k']
  s.homepage = 'https://github.com/n-at-han-k/colorize-extended'
  s.description = 'Extends the colorize gem with chainable syntax sugar like "hello".red.on.blue'
  s.summary = 'Chainable .on.color syntax for the colorize gem.'
  s.license = 'GPL-2.0'

  s.require_paths = ['lib']

  s.files = [
    'LICENSE',
    'CHANGELOG.md',
    'README.md',
    'Rakefile',
    'colorize-extended.gemspec',
    'lib/colorize_extended.rb',
    'lib/colorize/extended.rb',
    'lib/colorize/extended/version.rb',
    'lib/colorize/extended/background_proxy.rb',
    'lib/colorize/extended/string_extensions.rb',
    'test/test_colorize_extended.rb',
  ]

  s.add_dependency 'colorize', '~> 1.1'
end
