# frozen_string_literal: true

require_relative 'laba_7_2_main'

puts 'Input r, phi and radius of circle'
arr = []
(0..2).map { |i| arr[i] = gets.chomp }

puts 'Coordinates of point'
point = Point.new(arr[0], arr[1])
p point.show

puts 'Middle and radius of circle'
circle = Circle.new(arr[0], arr[1], arr[2])
p circle.show
