#!/usr/local/bin/ruby
# Name: Jennelle Lai
# File: shape.rb
# ASSN: Week 14 - Exercises: Modules, Mixins, Nested Classes File
# Desc: A Shape class with a location method that returns the array of the Shape's
#       position and the to_s method that displays the Shape's class, location,
#       and area. The Shape class also has nested classes: Circle, Triangle,
#       and Rectangle, that have the area method to calculate their areas.

# Add the current directory to the Ruby Search Path: $:
$:.push('.')
# Require my_math.rb
require 'my_math'
# Include the module into the main scope
include MyMath




class Shape

  def initialize(x,y)
    @x = x
    @y = y
  end

  def location
    [@x, @y]
  end

  def to_s
    self.class.to_s + " at #{@x}x#{@y}"
  end




  def self.create_shape(shape)
    if (shape.to_s.gsub(/s$/, '') == 'circle')
      #Circle.new(0, 0, 0)
      #Circle.create_circle(0, 0, 0)
      #self.create_circle(0, 0, 0)
      #Circle.new(0, 0, 0)
      #Shape.new(0, 0).create_circle(0, 0, 0)
      #self.create_circle(100,0,0)
      #create_circle(100,0,0)
      Shape.new(0,0).create_circle(0, 0, 0)
    end
    if (shape.to_s.gsub(/s$/, '') == 'triangle')
      #Triangle.new(0, 0, 0, 0)
      #Triangle.create_triangle(0, 0, 0, 0)
      Shape.new(0,0).create_triangle(0, 0, 0, 0)
    end
    if (shape.to_s.gsub(/s$/, '') == 'rectangle')
      #Rectangle.new(0, 0, 0, 0)
      #Rectangle.create_rectangle(0, 0, 0, 0)
      Shape.new(0,0).create_rectangle(0, 0, 0, 0)
    end
  end







  class Circle < Shape
    attr_accessor :radius

    def initialize(radius,x,y)
      @radius = radius
      # Initialize x and y in parent class
      super(x,y)
    end

    def radius=(radius)
      @radius = radius
    end

    def to_s 
      super.to_s + ", its area is #{self.area.to_s}" + ", radius #{@radius}"
    end

    def area
      Pi * @radius * @radius
    end

  end


  class Triangle < Shape
    attr_accessor :base_width, :height

    def initialize(base_width, height, x, y)
      @base_width = base_width
      @height = height
      # Initialize x and y in parent class
      super(x,y)
    end
  
    def to_s 
      super.to_s + ", its area is #{self.area.to_s}" + ", base_width #{@base_width}, height #{height}"
    end

    def area
      @base_width * @height / 2.0
    end
  end

  class Rectangle < Shape
    attr_accessor :length, :width

    def initialize(length, width, x, y)
      @length = length
      @width = width
      # Initialize x and y in parent class
      super(x,y)
    end

    def to_s 
      super.to_s + ", its area is #{self.area.to_s}" + ", length #{@length}, width #{width}"
    end

    def area
      @length * @width
    end
  end



  def create_circle(radius, x, y)
    Circle.new(radius, x, y)
  end

  def create_triangle(base_width, height, x, y)
    Triangle.new(base_width, height, x, y)
  end

  def create_rectangle(length, width, x, y)
    Rectangle.new(length, width, x, y)
  end

end





shape = Shape.new(0, 0)
puts shape


circle = Shape.create_shape(:circle)
circle.radius = 100
puts circle.area # 31415.93

triangle = Shape.create_shape(:triangle)
triangle.height = 13
triangle.base = 13
puts triangle.area # 84.5

rectangle = Shape.create_shape(:rectangle)
rectangle.height = 10
rectangle.width  = 13
puts rectangle.area  # 130
