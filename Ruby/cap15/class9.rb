class User
  def initialize(name)
    @name = name
  end
  def hello
    shuffled_name = @name.chars.shuffle.join
    "Hello, I am #{shuffled_name}."
  end
end
user = User.new('Alice')
user.hello
#=> "Hello, I am cAlei."

# ローカル変数は参照する前に代入が必要
# shuffled_nameはローカル変数
