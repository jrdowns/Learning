=begin
Write a shuffle method that takes an array and returns a totally shuffled
version. As always, you'll want to test it, but testing this one is trickier:
How can you test to make sure you are getting a perfect shuffle? What would
you even say a perfect shuffle would be? Now test for it.  
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

def shuffler some_array
  recursive_shuffle some_array, []
end

# Random number generator
# Tested. Does not return a value == x or beyond max
def rand_gen x, length
  rand_max = length - 1
  rand_num = rand(0..rand_max)
  # Checks to make sure new slot isn't same as original
  if rand_num == x
    rand_gen(x, rand_max)
  else
    return rand_num
  end
end

def recursive_shuffle unshuffled_array, shuffled_array
  if unshuffled_array.length <= 0
    return shuffled_array
  end
  
  # length = unshuffled_array.length + shuffled_array.length
  element = unshuffled_array.pop
  # still_unshuffled = []
  num = 0
  
  unshuffled_array.each do |x|
    num = rand_gen(x, 4)
    # if random slot isn't empty on shuffled_array
    while true 
      if shuffled_array[num].nil? == false
        num = rand_gen(x, 4)
      elsif shuffled_array[num].nil? == true
        break
      end
    end

  end
  
  shuffled_array.insert(num, element)    
  recursive_shuffle(unshuffled_array, shuffled_array)
end

puts "Here is the list using .shuffle:"
puts word_list.shuffle

puts "Here is the list using your program:"
puts shuffler word_list