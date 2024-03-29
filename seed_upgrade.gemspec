# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "seed_upgrade/version"

Gem::Specification.new do |s|
  s.name        = "seed_upgrade"
  s.version     = SeedUpgrade::VERSION
  s.authors     = ["vkill"]
  s.email       = ["vkill.net@gmail.com"]
  s.homepage    = "https://github.com/vkill/seed_upgrade"
  s.summary     = "A seed upgrade plugin for Rails3."
  s.description = "A seed upgrade plugin for Rails3."

  s.rubyforge_project = "seed_upgrade"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency 'bundler'
  s.add_development_dependency "rake"
  s.add_development_dependency "rspec"
  s.add_development_dependency "guard-rspec"
  s.add_dependency "rails", "~> 3.0"
  s.add_dependency "vkill_gems_methods", "~> 0.1.0"
  s.add_dependency "machinist", "~> 2.0.0.beta2"

end

