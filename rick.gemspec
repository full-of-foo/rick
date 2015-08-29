# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rick/version'

Gem::Specification.new do |spec|
  spec.name          = "rick"
  spec.version       = Rick::VERSION
  spec.authors       = ["Toeknee"]
  spec.email         = ["lightweightdevelopment@gmail.com"]

  spec.summary       = "Never gonna give you up, never gonna let you down"
  spec.description   = %q{Never gonna give you up, never gonna let you down
                          Never gonna run around and desert you
                          Never gonna make you cry, never gonna say goodbye
                          Never gonna tell a lie and hurt you}
  spec.homepage      = "https://github.com/full-of-foo/rick"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "1.10.6"
  spec.add_development_dependency "rake", "10.0"
  spec.add_development_dependency "minitest", "5.8.0"
  spec.add_development_dependency "minitest-reporters", "1.0.20"

  spec.add_runtime_dependency "launchy", "2.4.3"
end
