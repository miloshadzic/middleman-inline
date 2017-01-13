# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "middleman-inline"
  s.version     = "0.0.1"
  s.date        = '2017-01-13'
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Miloš Hadžić"]
  s.email       = ["milos@rightfold.io"]
  s.homepage    = "https://github.com/miloshadzic/middleman-inline"
  s.summary     = %q{Inline JS and CSS in your Middleman templates.}
  s.description = %q{Middleman extension that adds helpers for inlining JavaScript and CSS stylesheets.}
  s.license     = 'GPLv3'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency("middleman-core", [">= 4.2.0"])

  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('yard')
  s.add_development_dependency('cucumber')
  s.add_development_dependency('nokogiri')
  s.add_development_dependency('capybara')
  s.add_development_dependency('aruba')
  s.add_development_dependency('rspec')
end
