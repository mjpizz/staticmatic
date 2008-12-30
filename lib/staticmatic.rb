require 'rubygems'
require 'haml'
require 'sass'
require 'mongrel'

module StaticMatic
  VERSION = '0.9.5'
end

["render", "build", "setup", "server", "helpers"].each do |mixin|
  require File.join(File.dirname(__FILE__), "staticmatic", "mixins", mixin)
end

["base", "configuration", "error", "server", "helpers"].each do |lib|
  require File.join(File.dirname(__FILE__), "staticmatic", lib)
end

Haml::Helpers.class_eval("include StaticMatic::Helpers")

