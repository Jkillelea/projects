#!/usr/bin/env ruby
# Copyright Jacob Killelea, 2016
# MIT License

require "nokogiri"
require_relative 'metar.rb'
require_relative 'colors.rb' # pretty colors
include Colors

# airport uses ICAO identifier
if ARGV.empty? # no args given?
  airport = "ksfo"
  # brown is really more like yellow on my terminal.
  STDERR.puts Colors::colorize '[NOTE]: No airport code given: returning default (KSFO)', :brown
else
  airport = ARGV[0]
end

args = {
  airport:        airport,
  # data_source:    "metars",
  # format:         "xml",
  # hours_before_now: 1 # Must be at least 1
}

m     = Metar.new args # request
metar = Nokogiri::XML(m.request).at_css('METAR') # using css selectors on XML (return the first one)

if metar.nil?
  STDERR.puts "[ERROR]: No data returned. Airport not reporting weather?"
else
  begin
    metar.children.each { |field|
      next unless field.respond_to? :name
      next if field.children.empty? || # <- has a child which contains the data
              field.name == 'text'  ||
              field.name == 'quality_control_flags'
      name = field.name
      val  = field.content

      key = Metar::pretty_keys(name)
      key = key.nil? ? name : Metar::pretty_keys(name)

      puts "#{key}: #{val}"
    }
  rescue NoMethodError
    STDERR.puts "[ERROR]: It broke\n\n"
  end
end
