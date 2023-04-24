# [[file:../README.org::*A bit of refactoring][A bit of refactoring:1]]
require 'matrix'

def color(red, green, blue)
  Vector.elements([red, green, blue])
end

def write_color(color, out = $stdout)
  out << (color[0] * 255.999).to_i << " " <<
    (color[1] * 255.999).to_i << " " <<
    (color[2] * 255.999).to_i << "\n"
end
# A bit of refactoring:1 ends here
