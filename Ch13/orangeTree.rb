class OrangeTree

  def initialize
    @size = 0 # In feet
    @age = 0 # A seedling
    @orange_count = 0
    puts "You plant your very own orange tree."
    command
  end

  def command
    action_List = ["height", "age", "count oranges", "pick orange", "wait"]
    puts "\n"
    puts "What would you like to do?"
    puts "Valid commands: height, age, count oranges, pick orange, or wait"
    action = gets.downcase.chomp
    puts "\n"
    if action_List.include?(action)
      if action == "height"
        height
      elsif action == "age"
        years_old
      elsif action == "count oranges"
        count_the_oranges
      elsif action == "pick orange"
        pick_an_orange
      elsif action == "wait"
        wait
      end
    else
      puts "OOPS! That is not a valid command!"
      command
    end
  end

  def height
    # Returns height of tree
    if @size < 1
      puts "Your tree is still a seedling."
    else
      puts "Your orange tree is #{@size}' tall."
    end
    command
  end

  def years_old
    if @age < 1
      puts "Your tree is still a seedling."
    else
      puts "Your tree is #{@age} years old."
    end
    command
  end

  def count_the_oranges
    if @orange_count < 1
      puts "Your tree has not produced any fruit yet."
    else
      puts "Your tree has #{@orange_count} oranges on it."
    end
    command
  end

  def pick_an_orange
    if @orange_count > 0
      puts "You pick an orange from the tree and eat it. It was delicious."
      @orange_count -= 1
    else
      puts "There are no oranges to pick."
    end
    command
  end

  def wait
    one_year_passes
    command
  end

  private

  def fruitful?
    # Once tree reaches 3y/o, it will start bearing fruit.
    @age >= 3
  end

  def old?
    # Once tree reaches 20 y/o, it will start to whither, then die at 25.
    # exit once dead
    @age >= 20
  end

  def one_year_passes
    puts "Your orange tree grows a foot taller over the course of the year."
    @size += 1
    @age += 1
    # One year passes. Each year, tree grows taller.
    # Any oranges you don't pick fall off every year.
    # After some number of years, tree dies.
    if old?
      if @age < 25
        puts "The tree begins to whither and bear less fruit as it grows old."
      else
        puts "Your tree has grown old and died."
        exit # Quits the program
      end
    end

    if fruitful?
      if @age < 6
        rand_count = rand(15..50)
        @orange_count = rand_count
      elsif @age >= 6 && @age < 10
        rand_count = rand(50..100)
        @orange_count = rand_count
      elsif @age >= 10 && @age < 20
        rand_count = rand(100..200)
        @orange_count = rand_count
      else
        rand_count = rand(30..70)
        @orange_count = rand_count
      end
      puts "Your tree grew #{@orange_count} oranges this year."
    end
  end

end

OrangeTree.new