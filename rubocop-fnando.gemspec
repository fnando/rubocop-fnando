# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "rubocop-fnando"
  spec.version       = "0.0.14"
  spec.authors       = ["Nando Vieira"]
  spec.email         = ["me@fnando.com"]
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.summary       = "Rubocop configuration"
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/fnando/rubocop-fnando"
  spec.license       = "MIT"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      f.match(%r{^(test|spec|features)/})
    end
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) {|f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rubocop"
  spec.add_dependency "rubocop-performance"
  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
end
