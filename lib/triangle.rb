class Triangle
  attr_accessor :sides

  # write code here
  def initialize(a, b, c)
    # store sides in array
    @sides = [a, b, c]
    # sort from smallest value to largest
    @sides.sort!
  end

  def kind
    if @sides.any? {|sides| sides <= 0} || ((@sides[0] + @sides[1] <= @sides[2]))
      raise TriangleError
    elsif @sides.uniq.size == 1
      :equilateral
    elsif @sides.uniq.size == 2
      :isosceles
    else
      :scalene
    end
  end
  class TriangleError < StandardError
    
  end
end

