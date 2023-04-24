ops = ["5", "2", "C", "D", "+"]

ops.map do |op|
  case op
  when "C"
    @stack = []
  when "D"
    @stack << (@stack.last * 2)
  when "+"
    @stack << (@stack[-1] + @stack[-2])
  else
    @stack << op.to_i
  end
end
