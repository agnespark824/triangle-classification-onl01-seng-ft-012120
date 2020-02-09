require 'pry'

class Triangle
  attr_accessor :length_one, :length_two, :length_three
  
  def initialization(length_one, length_two, length_three)
    #@length_one = length_one
    #@length_two = length_two
    #@length_three = length_three
    @array = [length_one, length_two, length_three]
    binding.pry
  end
  
  def kind
    if @array.uniq.size == 3 && @array.all?{|n| n > 0} && @array.addition == true
      :scalene
    elsif @array.uniq.size == 2 && @array.all?{|n| n > 0} && @array.addition == true
      :isosceles
    elsif @array.uniq.size == 1 && @array.all?{|n| n > 0}
      :equilateral
    elsif @array.all?{|n| n > 0} == false || self.addition == false
      raise TriangleError
    end
  end

  def addition 
    @array.permutation(3).all?{|a| a[0] + a[1] > a[2]}
  end
    


  class TriangleError < StandardError
  end

end
    
    