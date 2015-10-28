require "lolzinary/version"
require 'pry'

module Lolzinary
  def self.install
    source_path = File.expand_path("../lolzinary_plugin.rb", __FILE__)
    plugin_directory = "~/.lolcommits/.plugins"
    FileUtils.mkpath plugin_directory
    FileUtils.cp source_path, plugin_directory
    puts "Lolzinary plugin installed - remember to enable the plugin with \"lolcommits --config -p lolzinary\""
  end
end
