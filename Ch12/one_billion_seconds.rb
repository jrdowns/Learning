# Necessary to use ask
require "highline/import"

# Gather input
year = ask "What year(xxxx) were you born?"
month = ask "What month(xx) were you born?"
date = ask "What date(xx) were you born?"
hour = ask "What hour(using 24hr) where you born?"
minute = ask "What minute(xx) were you born?"
seconds = ask "What second(xx) were you born?"

birth_time = Time.local(year,month,date,hour,minute,seconds)
curr_time = Time.new

time_diff = curr_time - birth_time

seconds_until = 1000000000 - time_diff

billion_time = curr_time + seconds_until
puts "You will be one billion seconds old on " + billion_time.to_s