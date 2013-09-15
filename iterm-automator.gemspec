# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "iterm-automator"
  s.version     = "0.1"
  s.authors     = ["Alexander Schrot"]
  s.email       = ["alexander@wonderweblabs.com"]
  s.homepage    = "http://www.github.com/achiu/consular-iterm"
  s.summary     = %q{Controle your ITerm with Ruby}
  s.description = %q{ITerm management via Ruby}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'rb-appscript'
end
