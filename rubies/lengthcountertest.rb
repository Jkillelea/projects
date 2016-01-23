require_relative "intlengthcounter"

counter = IntLengthCounter.new
power = ARGV[0].to_i

(1..10**power).each do |n|
  print " " << counter.len(n).to_s
end
