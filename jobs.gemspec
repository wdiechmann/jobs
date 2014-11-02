# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jobs/version'

Gem::Specification.new do |spec|
  spec.name          = "jobs"
  spec.version       = Jobs::VERSION
  spec.authors       = ["Walther H Diechmann"]
  spec.email         = ["walther@diechmann.net"]
  spec.summary       = %q{ Keep a tab on vacant and assigned jobs on SL2017}
  spec.description   = %q{ Jobs is one of the modules available to the project organization concerned with building the SL2017 Camp.}
  spec.homepage      = "http://jobs.sl2017.dk"
  spec.license       = "MIT"
  
  spec.rubyforge_project = "jobs"
  #
  # spec.files         = `git ls-files -z`.split("\x0")
  # spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  # spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  # spec.require_paths = ["lib"]

  spec.files         = `git ls-files`.split("\n")
  spec.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  spec.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", "~> 4.1.5"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec-nc"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "pry-remote"
  spec.add_development_dependency "pry-nav"
  spec.add_development_dependency "coveralls"
end
