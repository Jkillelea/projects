#!/usr/bin/env ruby
# Copyright Jacob Killelea, 2016
# MIT License

# require "open-uri"
require "nokogiri"
require_relative './metar.rb'

# airport uses ICAO identifier
if ARGV.empty? # no args given?
  airport = "ksfo"
  STDERR.puts '[NOTE]: No airport code given: returning default (KSFO)'
else
  airport = ARGV[0]
end

args = {
  airport:        airport,
  # data_source:    "metars",
  # format:         "xml",
  # hours_before_now: 1 # Must be at least 1
}

m = Metar.new args
metar = Nokogiri::XML(m.request)

data  = metar.css('METAR').first # using css selectors on XML

begin
  data.children.each { |child|
    next if child.children.empty? || child.name == 'text'
    name = child.name
    val  = child.children
    puts "#{name}: #{val}"
  }
rescue NoMethodError
  STDERR.puts "[ERROR]: It broke\n\n"
end
