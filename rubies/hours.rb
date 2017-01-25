# A little script to write the number of hours worked on a day to a yaml file for reference
require "yaml"

HOURS_FILE = '~/hours.yaml'
TODAY      = "#{Time.now.month}/#{Time.now.day}/#{Time.now.year}"

if File.exists? HOURS_FILE
  hours = YAML.load_file HOURS_FILE
  if !hours  # if bad YAML
    STDERR.puts "Couldn't parse file! Dumping to STDERR..."
    STDERR.puts File.read HOURS_FILE
    File.delete HOURS_FILE # get rid of file and start over
    hours = Hash.new
  end
else
  hours = Hash.new
end

puts "Start time?"
start_time = gets.chomp

puts "End time?"
end_time = gets.chomp

if hours[TODAY] != nil # if there's already an entry from today, append the new one
  hours[TODAY] = { 'previously today' => hours[TODAY],
                   'start' => start_time,
                   'end'   => end_time}
else
  hours[TODAY] = { 'start' => start_time,
                   'end'   => end_time}
end

# rewrite file with new data
file  = File.open HOURS_FILE, 'w+'
file.write YAML.dump hours
file.close if not file.closed?

