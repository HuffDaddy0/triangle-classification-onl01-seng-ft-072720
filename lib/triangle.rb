class Triangle
  attr_accessor :length1, :length2, :length3
  # write code here
def initialize(length1, length2, length3)
  # if length1 + length2 > length3
  @length1 = length1
  @length2 = length2
  @length3 = length3
# else
#   begin
#     raise TriangleError
#   rescue TriangleError::invalid
#   end
# end
end

def kind
  if @length1 + @length2 > @length3 && @length2 + @length3 > @length1 && @length1 + @length3 > @length2
  if @length1 == @length2 && @length2 == @length3
    :equilateral
  elsif @length1 == @length2 ||@length1 == @length3 || @length2 == @length3
    :isosceles
  else
    :scalene
  end
else
    raise TriangleError
    begin
  rescue TriangleError
    triangle
  end
end
end


class TriangleError < StandardError
  def triangle
    "That is not a Triangle"
  end
end

end
