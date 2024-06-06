p = proc {
  variable_in_proc = 4 + 5
  puts " Hi from proc #{variable_in_proc}"
}

p.call

p1 = proc do |a, b|
  puts a + b
  puts b
end

p1.call(3, 5)
