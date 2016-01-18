=begin
  Orange trees start producing free after 3 years.
  At 6 years, they produce 5-25 pounds of oranges.
  They grow to a height of 25-50 feet.
  At 10 years, they can produce 100 pounds of oranges.
  Average orange weights 5-6 ounces.
  16 ounces in 1 lb.
  ~3 oranges in 1 lb.
  ~300 oranges on 10 y/o tree
  ~75 oranges on 6 y/o tree
  Live to ~50 y/o
=end

class OrangeTree

  def initialize
    @size = 0 # In feet
    @age = 0 # A seedling
    @orange_count = 0
    puts "You plant your very own orange tree."
    one_year_passes
  end

  def height
    # Returns height of tree
    puts "Your orange tree is #{@size} feet tall."
  end

  def count_the_oranges
    puts "Your tree has #{@orange_count} oranges on it."
  end

  def pick_an_orange
    if @orange_count > 0
      puts "You pick an orange from the tree and eat it. It was delicious."
      @orange_count -= 1
    else
      puts "There are no more oranges on the tree."
    end
  end

  private

  def old?
    # Once tree reaches 20 y/o, it will start to whither, then die at 25.
    @age >= 20
  end

  def one_year_passes
    puts "Your orange tree grows a foot taller over the course of the year."
    @size += 1
    # One year passes. Each year, tree grows taller.
    # Any oranges you don't pick fall off every year.
    # After some number of years, tree dies.
  end

end

OrangeTree.new