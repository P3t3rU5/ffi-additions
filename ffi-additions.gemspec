require_relative 'lib/ffi-additions/version'

Gem::Specification.new do |gem|
  gem.name          = 'ffi-additions'
  gem.version       = FFIAdditions::VERSION
  gem.summary       = 'Additions to FFI gem'
  gem.description   = 'Additions to FFI gem'
  gem.license       = 'MIT'
  gem.authors       = %w'P3t3rU5'
  gem.email         = %w'pedro.at.miranda@gmail.com'
  gem.homepage      = 'https://github.com/P3t3rU5/ffi-additions'
  gem.require_paths = %w'lib'
  gem.files         = Dir['{lib/**/*.rb,*.md}']
  gem.add_dependency 'ffi', '~> 1.9'
end
