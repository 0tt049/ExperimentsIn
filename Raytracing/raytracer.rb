# [[file:../README.org::*First gradient in Ruby][First gradient in Ruby:1]]
image_width = 256
image_height = 256
hor = (0..(image_width - 1)).to_a
ver = hor.reverse
# First gradient in Ruby:1 ends here

# [[file:../README.org::*First gradient in Ruby][First gradient in Ruby:2]]
$stdout << "P3\n" << image_width << " " << image_height << "\n255\n"
# First gradient in Ruby:2 ends here

# [[file:../README.org::*First gradient in Ruby][First gradient in Ruby:3]]
ver.each do |ypx|
  hor.each do |xpx|
    r = xpx.to_f / (image_width - 1)
    g = ypx.to_f / (image_height - 1)
    b = 0.25

    ir = (r * 255.999).to_i
    ig = (g * 255.999).to_i
    ib = (b * 255.999).to_i

    $stdout << ir << " " << ig << " " << ib << "\n"
  end
end
# First gradient in Ruby:3 ends here
