# Necessary to use ask
require "highline/import"

# Gather input
year = ask "What year(xxxx) were you born?"
month = ask "What month(xx) were you born?"
date = ask "What date(xx) were you born?"

birth_day = Time.local(year,month,date)
curr_day = Time.new

age_seconds = curr_day - birth_day
age_years = (((age_seconds / 60) / 60) / 24) / 365
spanks = age_years.to_i

puts "You are #{age_years.to_i} years old!"

1.upto(spanks) { |n| print n, "! *SPANK*" + "\n"}
puts "And one to grow on! *SPANK*"
