def new_gen x, max, array
  rand_num = rand(0...max)
  # Checks to make sure new slot isn't same as original
  if rand_num == x
    new_gen(x, max, array)
  # need to check if index array contains 
  elsif array.include?(rand_num)
    new_gen(x, max, array)
  else
    return rand_num
  end
end

def old_gen max, array
  rand_num = rand(0...max)
  if array.include?(rand_num)
    old_gen(max, array)
  else
    return rand_num
  end
end

def shuffle old_arr
  # not in loop
  length = old_arr.length
  new_arr = []
  old_index_array = []
  new_index_array = [] # tracks used new_rand
  
  # Should I be using the x?
  old_arr.each do |x|
    # need to stop this number from repeating like new_index
    # pick random color from old array
    old_index = old_gen(old_arr.length, old_index_array) # random array slot
    old_index_array.push old_index
    rand_ele = old_arr[old_index] # random color
    
    # generate random slot on new array. index that slot number
    new_index = new_gen(old_index, length, new_index_array)
    new_index_array.push new_index
    
    # and random element to new array slot
    new_arr.insert(new_index, rand_ele)
  end
  # definiately not in loop
  return new_arr
end

unshuffled_arr = ['blue', 'green', 'red', 'yellow']
puts shuffle unshuffled_arr