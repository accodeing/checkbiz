# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "checkbiz/version"

Gem::Specification.new do |spec|
  spec.name          = "checkbiz"
  spec.authors       = ["Jonas Schubert Erlandsson", "Claude Code"]
  spec.email         = ["info@accodeing.com"]
  spec.license       = "MIT"
  spec.version       = Checkbiz::VERSION.dup

  spec.summary       = "Checkbiz V1 API library, based on rest-easy."
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/accodeing/checkbiz"
  spec.files         = Dir["CHANGELOG.md", "LICENSE", "README.md", "checkbiz.gemspec", "lib/**/*", "config/*.yml"]
  spec.bindir        = "bin"
  spec.executables   = []
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 3.1.0"

  spec.add_runtime_dependency "rest-easy", "~> 1.0.0"
  spec.add_runtime_dependency "dry-struct"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "vcr"
  spec.add_development_dependency "webmock"
end
