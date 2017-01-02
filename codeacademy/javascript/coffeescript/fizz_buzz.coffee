for i in [1..20] by 1

  # console.log i
  if i % 3 is 0 and i % 5 is 0
    console.log "FizzBuzz"

  else if i % 3 is 0
    console.log "Fizz"

  else if i % 5 is 0
    console.log "Buzz"

  else
    console.log i
