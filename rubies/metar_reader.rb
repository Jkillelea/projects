#! /usr/bin/env ruby

require "open-uri"
require "nokogiri"

# airport uses ICAO identifier
airport = "KBDU"
dataSource = "metars"
format = "xml"
hoursBeforeNow = 1


# get and translate into XML
metar = Nokogiri::XML(open("https://www.aviationweather.gov/adds/dataserver_current/httpparam?dataSource=#{dataSource}&requestType=retrieve&format=#{format}&stationString=#{airport}&hoursBeforeNow=#{hoursBeforeNow}"))

# get the latest brief
puts metar.search("METAR").first
