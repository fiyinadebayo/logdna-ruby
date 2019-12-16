# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "logdna/version"

Gem::Specification.new do |spec|
  spec.name          = "logdna"
  spec.version       = LogDNA::VERSION
  spec.authors       = "Gun Woo Choi, Derek Zhou, Vilya Levitskiy, Muaz Siddiqui"
  spec.email         = "support@logdna.com"
  spec.summary       = "LogDNA Ruby Logger"
  spec.homepage      = "https://github.com/logdna/ruby"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(/(.md|.rb|.gemspec|Gemfile|LICENSE)$/) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_runtime_dependency "concurrent-ruby", "~> 1.0"
  spec.add_runtime_dependency "json", "~> 2.0"
  spec.add_runtime_dependency "require_all", "~> 1.4"
  spec.add_development_dependency "rubocop", "~> 0.77"
end
