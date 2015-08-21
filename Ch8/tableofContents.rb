=begin
Rewrite table of contents program from page 32.
Start the program with an array holding all of the information
of your table of contents (chapter names, page numbers, and so on).
Then print out the information from the array in a beautifully formatted
table of contents.
=end
line_width = 55
contents = ["Table of Contents", "Chapter 1:  Getting Started", "page 1", "Chapter 2:  Numbers", "page 9", "Chapter 3:  Letters", "page 13"]

puts contents[0].center(line_width)

puts contents[1].ljust(line_width/2) + contents[2].rjust(line_width/2)
puts contents[3].ljust(line_width/2) + contents[4].rjust(line_width/2)
puts contents[5].ljust(line_width/2) + contents[6].rjust(line_width/2)

=begin
book uses the following:
puts(contents[1].ljust(line_width/2))
The the second set of ()? Seems to work without.  
=end