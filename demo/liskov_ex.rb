class Rectangle
  attr_accessor :width, :height

  def area
    width * height
  end
end

class Square < Rectangle
  attr_accessor :side

  def height=(side)
    @height=@width=@side=side
  end

  def width=(side)
    @height=@width=@side=side
  end

  def area
    side * side
  end
end

shapes = [Rectangle.new, Square.new]
shapes.each do |shape|
  shape.width = 4
  shape.height = 5
  puts shape.area
end
