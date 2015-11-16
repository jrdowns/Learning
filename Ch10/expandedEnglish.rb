=begin
Expanded english_number. First, put in thousands; it should return 
"one thousand" instead of "ten hundred" and "ten thousand" instead of
"one hundred hundred"
Now expand up english_number some more. For example, put in millions so you
get "one million" instead of "one thousand thousand". Then try adding billions,
trillions, and so on.  
=end

def prompt
  puts "Please enter an integer greater than zero:"
  integer = gets.chomp.to_i
  if integer < 0
    puts "Negative numbers are not allowed."
    prompt
  else  
    return integer
  end
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
               
  zillions = [["hundred", 2],
              ["thousand", 3],
              ["million", 6],
              ["billion", 9],
              ["trillion", 12]]
               
  left = number
  
  while zillions.length > 0
    zil_pair = zillions.pop
    zil_name = zil_pair[0]
    zil_base = 10 ** zil_pair[1]
    write = left/zil_base
    left = left - write * zil_base
    
    if write > 0
      prefix = english_number(write)
      num_string = num_string + prefix + " " + zil_name
      
      if left > 0
        num_string = num_string + " "
      end
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

puts english_number(prompt)
