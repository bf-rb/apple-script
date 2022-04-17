# frozen_string_literal: true

require_relative 'lib/apple_script/version'

Gem::Specification.new do |spec|
  spec.name = 'apple-script'
  spec.version = AppleScript.version
  spec.authors = ['Alex Merkulov']
  spec.email = ['rormercury@gmail.com']

  spec.summary = 'Ruby AppleScript'
  spec.description = 'Ruby AppleScript wrapper'
  spec.homepage = 'https://github.com/bf-rb/apple_script'
  spec.license = 'MIT'
  spec.required_ruby_version = '3.1.0'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/bf-rb/apple_script'
  spec.metadata['changelog_uri'] = 'https://github.com/bf-rb/apple_script'

  spec.files = Dir['lib/**/*']
  spec.require_paths = ['lib']
end
