def prompt
  puts "Enter a Roman numeral:"
  roman_num = gets.downcase.chomp

  if check(roman_num) == "failed"
    prompt
  else
    return roman_num
  end
end

def check(roman_num)
  test = ""
  letter_array = ["i","v","x","l","c","d","m"]
  roman_num.each_char do |char|
    if letter_array.include?(char) == false
      puts "That is not a valid Roman numeral."
      test = "failed"
      return test
    else
      test = "passed"
    end
  end
  
  return test
end

def convert_to_num(roman_num)
  roman_length = roman_num.length
  roman_array = []
  switch = 0
  total_num = 0
  num_array = []

  0.upto(roman_length - 1) { |n| roman_array << roman_num[n]}

  roman_array.each do |n|
    if n == "m"
      num_array << 1000
    elsif n == "d"
      num_array << 500
    elsif n == "c"
      num_array << 100
    elsif n == "l"
      num_array << 50
    elsif n == "x"
      num_array << 10
    elsif n == "v"
      num_array << 5
    elsif n == "i"
      num_array << 1
    end
  end

  num_array.each_with_index do |n, x|
    num_length = num_array.length
    if switch == 1
      switch = 0
      next
    elsif x < (num_length-1)
      n2 = num_array[x+1]
      if n < n2
        total_num += n2 - n
        switch = 1
      else
        total_num += n
      end
    else
      total_num += n
    end
  end
  return total_num.to_s
end

puts "Your Roman numeral converted to an integer is: #{convert_to_num(prompt)}"
