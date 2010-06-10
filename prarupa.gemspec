__BASE__ = File.dirname(__FILE__)

require File.join(__BASE__, 'lib', 'prarupa', 'version')

Gem::Specification.new do |s|
  s.name             = 'prarupa'
  s.version          = Prarupa::VERSION
  s.author           = 'Rohit Arondekar'
  s.email            = 'hello@rohitarondekar.com'
  s.homepage         = 'http://github.com/rohit/prarupa'
  s.summary          = 'Plugin that adds the textilized, textilize_without_paragraph and markdown helpers to Rails 3'
  s.files            = Dir['lib/**/*', 'LICENSE', 'README.md', 'README.md']
  
  s.add_dependency 'RedCloth', '~> 4.2'
  s.add_dependency 'rdiscount', '~> 1.6'
end

