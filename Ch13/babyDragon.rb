
class Dragon

  def initialize name
    @name = name
    @asleep = false
    @stuff_in_belly = 10 # He's full
    @stuff_in_intestine = 0 # He doesn't need to go
    @happiness = 5
    hatch_graphic
    puts "Your very own dragon, #{@name}, is born!"
    exchange
  end
  
  def hatch_graphic
    puts "     .-~-.     "
    puts "   .'     '.   "
    puts "  /         \\  "
    puts " :           : "
    puts " |           | "
    puts " :           : "
    puts "  \\         /  "
    puts "   `.     .'   "
    puts "     `~~~`     "

    sleep 1

    puts "     .-~-.     "
    puts "   .'     '.   "
    puts "  /    _\\_  \\  "
    puts " :        \\/ ; "
    puts " |   \\__  /  | "
    puts " :   /  `Y   : "
    puts "  \\    .--\\ /  "
    puts "   `.     .'   "
    puts "     `~~~`     "

    sleep 1

    puts "                           "
    puts "  /\\ /\\ /\\ /\\  \\/\\-'^^\\/\\/ "
    puts " //\\\\(o o)//\\\\  '.     .'  "
    puts " ||\\/\\_^/\\_/\\|    '-.-'    "
    puts " : \\_/  `Y--':            "
    puts "  \\ / \\.--\\ /             "
    puts "   .  /   .'              "
    puts "     `~~~`                "

    sleep 1

    puts "               "
    puts "  /\\ /\\ /\\ /\\  "
    puts " //\\\\(o o)//\\\\ "
    puts " ||::/ ^ \\::|| "
    puts " |||((   ))||| "
    puts " |'  \\\" \"/  '| "
    puts "      )I(      "
    puts "     \"\"`\"\"     "
  end

  def exchange
    action = command_prompt
    command_check(action)
  end
  
  def command_prompt
    puts "\n"
    puts "What would you like to do with your dragon?"
    puts "Enter a command: feed, walk, play, put to bed, toss, or rock"
    action = gets.downcase.chomp
  end
  
  def command_check action
    action_List = ["feed", "walk", "play", "put to bed", "toss", "rock"]
    puts "\n"
    if action_List.include?(action)
      if action == "feed"
        feed
      elsif action == "walk"
        walk
      elsif action == "play"
        play
      elsif action == "put to bed"
        put_to_bed
      elsif action == "toss"
        toss
      elsif action == "rock"
        rock
      end
    else
      puts "OOPS! That is not a valid command!"
      exchange
    end
  end

  def feed
    puts "You feed #{@name}."
    @stuff_in_belly = 10
    passage_of_time
    exchange
  end

  def walk
    puts "You walk #{@name}."
    @stuff_in_intestine = 0
    passage_of_time
    exchange
  end

  def play
    puts "You play with #{@name}."
    @happiness += 3
    passage_of_time
    exchange
  end

  def put_to_bed
    puts "You put #{@name} to bed."
    @asleep = true
    3.times do
      if @asleep
        passage_of_time
      end
      if @asleep
        puts "#{@name} snores, filling the room with smoke."
      end
      if @asleep
        @asleep = false
        puts "#{@name} wakes up slowly."
      end
    end
    exchange
  end

  def toss
    puts "You toss #{@name} up into the air."
    puts "He giggles, which singes your eyebrows."
    @happiness += 1
    passage_of_time
    exchange
  end

  def rock
    puts "You rock #{@name} gently."
    @asleep = true
    puts "He briefly dozes off..."
    passage_of_time
    if @asleep
      @asleep = false
      puts "...but wakes when you stop."
    end
    exchange
  end

  private
  # "private" means that the methods defined here are methods internal to the
  # objects. (You can feed your dragon, but you can't ask him whether he's hungry.)
  def hungry?
    # Method names can end with "?"
    # Usually, we do this only if the method returns true or false, like this:
    @stuff_in_belly <= 2
  end

  def poopy?
    @stuff_in_intestine >= 8
  end

  def angry?
    @happiness <= 2
  end

  def passage_of_time
    if @stuff_in_belly > 0
      # Move food from belly to intestine.
      @stuff_in_belly = @stuff_in_belly - 1
      @stuff_in_intestine = @stuff_in_intestine + 2
    else # Our dragon is starving!
      if @asleep
        @asleep = false
        puts "He wakes up suddenly!"
      end
      puts "#{@name} is starving! In desperation, he ate YOU!"
      exit # This quits the program.
    end
    if @stuff_in_intestine >= 10
      @stuff_in_intestine = 0
      @happiness -= 3
      puts "Whoops! #{@name} had an accident..."
    end
    if hungry?
      if @asleep
        @asleep = false
        puts "He wakes up suddenly!"
      end
      @happiness -= 1
      puts "#{@name}'s stomach grumbles..."
    end
    if poopy?
      if @asleep
        @asleep = false
        puts "He wakes up suddenly!"
      end
      @happiness -= 1
      puts "#{@name} does the potty dance..."
    end
    if angry?
      if @happiness > 0
        puts "#{@name} growls at you!"
      else
        puts "#{@name} has become ENRAGED! In anger, he kills YOU!"
        exit # This quits the program.
      end
    end
  end
end

def prompt
  puts "                ,               ,              "
  puts "               /\\    )\\__/(    /\\              "
  puts "              /  \\  (_\\  /_)  /  \\             "
  puts " ____________/____\\__\\@  @/__/____\\____________"
  puts "|                    |\\../|                    |"
  puts "|                     \\VV/                     |"
  puts "|    Welcome to the Baby Dragon Simulator!     |"
  puts "|   What would you like to name your dragon?   |"
  puts "|______________________________________________|"
  puts "         |   /\\  /     \\\\     \\  /\\   |         "
  puts "         |  /  \\/       ))     \\/  \\  |         "
  puts "         |/            //            \\|         "
  puts "         '             V              '         "
  name = gets.capitalize.chomp
  pets = Dragon.new "#{name}"
end

prompt