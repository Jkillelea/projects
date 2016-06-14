#!/usr/bin/env ruby
# Copyright Jacob Killelea, 2016
# MIT License

require "open-uri"
require "nokogiri"

# airport uses ICAO identifier
airport    = "KPAO"
dataSource = "metars"
format     = "xml"
hoursBeforeNow = 1


def get_metar(airport, dataSource, format, hoursBeforeNow)
  # get and translate into XML
  metar = Nokogiri::XML(open("https://www.aviationweather.gov/adds/dataserver_current/httpparam?dataSource=#{dataSource}&requestType=retrieve&format=#{format}&stationString=#{airport.upcase}&hoursBeforeNow=#{hoursBeforeNow}"))

  if block_given?
    yield metar
  else
    return metar
  end
end


get_metar(airport, dataSource, format, hoursBeforeNow) do |metar|
  puts metar.search("METAR raw_text").first
end
