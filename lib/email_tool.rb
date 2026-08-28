require 'csv'
require 'erb'
require 'thor'
include ERB::Util

class MyCLI < Thor
  def self.exit_on_failure?
    true
  end

  @cli_name = "email_tool"

  def self.banner(command, namespace = nil, subcommand = false)
    "#{@cli_name} #{command.usage}"
  end

  desc "convert", "Converts a single '.csv' file to an HTML email."
  def convert
    puts "To be added"
  end

  desc "batch", "Converts a group of similarly named '.csv' files into HTML emails."
  def batch
    puts "To be added"
  end

end

MyCLI.start(ARGV)