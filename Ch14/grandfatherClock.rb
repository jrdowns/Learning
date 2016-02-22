=begin
  Write a method that takes a block and calls it once for each hour that has
  passed today. That way, if I were to pass in the block:
    do
      puts "DONG!"
    end
  it would chime (sort of) like a grandfather clock. Test your method out with
  a few different blocks.
  
  Hint: You can use Time.new.hour to get the current hour. However, this returns
  a number between 0 and 23, so you will have to alter those numbers in order
  to get ordinary clock-face numbers (1 to 12)
=end
require "time"

def wait
  hour = Time.new.hour
  
  sleep(Time.parse("#{hour+1}:00:00") - Time.now)
  dong
end

def get_hour
  hour = Time.new.hour

  if hour > 12
    hour = hour - 12
  elsif hour == 0
    hour = 12
  end
  
  hour
end

def clock &chime
  hour = get_hour
  puts "The clock strikes #{hour}!"
  hour.times(&chime)
end

def dong
  clock do 
    puts "DONG!"
    #sleep 2
  end
  wait
end

dong
