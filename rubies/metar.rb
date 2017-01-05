class Metar
  require "open-uri"
  attr_accessor :data_source, :format, :airport, :hours_before_now

  def initialize opts
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

    validate_inputs

    @query_string = "https://www.aviationweather.gov/adds/dataserver_current/httpparam?dataSource=#{data_source}&requestType=retrieve&format=#{format}&stationString=#{airport.upcase}&hoursBeforeNow=#{hours_before_now}"
  end

  def request &block
    response = open(@query_string) # => StringIO object (use object.gets to read the underlying string)
    if block_given?
      yield response
    else
      return response
    end
  end

  private
  def validate_inputs
    if @airport.length < 3
      raise "[ERROR]: Need to be given a 3-letter (FAA) or 4-letter (ICAO) airport code!"
    end
    if @airport.length < 4
      STDERR.puts "[NOTE]: Airport identifier was less than 4 characters long. Prepending a 'K' (ICAO CONUS) to the airport identifier..."
      @airport = "K#{@airport}"
    end
    if @data_source != 'metars'
      raise "[ERROR]: Only metars are supported right now! You tried to request a #{@data_source}"
    end
    if @format != 'xml'
      raise "[ERROR]: Only XML is supported right now! You tried to request #{@format}"
    end
    if @hours_before_now < 1
      raise "[ERROR]: You must request data at least 1 hour old. You tried #{@hours_before_now} hour(s)."
    end
  end

end
