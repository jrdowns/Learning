=begin
Rewrite table of contents program from page 32.
Start the program with an array holding all of the information
of your table of contents (chapter names, page numbers, and so on).
Then print out the information from the array in a beautifully formatted
table of contents.
=end

title_name = ["Table of Contents"]
chap_num = ["11","222","3333"]
chap_name = ["Getting Started", "Numbers", "Letters"]
page_num = ["11", "999", "133"]
line_start = "Chapter"
page = "page"

# Test to make sure chap_num, chap_name, and page_num fit parameters.
chap_num.each_with_index do |chapter, n|
  if chap_num[n].length > 4
    puts "Your chapter number exceeds the 4 character maximum. 
         Formatting may be disrupted."
  end
  if chap_name[n].length > 30
    puts "Your chapter name exceeds the 30 character maximum. 
         Formatting may be disrupted."
  end
  if page_num[n].length > 4
    puts "Your page number exceeds the 4 character maximum. 
         Formatting may be disrupted."
  end
end

# Get line length to center title
line_width = line_start.length + page.length + 43

# OUTPUT
puts title_name[0].center(line_width)

puts " "

chap_num.each_with_index do |chapter, x|  
  puts line_start.ljust(line_start.length) + " " + 
       chap_num[x].rjust(4) + ": " + 
       chap_name[x].ljust(30) + " " + 
       page.rjust(page.length) + " " + 
       page_num[x].rjust(4)
end