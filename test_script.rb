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

puts cat.age_add(888)
