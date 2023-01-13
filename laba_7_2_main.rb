# frozen_string_literal: true

# class for input point
class Point
  attr_reader :middle

  def initialize(rad, phi)
    @middle = [rad.to_f * Math.cos(phi.to_f), rad.to_f * Math.sin(phi.to_f)]
  end

  def show
    @middle
  end
end

# class for input data of circle
class Circle < Point
  attr_reader :radius

  def initialize(rad, phi, radius)
    super(rad, phi)
    @radius = radius.to_f
  end

  def show
    super << @radius
  end
end
