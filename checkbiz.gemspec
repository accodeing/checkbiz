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

  spec.summary       = "Checkbiz v2 API library, based on rest-easy."
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/accodeing/checkbiz"
  spec.files         = Dir["CHANGELOG.md", "LICENSE", "README.md", "checkbiz.gemspec", "lib/**/*"]
  spec.bindir        = "bin"
  spec.executables   = []
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 3.2.0"

  spec.add_runtime_dependency "rest-easy", "~> 1.5"
  spec.add_runtime_dependency "faraday", "~> 2.0"
  spec.add_runtime_dependency "zeitwerk", "~> 2.6"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "vcr"
  spec.add_development_dependency "webmock"

  spec.metadata["rubygems_mfa_required"] = "true"
end
