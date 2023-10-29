class User
  def initialize(name, age)
    puts "name: #{name}, age: #{age}"
  end
end
# User.new #=> ArgumentError: wrong number of arguments (given 0, expected 2)

User.new('Alice', 20) #=> name:Alice, age: 20
