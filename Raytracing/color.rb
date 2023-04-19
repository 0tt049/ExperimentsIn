# [[file:../README.org::*A bit of refactoring][A bit of refactoring:1]]
require 'matrix'
def write_color(pixel_color, out = $stdout)
  raise TypeError unless pixel_color.is_a? Vector

  out << (pixel_color[0] * 255.999).to_i << " " <<
    (pixel_color[1] * 255.999).to_i << " " <<
    (pixel_color[2] * 255.999).to_i << "\n"
end
# A bit of refactoring:1 ends here
