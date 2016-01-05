s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]

s.each do |subarray|
  subarray.each do |word|
    puts word
  end
end
