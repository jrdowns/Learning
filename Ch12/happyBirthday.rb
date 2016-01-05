require "highline/import"

year = ask "What year(xxxx) were you born?"
month = ask "What month(xx) were you born?"
date = ask "What date(xx) were you born?"

age_years = (Time.new - Time.local(year,month,date)) / 31557600

puts "You are #{age_years.to_i} years old!"

1.upto(age_years) { |n| print n, "! *SPANK*" + "\n"}
puts "And one to grow on! *SPANK*"