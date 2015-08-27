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
line_length = line_start.length + page.length + 35

# Check to make sure chap_name, chap_num, and page_name aren't too long.


# OUTPUT
puts title_name[0].center(line_length)

puts " "

chap_num.each_with_index do |chapter, x|
  # Idea: encapsulate both halves and justify both halves line_width/2?
  # (first half of variable).ljust(line_width/2) + (second half of variables).rjust(line_width/2)
  puts line_start.ljust(line_start.length + 1) + chap_num[x].rjust(3) + ": " + chap_name[x].ljust(25) + page + " " + page_num[x].rjust(3)
end