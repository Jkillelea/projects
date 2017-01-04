#!/usr/bin/env ruby
# Copyright Jacob Killelea, 2016
# MIT License

# require "open-uri"
require "nokogiri"
require_relative './metar.rb'

# def get_metar(args)
#   # get and translate into XML
#   begin
#     url = "https://www.aviationweather.gov/adds/dataserver_current/httpparam?dataSource=#{args[:dataSource]}
#                                                                             &requestType=retrieve&format=#{args[:format]}
#                                                                             &stationString=#{args[:airport].upcase}
#                                                                             &hoursBeforeNow=#{args[:hoursBeforeNow]}"
#
#     for str in ["\n", "\t", " "] # clean up into one long string
#       url.delete!(str)
#     end
#     xml   = open(url)          # make request
#     metar = Nokogiri::XML(xml) # translate
#
#   rescue SocketError
#     STDERR.puts "[ERROR] Failed to connect to internet."
#     exit 1
#   end
#
#   if block_given?
#     yield metar
#   else
#     return metar
#   end
# end

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

# metar = get_metar(args)
data  = metar.children.search('METAR').first

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
