=begin
Write a shuffle method that takes an array and returns a totally shuffled
version. As always, you'll want to test it, but testing this one is trickier:
How can you test to make sure you are getting a perfect shuffle? What would
you even say a perfect shuffle would be? Now test for it.  
=end

#There is a .shuffle method

puts "Type as many words as you'd like. Enter a blank line to exit:"
word_list = []

while true
  word = gets.chomp
  if word == ""
    break
  end
  
  word_list.push word
end

def shuffle unshuffled
  shuffled = []
  
  while unshuffled.length > 0
    rand_element = rand(unshuffled.length)
    index = 0
    new_arr = []
    
    unshuffled.each do |x|
      if index == rand_element
        shuffled.push x
      else
        new_arr.push x
      end
      index = index + 1
    end
    
    unshuffled = new_arr
  end
  
  shuffled
end

puts "Here is your list shuffled:"
puts shuffle(word_list)