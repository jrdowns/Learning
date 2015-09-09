=begin
Write a method that when passed an interger between 1 and 3000
returns a string containing the proper old-school Roman numeral.
old_roman_numeral 4 should return IIII
Hint: use the integer division and modulus methods on page 32.
I = 1, V = 5, X = 10, L = 50, C = 100, D = 500, M = 1000  
=end

def prompt
  puts "Please enter an integer between 1 and 3000"
  integer = gets.to_i
  if integer < 1 || integer > 3000
    puts "The number you entered does not fit within the range."
    prompt
  else  
    return integer
  end
end

def convert_to_roman num
  m = "M" * (num / 1000)
  d = "D" * (num % 1000 / 500)
  c = "C" * (num % 500 / 100)
  l = "L" * (num % 100 / 50)
  x = "X" * (num % 50 / 10)
  v = "V" * (num % 10 / 5)
  i = "I" * (num % 5 / 1)
  roman = m + d + c + l + x + v + i
  # return roman
end

puts convert_to_roman(prompt)