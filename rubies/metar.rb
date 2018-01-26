class Metar
  require "open-uri"
  attr_reader :data_source, :format, :airport, :hours_before_now

  def initialize opts = {}
    defaults = {
      data_source:      "metars",
      format:           "xml",
      airport:          "ksfo",
      hours_before_now: 1 # Must be at least 1
    }
    options = defaults.merge opts # values in opts override those in defaults
    @data_source      = options[:data_source]
    @format           = options[:format]
    @airport          = options[:airport]
    @hours_before_now = options[:hours_before_now]

    validate_inputs # check basic things

    # build the query
    uri = URI "https://www.aviationweather.gov/adds/dataserver_current/httpparam"
    uri.query = "dataSource=#{@data_source}&
                  requestType=retrieve&format=#{@format}&
                  stationString=#{airport.upcase}&
                  hoursBeforeNow=#{@hours_before_now}".delete("\n").delete(" ").delete("\t")
    @query_string = uri.to_s
  end

  def request &block
    response = open @query_string # => StringIO object (use object.gets to read the underlying string)
    if block_given?
      yield response
    else
      return response
    end
  end

  public
  def self.pretty_keys(str)
      pretty_keys = { 'raw_text'              => "Raw Text",
                      'station_id'            => "Station ID",
                      'observation_time'      => "Observation Time",
                      'latitude'              => "Latitude",
                      'longitude'             => "Longitude",
                      'temp_c'                => "Temp (C)",
                      'dewpoint_c'            => "Dewpoint (C)",
                      'wind_dir_degrees'      => "Wind Direction (deg)",
                      'wind_speed_kt'         => "Wind Speed (kts)",
                      'visibility_statute_mi' => "Visibility (mi)",
                      'altim_in_hg'           => "Altimiter (inHg)",
                      'sea_level_pressure_mb' => "Sea Level Pressure (mb)",
                      'wx_string'             => "WX String",
                      'flight_category'       => "Flight Category",
                      'metar_type'            => "Metar Type",
                      'elevation_m'           => "Elevation (m)" }
    pretty_keys[str]
  end

  private
  def validate_inputs
    error = false
    if @airport.length < 3
      response = "[ERROR]: Need to be given a 3-letter (FAA) or 4-letter (ICAO) airport code!"
      error = true
    end
    if @airport.length < 4
      response = "[NOTE]: Airport identifier was less than 4 characters long. Prepending a 'K' (ICAO CONUS) to the airport identifier..."
      @airport = "K#{@airport}"
    end
    if @data_source != 'metars'
      response = "[ERROR]: Only metars are supported right now! You tried to request a #{@data_source}"
      error = true
    end
    if @format != 'xml'
      response = "[ERROR]: Only XML is supported right now! You tried to request #{@format}"
      error = true
    end
    if @hours_before_now < 1
      response = "[ERROR]: You must request data at least 1 hour old. You tried #{@hours_before_now} hour(s)."
      error = true
    end
    raise response if error
  end
end
