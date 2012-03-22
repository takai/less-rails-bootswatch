# -*- mode:ruby; coding: utf-8 -*-

$:.push File.expand_path("../lib", __FILE__)
require 'less/rails/bootswatch/version'

Gem::Specification.new do |gem|
  gem.authors       = ["Naoto Takai"]
  gem.email         = ["takai@recompile.net"]
  gem.description   = %q{less-rails-bootswatch is straightforward Bootswatches integration with Rails, works well with less-rails-bootstrap.}
  gem.summary       = %q{Straightforward Bootswatches integration with Rails}
  gem.homepage      = "https://github.com/takai/less-rails-bootswatch"

  gem.executables   = []
  gem.files         = Dir.glob('{[A-Z]*,lib/**/*.rb,vendor/**/*.less}')
  gem.test_files    = []

  gem.name          = "less-rails-bootswatch"
  gem.require_paths = ["lib"]
  gem.version       = Less::Rails::Bootswatch::VERSION

  gem.add_runtime_dependency "less-rails-bootstrap", "~> 2.0.8"
end
