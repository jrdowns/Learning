# Ask for name
puts 'What is your first name?'
first_name = gets.chomp
puts 'What is your middle name?'
middle_name = gets.chomp
puts 'What is your last name?'
last_name = gets.chomp

# Get name lengths
f_name_length = first_name.length
m_name_length = middle_name.length
l_name_length = last_name.length

# Calculate total characters in full name
character_count = f_name_length + m_name_length + l_name_length

# Blank line
puts ' '

# Restate capitalized name
puts 'Pleased to meet you ' + first_name.capitalize + ' ' + middle_name.capitalize + ' ' + last_name.capitalize + '.'
# Restate name using interpolation
puts "Pleased to meet you #{first_name.capitalize} #{middle_name.capitalize} #{last_name.capitalize}."

# Give character count
puts 'There are ' + character_count.to_s + ' characters in your name.'
# Give character count using interpolation
puts "There are #{character_count} characters in your name."