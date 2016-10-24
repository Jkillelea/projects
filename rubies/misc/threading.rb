HOST = 'www.reddit.com'

times = []

20.times do |i| # 100 threads
  Thread.new {
    # $stdout << "Thread #{i}\n" # shifting the variable to $stdout is faster than using puts, for which timing is harder to discern
    start = Time.now
    `ping -c 1 #{HOST} > /dev/null`
    times.push(Time.now - start)
  }
end

# sleep 1

Thread.list.each { |t| # make main wait for each thread to finish execution
  unless t == Thread.main # unless it's this (the main) thread
    # puts t.status # if false, thread already terminated normally
    t.join
  end
}

sum = times.inject do |sum, t| # sum is kept as we iterate through the t's in times
  sum += t
end

$stdout << "#{(sum/times.length)}\n"
