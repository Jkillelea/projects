class IntLengthCounter
##returns the length of an int supplied sent through len
@length #instance variable for length

  def initialize
    @length = 0
  end

  private #RECURSIVE FUNCTION - @length is incremented for every power of 10 in the passed number
  def length(int)
    unless int == 0
      @length += 1
      length(int / 10)
    end
  end

  public #Public interface for length - keeps things nice and straightforwards
  def len(num)
    @length = 0
    length(num)
    return @length
  end

end
