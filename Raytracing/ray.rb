# [[file:../README.org::*Ray][Ray:1]]
require 'matrix'
require_relative 'vector'

class Ray
  attr_reader :origin, :direction

  def initialize(origin, direction)
    @origin = origin
    @direction = direction
  end

  def at(time)
    @origin + (time * @direction)
  end
end
# Ray:1 ends here
