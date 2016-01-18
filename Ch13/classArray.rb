class Array
  def shuffle
    unshuffled = self
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
end

class Integer
  def factorial
    if self <= 1
      1
    else
      self * (self-1).factorial
    end
  end

  def to_roman
    # M = 1000
    m_num = (self/1000)
    m = "M" * m_num

    # 100 - 900
    c_num = (self % 1000 / 100)
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
    x_num = (self % 100 / 10)
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
    i_num = (self % 10 / 1)
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
  end
end

puts [1,2,3,4,5].shuffle
puts 7.factorial
puts 73.to_roman