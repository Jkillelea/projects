module ParseOpts
  # returns a hash of command line options from a specified array.
  # expected format is "--key val --switch --key val..."
  # returns something like {key: val, switch: true, key: val}

    def self.parse options
      options_hash = {}
      options.each_index do |i|
        if options[i][0] == '-'
          key = options[i]

          # scrub out leading hyphens as needed
          while key[0] == '-'
            key = key[1...key.length]
          end

          val = options[i+1]

          if val == nil || val[0] == '-'
            val = true
          end

          options_hash[key.to_sym] = val
        end
      end
      return options_hash
    end
end
