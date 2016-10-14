#!/usr/local/bin/ruby
# Name: Jennelle Lai
# File: test_shape.rb
# ASSN: Week 14 - Exercises: Modules, Mixins, Nested Classes File
# Desc: Tests the Shape class by creating objects of its nested classes: 
#       a Circle, a Triangle, and a Rectangle; and initializing it with
#       the appropriate parameters and then invoking the "to_s" method to 
#       display their class, location, and area

# Add the current directory to the Ruby Search Path: $:
$:.push('.')
# Require my_math.rb
require 'my_math'
require 'shape'
# Include the module into the main scope
include MyMath


circle = Shape::Circle.new(100,100,100)
puts circle

triangle = Shape::Triangle.new(13,13,10,10)
puts triangle

rectangle = Shape::Rectangle.new(10,13,0,0)
puts rectangle