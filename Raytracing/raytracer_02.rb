# [[file:../README.org::*A bit of refactoring][A bit of refactoring:2]]
require_relative 'color'

image_width = 256
image_height = 256
hor = (0..(image_width - 1)).to_a
ver = hor.reverse

$stdout << "P3\n" << image_width << " " << image_height << "\n255\n"

ver.each do |ypx|
  hor.each do |xpx|
    color_arr = [
      (xpx.to_f / (image_width - 1)),
      (ypx.to_f / (image_height - 1)),
      0.25
    ]
    pixel_color = Vector.elements(color_arr)
    write_color(pixel_color)
  end
end
# A bit of refactoring:2 ends here
