# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'sprockets/version'

Gem::Specification.new do |s|
  s.name        = 'sprockets-jquery-tmpl'
  s.version     = Sprockets::Jquery::Tmpl::VERSION
  s.authors     = ['Ryan Dy']
  s.email       = ['mail@ryandy.com']
  s.homepage    = 'http://github.com/rdy/sprockets-jquery-tmpl'
  s.summary     = %q{Sprockets Tilt jQuery templates}
  s.description = %q{Sprockets tilt support for jQuery templates with Rails 3.1 new asset pipeline}

  s.rubyforge_project = "sprockets-jquery-tmpl"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'actionpack', '3.1.0.rc4'
end
