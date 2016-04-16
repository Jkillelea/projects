require "open-uri"
require "nokogiri"

# airport uses ICAO identifier
airport = "KBDU"
dataSource = "metars"
format = "xml"
hoursBeforeNow = 1


metar = open("https://www.aviationweather.gov/adds/dataserver_current/httpparam?dataSource=#{dataSource}&requestType=retrieve&format=#{format}&stationString=#{airport}&hoursBeforeNow=#{hoursBeforeNow}")

# translate it into XML
metar = Nokogiri::XML(metar)

# get the latest brief
puts metar.css("METAR").first
