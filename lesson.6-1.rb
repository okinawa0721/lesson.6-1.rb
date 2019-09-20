class Shape
    attr_accessor :color
    protected :color=
    def initialize(color)
        @color = color
    end
    def color_change(shape)
        if shape.is_a?(Shape) == true
            @color,shape.color = shape.color,@color
        end
    end
    def display_area
        puts "色は#{@color}面積は#{@area}です。"
    end
end
class Triangle < Shape
    def initialize(color,bottom_length,height)
        super(color)
        @bottom_length = bottom_length
        @height = height
        @area = @bottom_length*@height/2
    end
end
class Square < Shape
    def initialize(color,bottom_length,height)
        super(color)
        @bottom_length = bottom_length
        @height = height
        @area = @bottom_length*@height
    end
end
class Equal_square < Square
    def initialize(color,sidelength)
        super(color,sidelength,sidelength)
    end
end
shape = Shape.new("白")
triangle = Triangle.new("黑",10,10)
square = Square.new("オレンジ",20,20)
equal_square = Equal_square.new("赤",10)
triangle.display_area
square.display_area
equal_square.display_area

puts "大城翔吾です"