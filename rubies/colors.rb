# prints out pretty command line colors in Gnome Terminal, and probably other terminals too
module Colors
  COLORS = {
    white:   0,
    black:   30,
    red:     31,
    green:   32,
    brown:   33,
    blue:    34,
    magenta: 35,
    cyan:    36,
    gray:    37
  }

  def self.colorize(text, color)
    "\033[#{COLORS[color.to_sym]}m#{text}\033[0m"
  end
end

# COLORS.each_key do |color|
#  puts colorize(color, color)
# end
