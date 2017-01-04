class Metar
  require "open-uri"
  attr_accessor :data_source, :format, :airport, :hours_before_now

  def initialize(opts)
    defaults = {
      data_source:      "metars",
      format:           "xml",
      airport:          "ksfo",
      hours_before_now: 1 # Must be at least 1
    }
    options = defaults.merge(opts) # values in opts override those in defaults
    @data_source      = options[:data_source]
    @format           = options[:format]
    @airport          = options[:airport]
    @hours_before_now = options[:hours_before_now]

    # validate input
    if @airport.length < 4
      STDERR.puts "Airport identifier was less than 4 characters long. Prepending a 'K' (ICAO CONUS) to the airport identifier..."
      @airport = "K#{@airport}"
    end
    if @data_source != 'metars'
      raise "Only metars are supported right now! You tried to request a #{@format}"
    end
    if @hours_before_now < 1
      raise "You must request data at least 1 hour old. You tried #{@hours_before_now} hour(s)."
    end

    @query_string = "https://www.aviationweather.gov/adds/dataserver_current/httpparam?dataSource=#{data_source}&requestType=retrieve&format=#{format}&stationString=#{airport.upcase}&hoursBeforeNow=#{hours_before_now}"
  end

  def request
    open(@query_string) # => StringIO object (use object.gets to read the underlying string)
  end

end
