class User
  def initialize(name)
    @name = name
  end

  def hello
    "Hello, I am #{@name}."
  end
end
alice = User.new('Alice')
alice.hello # => "Hello, I am Bob."
bob = User.new('Bob')
bob.hello 
# => "Hello, I am Alice."
