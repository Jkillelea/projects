class Editor
  attr_reader :charbuffer, :cursor_row, :cursor_col

  def initialize filepath
    @file = File.open(filepath, 'r+')
    @charbuffer = read
    @cursor_row = 0
    @cursor_col = 0
  end

  private
  def read # read in a file
    buff_ary = []
    @file.each_line do |line|
      tmp_ary = []
      line.each_char { |c| tmp_ary.push c  }
      buff_ary.push tmp_ary
    end
    return buff_ary
  end

  public
  def write
    @charbuffer.each do |line_ary|
      puts line_ary
      line_ary.each do |c|
        @file.write c
      end
    end
  end

  def test
    puts (@file.public_methods - Object.public_methods).sort
  end

end


editor = Editor.new ARGV[0]
editor.write
# editor.test
# puts editor.charbuffer.inspect
# editor.charbuffer.each do |line|
#   print line
#   print "\n"
# end
