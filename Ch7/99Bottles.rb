max_count = 99
count = max_count
item = "bottle"
# Checks to see if "bottle" should be plural or not
def plural(n, item)
  n == 1 ? "#{n} #{item}" : "#{n} #{item}s"
end

# Runs from 99-1
count.downto(1) {
  puts "#{plural(count, item)} of beer on the wall, #{plural(count, item)} of beer"
  puts "Take one down, pass it around, #{plural(count -=1, item)} of beer on the wall"
  puts " "
}

puts "No more #{item}s of beer on the wall, no more #{item}s of beer."
puts "Go to the store and buy some more, #{max_count} #{item}s of beer on the wall."