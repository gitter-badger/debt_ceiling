# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)
require "debt_ceiling/version"

Gem::Specification.new do |s|
  s.name        = "debt_ceiling"
  s.version     = DebtCeiling::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Brian Glusman"]
  s.email       = ["bglusman@shutterstock.com"]
  s.homepage    = "https://github.com/bglusman/debt_ceiling"
  s.summary     = "DebtCeiling helps you track Tech Debt"
  s.rubyforge_project = "debt_ceiling"
  s.extensions = ["Rakefile"]

  s.description = <<-DESC
    Get a grip on your technical debt
  DESC


  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency "rubycritic", "~> 1.1.1"
  s.add_development_dependency "pry", '~> 0.10'
  s.add_development_dependency "rake", '~> 10.3'
  s.add_development_dependency "minitest", '~> 5.4'
end
