module MathExtention


  def self.pythagorean(*args)
    sum = 0
    args.each { |arg| sum += (arg)**2}
    Math.sqrt(sum)
  end

 # Returns the number of digits of an int or fixnum, not the logBaseTen value: 10**3 = 1000 and returns 4, not 3
 # NOTE that for very large floats in the form x.xxxxx e+xxx, this function will evaluate the length of the string, not the actual length of the number
  public #Public interface for length - keeps things nice and straightforwards
  def self.len(num)
    return num.to_s.length
  end

  # The '*args' thing isn't quite working. Not sure what's up.
  def self.multiply(*args)
    product = 1
    args.each { |arg| product = product * arg }
    return product
  end

  def self.w_to_j_per_hr(watts)
    watts*3600.0
  end

end
