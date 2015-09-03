=begin
Rewrite table of contents program from page 32.
Start the program with an array holding all of the information
of your table of contents (chapter names, page numbers, and so on).
Then print out the information from the array in a beautifully formatted
table of contents.
=end

title_name = ["Table of Contents"]
chap_num = ["1","2","3"]
chap_name = ["Getting Started", "Numbers", "Letters"]
page_num = ["1", "9", "13"]
line_start = "Chapter"
page = "page"
# Get line length to center title
# line_length = line_start.length + page.length + 35
line_width = 55

# OUTPUT
puts title_name[0].center(line_width)

puts " "

chap_num.each_with_index do |chapter, x|
  first_half = line_start + " " + chap_num[x] + ": " + chap_name[x]
  second_half = page + " " + page_num[x]

  puts first_half.ljust(line_width/2) + second_half.rjust(line_width/2)
end