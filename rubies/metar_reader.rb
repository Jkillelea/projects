#!/usr/bin/env ruby
# Copyright Jacob Killelea, 2016
# MIT License

require "open-uri"
require "nokogiri"

# airport uses ICAO identifier
if ARGV.empty? # no args given?
  airport = "ksfo"
else
  airport = ARGV[0]
  if airport.length < 4 # prepend a 'k' (ICAO prefix for CONUS) if the airport name is too small
    airport = "k#{airport}"
  end
end

dataSource = "metars"
format     = "xml"
hoursBeforeNow = 1 # Must be at least 1


def get_metar(airport, dataSource, format, hoursBeforeNow)
  # get and translate into XML
  metar = Nokogiri::XML(open("https://www.aviationweather.gov/adds/dataserver_current/httpparam?dataSource=#{dataSource}&requestType=retrieve&format=#{format}&stationString=#{airport.upcase}&hoursBeforeNow=#{hoursBeforeNow}"))

  if block_given?
    yield metar
  else
    return metar
  end
end


metar = get_metar(airport, dataSource, format, hoursBeforeNow)

begin
  m = metar.search("METAR raw_text").first.text
  puts m

rescue NoMethodError # metar.text doesn't work on an empty nokogiri object
  puts "Airport not publishing weather!"
end
