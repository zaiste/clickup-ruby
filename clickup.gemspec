
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "clickup/version"

Gem::Specification.new do |spec|
  spec.name          = "clickup"
  spec.version       = Clickup::VERSION
  spec.authors       = ["Zaiste"]
  spec.email         = ["oh@zaiste.net"]

  spec.summary       = %q{A simple library for communicating with the ClickUp REST API}
  spec.description   = %q{A simple library for communicating with the ClickUp REST API}
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.required_ruby_version = '>= 2.0.0'
  spec.extra_rdoc_files = ['README.md', 'LICENSE.md']

  spec.add_dependency "httparty"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
