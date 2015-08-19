puts 'What is your favorite number?'
fav_number = gets.chomp

better_number = fav_number.to_i + 1

puts 'Perhaps you would prefer ' + better_number.to_s + ' as your favorite number.'
