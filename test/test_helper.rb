require 'rubygems'
require 'test/unit'
require 'active_support/core_ext'
require 'action_controller'
require 'prarupa'

begin
  require 'redcloth'
rescue LoadError
  $stderr.puts "Skipping textile helper tests. 'gem install RedCloth' to enable."
end

begin
  require 'rdiscount'
rescue LoadError
  $stderr.puts "Skipping markdown helper tests. 'gem install rdiscount' to enable."
end
