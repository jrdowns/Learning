# I = 1, V = 5, X = 10, L = 50, C = 100, D = 500, M = 1000

class ModernRoman
  
  # Make sure input only contains numbers between 1 - 4999 & no letters
  def input_test(input)
    if input =~ /[a-zA-Z]+/ || input.to_i.between?(1,4999) == false
      return false
    else
      return true
    end
  end
  
  def convert_to_roman(num)
    # M = 1000
    m_num = (num/1000)
    m = "M" * m_num
  
    # 100 - 900
    c_num = (num % 1000 / 100)
    if c_num == 9
      c = "CM"
    elsif c_num > 5 && c_num < 9
      c = "D" + "C" * (c_num - 5)
    elsif c_num == 5
      c = "D"
    elsif c_num == 4
      c = "CD"
    else
      c = "C" * c_num
    end
  
    # 10 - 90
    x_num = (num % 100 / 10)
    if x_num == 9
      x = "XC"
    elsif x_num > 5 && x_num < 9
      x = "L" + "X" * (x_num - 5)
    elsif x_num == 5
      x = "L"
    elsif x_num == 4
      x = "XL"
    else
      x = "X" * x_num
    end
  
    # 1 - 9
    i_num = (num % 10 / 1)
    if i_num == 9
      i = "IX"
    elsif i_num > 5 && i_num < 9
      i = "V" + "I" * (i_num - 5)
    elsif i_num == 5
      i = "V"
    elsif i_num == 4
      i = "IV"
    else
      i = "I" * i_num
    end
  
    roman = m.to_s + c.to_s + x.to_s + i.to_s
  
    return roman
    #puts roman
  end
  
end

#ModernRoman.new