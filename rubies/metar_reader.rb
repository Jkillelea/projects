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

def get_metar(args)
  # get and translate into XML
  begin
    url = "https://www.aviationweather.gov/adds/dataserver_current/httpparam
                  ?dataSource=                 #{args[:dataSource]}
                  &requestType=retrieve&format=#{args[:format]}
                  &stationString=              #{args[:airport].upcase}
                  &hoursBeforeNow=             #{args[:hoursBeforeNow]}"

    for str in ["\n", "\t", " "] # clean up into one long string
      url.delete! str
    end

    xml   = open(url) # make request
    metar = Nokogiri::XML(xml) # translate
  rescue SocketError
    STDERR.puts "[ERROR] Failed to connect to internet."
    exit 1
  end

  if block_given?
    yield metar
  else
    return metar
  end
end

args = {
  airport:         airport,
  dataSource:      "metars",
  format:          "xml",
  hoursBeforeNow:  1 # Must be at least 1
}

metar = get_metar(args)
data  = metar.children.search('METAR').first

begin
  data.children.each { |c|
    next if c.children.empty? || c.name == 'text'
    name = c.name
    val  = c.children
    puts "#{name}: #{val}"
  }
rescue NoMethodError
  STDERR.puts "it broke\n\n"
end
