bottles = 99
while true
  if bottles > 1
    puts "#{bottles} bottles of beer on the wall. #{bottles} bottles of beer." 
    puts "Take one down, pass it around, #{bottles - 1} bottles of beer on the wall."
    bottles = bottles - 1
  else
    puts "#{bottles} bottle of beer on the wall. #{bottles} bottle of beer."
    puts "Take one down, pass it around, #{bottles-1} bottles of beer on the wall"
    break
  end
end

puts "No more bottles of beer on the wall, no more bottles of beer."
puts "Go to the store and buy some more, 99 bottles of beer on the wall."