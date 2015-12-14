class Scanner

  def initialize(first, last = 0)
    @current = first
  end

  def scan
    @current += 1
    if @current > 13
      return @current - 3
    else
      return @current - 1
    end
  end

end