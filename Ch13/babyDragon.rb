class Dragon

  def initialize name
    @name = name
    @asleep = false
    @stuff_in_belly = 10 # He's full
    @stuff_in_intestine = 0 # He doesn't need to go
    @happiness = 5

    puts "#{@name} is born."
  end
  # hunger goes down/satiation goes up
  def feed
    puts "You feed #{@name}."
    @stuff_in_belly = 10
    passage_of_time
  end
  # poopy goes down
  def walk
    puts "You walk #{@name}."
    @stuff_in_intestine = 0
    passage_of_time
  end

  def play
    puts "You play with #{@name}."
    @happiness += 3
    passage_of_time
  end
  # Method provides no benefit. Maybe make a happiness/restfull variable go up?
  # What happens if he becomes too unhappy?
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
    @happiness += 1
  end
  # Method provides no benefit. Maybe make a happiness variable go up?
  def toss
    puts "You toss #{@name} up into the air."
    puts "He giggles, which singes your eyebrows."
    @happiness += 1
    passage_of_time
  end

  # Method provides no benefit. Maybe make a happiness/restfull variable go up?
  def rock
    puts "You rock #{@name} gently."
    @asleep = true
    puts "He briefly dozes off..."
    passage_of_time
    if @asleep
      @asleep = false
      puts "...but wakes when you stop."
    end
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
      @stuff_in_intestine = @stuff_in_intestine + 1
    else # Our dragon is starving!
      if @asleep
        @asleep = false
        puts "He wake up suddenly!"
      end
      puts "#{@name} is starving! In desperation, he ate YOU!"
      exit # This quits the program.
    end
    if @stuff_in_intestine >= 10
      @stuff_in_intestine = 0
      @happiness -= 2
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
        puts "#{@name} has become angry!"
        puts "Play with #{@name} to calm them."
      else
        puts "#{@name} has become ENRAGED! In anger, he kills YOU!"
        exit # This quits the program.
      end
    end
  end
end

pets = Dragon.new "Norbert"