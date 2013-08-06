# -*- encoding: utf-8 -*-
require File.expand_path('../lib/rack-content_language/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Josh Moore"]
  gem.email         = ["josh@resumecompanion.com"]
  gem.description   = %q{Little rack middleware to insert '<meta http-equiv="content-language" content="en">' into all HTML responses for SEO reasons (mostly bing)}
  gem.summary       = %q{Little rack middleware to insert '<meta http-equiv="content-language" content="en">' into all HTML responses for SEO reasons (mostly bing)}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "rack-content_language"
  gem.require_paths = ["lib"]
  gem.version       = Rack::ContentLanguage::VERSION
  
  gem.add_dependency 'rack',      '~> 1.4.0'
  gem.add_development_dependency 'rack-test', '~> 0.5.4'
  gem.add_development_dependency 'rspec'
end
