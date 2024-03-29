# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)

  list = [a, b, c].sort
  if list.min < 1
      raise TriangleError.new "one or more sides too small"
  end

  if list[0] + list[1] <= list[2] 
    raise TriangleError.new "two sides added are <= third"
  end
  
  case
    when a == b && a == c
      :equilateral
    when a == b || a == c || b == c
      :isosceles
    else
      :scalene
  end

end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
