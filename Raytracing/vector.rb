def vec_length_squared(vec)
  (vec[0] * vec[0]) + (vec[1] * vec[1]) + (vec[2] * vec[2])
end

def vec_length(vec)
  Math.sqrt(vec_length_squared(vec))
end

def unit_vector(vec)
  vec / vec_length(vec)
end
