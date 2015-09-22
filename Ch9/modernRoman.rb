=begin
Rewrite previous method to return the new-style Roman numerals
so when someone calls roman_numeral 4, it returns IV  
I = 1, V = 5, X = 10, L = 50, C = 100, D = 500, M = 1000  

INCOMPLETE. COPIED OVER OLDROMAN JUST AS A STARTING POINT

=end
require 'to_roman'

def prompt
  puts "Please enter an integer between 1 and 3000:"
  integer = gets.to_i
  if integer < 1 || integer > 3000
    puts "The number you entered does not fit within the specified range."
    prompt
  else  
    return integer
  end
end

def convert_to_roman num
  m_num = (num/1000)
  m = "M" * m_num
  d_num = (num % 1000 / 500)
  d = "D" * d_num
  c_num = (num % 500 / 100)
  c = "C" * c_num
  l_num = (num % 100 / 50)
  l = "L" * l_num
  x_num = (num % 50 / 10)
  x = "X" * x_num
  v_num = (num % 10 / 5)
  v = "V" * v_num
  i_num = (num % 5 / 1)
  i = "I" * i_num
  roman = m + d + c + l + x + v + i
  # test using to_roman GEM
  puts "The result should be: " + num.to_roman
  return roman
end

puts "Here is your program's result: " + convert_to_roman(prompt)

