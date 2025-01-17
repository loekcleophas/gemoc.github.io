# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'jekyll/scholar/version'

Gem::Specification.new do |s|
  s.name        = 'jekyll-scholar-extras-gemoc'
  s.version     = Jekyll::ScholarExtras::VERSION.dup
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['rmrf']
  s.email       = 'nospam at univ-rennes1 dot fr'
  s.homepage    = ''
  s.licenses    = ['MIT']
  s.summary     = 'Extras for Jekyll extensions for the academic blogger jekyll-scholar dedicated to the gemoc website.'
  s.description = %q{
    Extras for jekyll-scholar.  Customized bibliography and details generators dedicated for the gemoc website.
  }.gsub(/\s+/, ' ')
  
  s.date        = Time.now

  s.required_rubygems_version = '>= 1.3.6'
  s.rubyforge_project = s.name

  s.add_runtime_dependency('jekyll', '>= 3', '< 5')
  s.add_runtime_dependency('jekyll-scholar', '~> 5.8')
  s.add_runtime_dependency('citeproc-ruby', '~> 1.0')
  s.add_runtime_dependency('bibtex-ruby', '~> 4.0', '>=4.0.13')

  s.files        = `git ls-files`.split("\n")
  s.test_files   = `git ls-files -- {samples,test,spec,features}/*`.split("\n")
  s.executables  = []
  s.require_path = 'lib'
  
end

# vim: syntax=ruby
