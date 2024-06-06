def method1(&)
  #   yield
  #   block.call
  method2(&)
end

def method2(&block)
  block.call
end

method2 do
  puts "hi from block"
end

method1 do
  puts "block methode1"
end
