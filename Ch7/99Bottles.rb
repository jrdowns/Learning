bottles = 99

# Checks to see if "bottle" should be plural or not
def plural(n)
  n == 1 ? "#{n} bottle" : "#{n} bottles"
end

# Runs from 99-1
bottles.downto(1) {
  puts "#{plural(bottles)} of beer on the wall, #{plural(bottles)} of beer"
  puts "Take one down, pass it around, #{plural(bottles -=1)} of beer on the wall"
  puts " "
}

puts "No more bottles of beer on the wall, no more bottles of beer."
puts "Go to the store and buy some more, 99 bottles of beer on the wall."