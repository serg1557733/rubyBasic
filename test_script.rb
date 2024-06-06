require "yaml"

data = YAML.safe_load_file("questions.yml", symbolize_names: true)

puts data

File.write("test.txt", data, mode: "a")

class Animal
  def initialize(name, age) # methode fur ein neus Tier zu erstellen
    @name = name
    @age = age
    puts name
  end
  attr_accessor :name, :age

  def age_add(age_1)
    @age = age_1 + @age
    puts @age
  end
end

cat = Animal.new("Cat", 564)

class Dog < Animal
  def gav
    puts "GAVVVV"
  end
end

puts cat.age_add(8)

# lesson 7
class FileWritter
  def initialize(filename, mode)
    @filename = filename
    @mode = mode
  end

  def write(content)
    File.write(
      @filename,
      content,
      mode: @mode
    )
  end
end

filename = "file.txt"
writer = FileWritter.new(filename, "a")

writer.write("This is file content")

writer.write("new content for file")
class Sample
  def my_methode(arg1, arg2, def_arg = "test")
    puts arg1, arg2, def_arg
  end

  def new_methode_way(arg1:, arg2:, arg3: :default_value, arg4: 100)
    puts arg1, arg2, arg3, arg4
  end

  def poetry(num, hash)
    puts num
    puts hash.inspect
  end
end

s = Sample.new
# s.my_methode(3, "5")

s.new_methode_way(arg2: "arg2", arg1: 34, arg4: 55)

s.poetry(43, key1: 1, key2: :value, key3: "string")

# lesson 8

def demo(arg1, arg2, *args_list)
  puts arg1, arg2

  if block_given?
    args_list.each do |next_arg|
      yield(next_arg) # do block from method
    end
  end
end

demo(20, 30) do
  puts "block"
end

demo(2, 5)

demo(32, 54, 55, 5, 5, 5) do |el|
  puts el
end
