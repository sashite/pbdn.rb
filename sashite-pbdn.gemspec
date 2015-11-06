Gem::Specification.new do |spec|
  spec.name          = 'sashite-pbdn'
  spec.version       = File.read('VERSION.semver').chomp
  spec.authors       = ['Cyril Wack']
  spec.email         = ['contact@cyril.email']

  spec.summary       = 'A PBDN implementation in Ruby.'
  spec.description   = 'Implementation of PBDN (Portable Board Diff Notation)' \
                       ' for storing changes between actions of most abstract' \
                       ' strategy board games.'
  spec.homepage      = 'https://github.com/sashite/pbdn.rb'
  spec.license       = 'MIT'

  spec.files         =
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^test/}) }
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler',    '~> 1.10'
  spec.add_development_dependency 'rake',       '~> 10.4'
  spec.add_development_dependency 'yard',       '~> 0.8'
  spec.add_development_dependency 'simplecov',  '~> 0.10'
  spec.add_development_dependency 'rubocop',    '~> 0.34'
  spec.add_development_dependency 'spectus',    '~> 3.0'
end
