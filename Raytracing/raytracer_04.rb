# [[file:../README.org::*Sending Rays][Sending Rays:2]]
require_relative 'color'
require_relative 'ray'
require 'matrix'

def sphere_hit?(center, radius, ray)
  oc = ray.origin - center
  a = ray.direction.dot(ray.direction)
  b = 2.0 * oc.dot(ray.direction)
  c = oc.dot(oc) - (radius * radius)
  discriminant = (b * b) - (4 * a * c)
  discriminant.positive?
end

def ray_color(ray)
  center = Vector.elements([0, 0, -1])
  return color(1, 0, 0) if sphere_hit?(center, 0.5, ray)

  unit_direction = unit_vector(ray.direction)
  t = (0.5 * unit_direction[1]) + 1.0
  ((1.0 - t) * color(1.0, 1.0, 1.0)) + (t * color(0.5, 0.7, 1.0))
end

# Image
aspect_ratio = 16.0 / 9.0
image_width = 400
image_height = (image_width / aspect_ratio).to_i
vert = (0..image_height).to_a
vert.reverse!

# Camera
viewport_height = 2.0.to_i
viewport_width = (aspect_ratio * viewport_height).to_i
focal_length = 1.0

origin = Vector.elements([0, 0, 0])
vec3 = Vector.elements([0, 0, focal_length])
horizontal = Vector.elements([viewport_width, 0, 0])
vertical = Vector.elements([0, viewport_height, 0])
lower_left_corner = origin - (horizontal / 2) - (vertical / 2) - vec3

$stdout << "P3\n" << image_width << " " << image_height << "\n255\n"

vert.each do |ypx|
  image_width.times do |xpx|
    u = xpx.to_f / (image_width - 1)
    v = ypx.to_f / (image_height - 1)
    r = Ray.new(origin, lower_left_corner +
                        (u * horizontal) + (v * vertical) -
                        origin)
    pixel_color = ray_color(r)
    write_color(pixel_color)
  end
end
# Sending Rays:2 ends here
