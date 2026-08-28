require 'csv'
require 'erb'
require 'thor'
include ERB::Util

class MyCLI < Thor
  
  def self.exit_on_failure?
    true
  end

  # Help command
  @cli_name = "pixelmail"
  def self.banner(command, namespace = nil, subcommand = false)
    "#{@cli_name} #{command.usage}"
  end

  # View command
  desc "view", "Displays information about current directory."
  def view
    path = Dir.pwd
    files = Dir.children(path)
    csv_count = files.count { |file| file.end_with?(".csv")}

    puts "Current Path: #{path}"
    puts csv_count == 1 ? "(#{count} '.csv' files found)" : "(#{csv_count} '.csv' files found)"
    puts "Files:"
    

    files.each do |file|
      symbol = file.end_with?(".csv") ? "✔" : "✘"
      helper = file.end_with?(".csv") ? "(compatible)" : "(not compatible)"
      puts "  #{symbol} #{file} #{helper}" if ('a'..'z').include?(file[0].downcase)
    end
  end

  # Convert command
  desc "convert", "Converts a single '.csv' file into HTML."
  def convert
    puts "To be added"
  end

  # Batch command
  desc "batch", "Converts a batch of '.csv' files into HTML."
  def batch
    puts "To be added"
  end

end

MyCLI.start(ARGV)