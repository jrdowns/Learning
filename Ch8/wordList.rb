# Ask you to type as many words as you want. Stores in array.
# End when you press Enter on an empty line.
# Repeats words back in alphabetical order.
# use .sort method
puts "Type as many words as you'd like:"
word_list = []

while true
  word = gets.chomp
  if word == ""
    break
  end
  
  # Pushes input (word) into array (word_list).
  word_list.push word
end

puts "Here are the words you entered sorta alphabetically:"
# .sort, by default, sorts alphabetically, but can sort in other ways.
puts word_list.sort

=begin
Alternative method:
while true
  word = gets.chomp
  break if word.empty?
  
  words << word
end  
=end