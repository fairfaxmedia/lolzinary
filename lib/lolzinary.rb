require "lolzinary/version"

module Lolzinary
  def install
    plugin_directory = "#{FileUtils.pwd}/.lolcommits/.plugins"
    FileUtils.mkdir plugin_directory unless FileUtils.directory?(plugin_directory)
    puts "made directory in #{plugin_directory}"
    puts 'copying files...'
    FileUtils.cp 'lolzinary.rb', plugin_directory
    puts "ready!"
  end
end
