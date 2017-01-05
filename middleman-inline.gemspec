# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "middleman-inline"
  s.version     = "0.0.1"
  s.platform    = Gem::Platform::RUBY
   s.authors     = ["Miloš Hadžić"]
   s.email       = ["milos@rightfold.io"]
   s.homepage    = "http://rightfold.io"
   s.summary     = %q{Inline JS and CSS in your Middleman templates.}
   s.description = %q{Inline JS and CSS in your Middleman templates.}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  # The version of middleman-core your extension depends on
  s.add_runtime_dependency("middleman-core", [">= 4.2.0"])
  
  # Additional dependencies
  # s.add_runtime_dependency("gem-name", "gem-version")
end
