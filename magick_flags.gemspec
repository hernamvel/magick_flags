# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'magick_flags/version'

Gem::Specification.new do |spec|
  spec.name          = "magick_flags"
  spec.version       = MagickFlags::VERSION
  spec.authors       = ["Hernan Velasquez"]
  spec.email         = ["hernamvel@gmail.com"]
  spec.summary       = %q{A gem to draw world flags with rmagick.}
  spec.description   = %q{A gem to draw the flags of the world using rmagick.}
  spec.homepage      = "http://github.com/hernamvel/"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency 'rake', '0.9.2.2'
  spec.add_development_dependency 'rmagick', '2.13.2'
end
