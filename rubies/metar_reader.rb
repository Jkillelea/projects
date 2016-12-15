#!/usr/bin/env ruby
# Copyright Jacob Killelea, 2016
# MIT License

require "open-uri"
require "nokogiri"

# airport uses ICAO identifier
if ARGV.empty? # no args given?
  airport = "ksfo"
  STDERR.puts 'NOTE: No airport code given: returning default (KSFO)'
else
  airport = ARGV[0]
  if airport.length < 4 # prepend a 'k' (ICAO prefix for CONUS) if the airport name is too small
    STDERR.puts 'NOTE: Given airport code is 3 letters. Prepending a \'K\' for the ICAO code'
    airport = "k#{airport}"
  end
end

dataSource = "metars"
format     = "xml"
hoursBeforeNow = 1 # Must be at least 1


def get_metar(airport, dataSource, format, hoursBeforeNow)
  # get and translate into XML
  begin
    xml = open("https://www.aviationweather.gov/adds/dataserver_current/httpparam?dataSource=#{dataSource}&requestType=retrieve&format=#{format}&stationString=#{airport.upcase}&hoursBeforeNow=#{hoursBeforeNow}")
    metar = Nokogiri::XML(xml)
  rescue SocketError
    STDERR.puts "[ERROR] Failed to connect to internet."
    exit
  end

  if block_given?
    yield metar
  else
    return metar
  end
end


metar = get_metar(airport, dataSource, format, hoursBeforeNow)
data = metar.children.search('METAR').first

begin
  data.children.each { |c|
    next if c.children.empty? || c.name == 'text'
    name = c.name
    val  = c.children
    puts "#{name}: #{val}"
  }
rescue NoMethodError
  STDERR << "it broke\n\n"
end
