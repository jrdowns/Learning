# ask for starting year and ending year. tells all years between that are leap years.
# Leaps years are divisible by 4
# Years divisible by 100 are not leaps years unless they are also divisible by 400.
puts "This program will tell you all of the leap years between a specified range of years."
puts "Please input the starting year:"
start_year = gets.chomp
puts "Please input the ending year:"
end_year = gets.chomp

year_count = end_year.to_i - start_year.to_i + 1
leap_count = 0
current_year = start_year.to_i

puts "There are #{year_count} years in the range #{start_year} to #{end_year}."

while true
  if current_year <= end_year.to_i
    if current_year % 4 == 0 && current_year % 100 != 0
      puts "#{current_year} is a leap year."
      leap_count += 1
      current_year += 1
    elsif current_year % 100 == 0 && current_year % 400 == 0
      puts "#{current_year} is a leap year."
      leap_count += 1
      current_year += 1
    else
      current_year += 1
    end
  else
    puts "There were #{leap_count} leap years in the given range."
    break
  end
end