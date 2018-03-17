
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "health_check2/version"

Gem::Specification.new do |spec|
  spec.name          = "health_check2"
  spec.version       = HealthCheckCore::VERSION
  spec.authors       = ["Ian Heggie"]
  spec.email         = ["ian@heggie.biz"]

  spec.summary       = %q{Simple health check core for uptime monitoring with Pingdom, NewRelic, EngineYard or uptime.openacs.org etc}
  spec.description   = %q{This is the core of the Health Check v2 suite - see the README for details of all the optional plugins}
  spec.homepage      = "https://github.com/ianheggie/health_check"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
