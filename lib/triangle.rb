class Triangle
  # triangle code
  attr_accessor :first, :second , :third

  def initialize(first,second,third)
    @first = first
    @second = second
    @third = third
  end

  def kind
    unless  first + second > third && first + third > second && second + third > first && first + second + third > 0
      begin
        raise TriangleError
      resue TriangleError => error
        puts error.message
      end
    end


    if first == second && second == third
      :equilateral
    elsif  first == third || second == third || first == second
       :isosceles
    else
      :scalene
    end

  end


  class TriangleError < StandardError
    # triangle error code
    def message
        "he sum of the lengths of any two sides of a triangle always exceeds the length
        of the third side. This is a principle known as the _triangle inequality_. Further, each side must be larger than 0."
    end
  end
end
