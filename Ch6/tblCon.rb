# Table of contents. pg 32
line_width = 60

puts "Table of Contents".center(line_width)

puts " "

puts "Chapter 1:  Getting Started".ljust(line_width/2) + "page  1".rjust(line_width/2)
puts "Chapter 2:  Numbers".ljust(line_width/2) + "page  9".rjust(line_width/2)
puts "Chapter 3:  Letters".ljust(line_width/2) + "page 13".rjust(line_width/2)

# Make DRY (don't repeat yourself). Store "Chapter" as a variable. Use iterator.
