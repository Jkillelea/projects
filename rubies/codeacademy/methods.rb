def alphabetize(arr, rev = false)
  arr.sort!

  if rev == true
    arr.reverse!
  end

return arr
end


numbers = [11, 12, 2323, 4, 1, 5, 98]

puts alphabetize(numbers)
