=begin
Write a program that sorts words alphabetically.  
=end

puts "Type as many words as you'd like. Enter a blank line to exit:"
word_list = []

while true
  word = gets.chomp
  if word == ""
    break
  end
  
  word_list.push word
end

def sorting some_array
  recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array
  if unsorted_array.length <= 0
    return sorted_array
  end
  
  smallest = unsorted_array.pop
  still_unsorted = []
  
  unsorted_array.each do |x|
    if x < smallest
      still_unsorted.push smallest
      smallest = x
    else
      still_unsorted.push x
    end
  end
  
  sorted_array.push smallest
    
  recursive_sort still_unsorted, sorted_array
end

puts "Here is the list using .sort:"
puts word_list.sort

puts "Here is the list using your program:"
puts sorting word_list