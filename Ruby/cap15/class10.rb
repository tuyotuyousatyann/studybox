class User
  def initialize(name)
    @name = name
  end
  def hello
    # shuffled_name = @name.chars.shuffle.join
    "Hello, I am #{shuffled_name}."
  end
end
user = User.new('Alice')
user.hello

# undefined local variable or method `shuffled_name' for #<User:0x00007f8b9a0b3a38 @name="Alice"> (NameError)
# まだ作成されていないローカル変数を参照しようとするとエラーが発生する
