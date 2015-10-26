=begin
Using english_number and your old program on page 49, write out the lyrics
to this song the right way this time. Punish your computer: have it start at
9999.  
=end

max_count = 99
count = max_count
item = "bottle"
# Checks to see if "bottle" should be plural or not
def plural(n, item)
  n == 1 ? "#{item}" : "#{item}s"
end

def english_number number
  if number < 0
    return "Please enter a number that isn't negative."
  end
  if number == 0
    return "zero"
  end
  
  num_string = ""
  
  ones_place = ["one", "two", "three",
                "four", "five", "six",
                "seven", "eight", "nine"]
              
  tens_place = ["ten", "twenty", "thirty",
                "forty", "fifty", "sixty",
                "seventy", "eighty", "ninety"]
       
  teenagers = ["eleven", "twelve", "thirteen",
               "fourteen", "fifteen", "sixteen",
               "seventeen", "eighteen", "nineteen"]
               
               
  left = number
  write = left/100
  left = left - write * 100
  
  if write > 0
    hundreds = english_number write
    num_string = num_string + hundreds + " hundred"
    if left > 0
      num_string = num_string + " "
    end
  end
  
  write = left/10
  left = left - write * 10
  
  if write > 0
    if ((write == 1) and (left > 0))
      num_string = num_string + teenagers[left-1]
      left = 0
    else
      num_string = num_string + tens_place[write-1]
    end
    if left > 0
      num_string = num_string + "-"
    end
  end
  
  write = left
  left = 0
  
  if write > 0
    num_string = num_string + ones_place[write-1]
  end
  
  num_string
end

# Runs from 99-1
count.downto(1) {
  puts "#{english_number(count).capitalize} #{plural(count, item)} of beer on the wall, #{english_number(count)} #{plural(count, item)} of beer."
  puts "Take one down, pass it around, #{english_number(count -=1)} #{plural(count, item)} of beer on the wall."
  puts " "
}

puts "No more #{item}s of beer on the wall, no more #{item}s of beer."
puts "Go to the store and buy some more, #{max_count} #{item}s of beer on the wall."