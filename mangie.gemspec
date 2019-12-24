require_relative 'lib/mangie/version'

Gem::Specification.new do |spec|
  spec.name          = "mangie"
  spec.version       = Mangie::VERSION
  spec.authors       = ["Nax"]
  spec.email         = ["max@bacoux.com"]

  spec.summary       = "A project builder"
  spec.homepage      = "https://github.com/Nax/mangie"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Nax/mangie"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir["lib/**/*.rb"] + Dir["exe/*"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "thor", "~> 1.0"
end
