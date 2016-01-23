require_relative "intlengthcounter"

counter = IntLengthCounter.new
POWER = ARGV[0].to_i

(1..10**POWER).each do |n|
  counter.len(n)
end
