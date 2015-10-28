# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lolzinary/version'

Gem::Specification.new do |spec|
  spec.name          = "lolzinary"
  spec.version       = Lolzinary::VERSION
  spec.authors       = ["Sam Peters"]
  spec.email         = ["samantha.peters@fairfaxmedia.com.au", 'sretepmas@gmail.com']

  spec.summary     = "An extension of the lolcommits gem for Cloudinary"
  spec.description = "Lolzinary is an extension to the lolcommits gem, which uploads your images to cloudinary once your lolcommit has been taken."
  spec.homepage      = "https://github.com/fairfaxmedia/lolzinary"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = ["lolzinary_install"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"

  spec.add_runtime_dependency "cloudinary", "~> 1.1"
  spec.add_runtime_dependency "lolcommits", "~> 0.6.1"
  spec.add_runtime_dependency "activesupport", "~> 4.2", ">= 4.2.4"

end
