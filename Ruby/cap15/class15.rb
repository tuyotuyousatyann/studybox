# 読み取り専用の場合

class User
  attr_reader :name

  def initialize(name)
    @name = name
  end
end
user = User.new('Alice')
user.name #=> "Alice"

user.name = 'Bob'
#=> NoMethodError: undefined method `name=' for #<User:0x007f8fbb8b79b0 @name="Alice">
