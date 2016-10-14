#!/usr/local/bin/ruby
# Name: Jennelle Lai
# File: my_math.rb
# ASSN: Week 14 - Exercises: Modules, Mixins, Nested Classes File
# Desc: MyMath module with constant 'Pi' of value pi up to 20 decimal places.

module MyMath
  IndianaPi = 3.2  # Indiana Pi definition: see https://en.wikipedia.org/wiki/Indiana_Pi_Bill
  Pi = 3.14159265358979323846

  def print_pi
    puts "Real Pi: " + Pi.to_s
  end

  def print_indiana_pi
    puts "Indiana Pi: " + IndianaPi.to_s
  end

end