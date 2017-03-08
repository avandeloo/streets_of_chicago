# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'streets_of_chicago/version'

Gem::Specification.new do |spec|
  spec.name          = "streets_of_chicago"
  spec.version       = StreetsOfChicago::VERSION
  spec.authors       = ["avandeloo"]
  spec.email         = ["anthony.vandeloo@gmail.com"]

  spec.summary       = "Api wrapper for Chicago streets"
  spec.description   = "Makes it easier to access data from Chicago's streets API"
  spec.homepage      = "https://github.com/avandeloo/streets_of_chicago"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    # spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_runtime_dependency "unirest", "~> 1.1"
end
