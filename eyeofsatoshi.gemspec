# frozen_string_literal: true

require_relative 'lib/eyeofsatoshi/version'

Gem::Specification.new do |spec|
  spec.name = 'eyeofsatoshi'
  spec.version = Eyeofsatoshi::VERSION
  spec.authors = ['Will Binns']
  spec.email = ['hello@willbinns.org']
  spec.add_development_dependency 'rspec', '~> 3.2'

  spec.summary =
    'Pulls the current bitcoin price from multiple cryptocurrency APIs. '
  spec.description =
    "Eye of Satoshi pulls the current bitcoin price from multiple cryptocurrency APIs. Ensure your app is getting the correct price by weighting against multiple sources of truth to ensure you and/or your users don't get rekt by incorrect information."
  spec.homepage = 'https://github.com/wbnns/eyeofsatoshi'
  spec.license = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.4.0')

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/wbnns/eyeofsatoshi'
  spec.metadata['changelog_uri'] =
    'https://github.com/wbnns/eyeofsatoshi/blob/main/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files =
    Dir.chdir(File.expand_path(__dir__)) do
      `git ls-files -z`.split("\x0").reject do |f|
        f.match(%r{\A(?:test|spec|features)/})
      end
    end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Uncomment to register a new dependency of your gem
  spec.add_dependency 'httparty'

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
