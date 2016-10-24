SITE         = 'www.google.com'
LOGFILE_PATH = 'connectionlog.txt'
START_TIME   = Time.now

File.new LOGFILE_PATH, 'w'
logfile = File.open LOGFILE_PATH, 'a'
logfile.puts "#started at #{Time.now.to_s}"
logfile.close

def time(&block)
	start = Time.now
	yield(block)
	endtime = Time.now - start
end

loop do
	if Time.now.day >= 7
		exit
	end

  begin
    logfile = File.open LOGFILE_PATH, 'a'

    t = time do
			`ping -c 1 #{SITE} > /dev/null` # 1 ping to SITE
		end
		elapsed_time = (Time.now - START_TIME).round
		t = (t *= 1000).round # convert to ms

		logfile.puts "#{elapsed_time} #{t}"
		# puts "#{elapsed_time} - #{SITE} - #{t} ms"

  rescue IOError, RuntimeError # redirection forbidden is a RuntimeError
    logfile.puts "#{elapsed_time} 0"

  ensure
    logfile.close unless logfile.nil?
  end
  sleep 1
end
