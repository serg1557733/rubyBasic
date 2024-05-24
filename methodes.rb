class Sample
  def initialize(age)
    @age = double_age(age)
  end

  attr_reader :age

  def new_methode_way(arg1:, arg2:, arg3: :default_value, arg4: 100)
    puts arg1, arg2, arg3, arg4
  end

  def show_self
    puts self
  end

  def self.creator   # class methode just for class
    puts "class methode"
  end

  def args_list(arg1, *args)
    puts arg1
    puts args.inspect
  end

  private

  def double_age(age)
    age * 2
  end
end
# s.creator   error  -> creator just for class
Sample.creator
s = Sample.new 55
s.show_self

s.args_list(25)
puts s.age
