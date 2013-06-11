# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'snap_js-rails/version'

Gem::Specification.new do |spec|
  spec.name          = "snap_js-rails"
  spec.version       = SnapJs::VERSION
  spec.authors       = ["Aaron Breckenridge"]
  spec.email         = ["aaronbreckenridge@gmail.com"]
  spec.description   = "This gem adds Snap.js to the Rails asset pipeline"
  spec.summary       = "Add Snap.js to the Rails asset pipeline"
  spec.homepage      = "https://github.com/breckenedge/snap_js-rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "railties", ">= 3.1"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
