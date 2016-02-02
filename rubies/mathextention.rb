module MathExtention

  # Needed to remove nomethod errors
  extend self

  def pythagorean(*args)
    square_sum = 0
    args.each { |arg| square_sum = square_sum + arg**2}
    return square_sum**(0.5)
  end

 # Returns the number of digits of an int or fixnum, not the logBaseTen value: 10**3 = 1000 and returns 4, not 3
 # NOTE that for very large floats in the form x.xxxxx e+xxx, this function will evaluate the length of the string, not the actual length of the number
  public #Public interface for length - keeps things nice and straightforwards
  def len(num)
    return num.to_s.length
  end


end
