# インスタンス自身を表すself
# 3パターンある

class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def hello
    "Hello, I am #{name}"
  end

  def hi
    "Hi, I am #{self.name}"
  end

  def my_name
    "My name is #{@name}."
  end
end
user = User.new('Alice')

user.hello #=> "Hello, I am Alice"
user.hi #=> "Hi, I am Alice"
user.my_name #=> "My name is Alice."

# selfのつけ忘れでエラーになる場合もある

class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def rename_to_bob
    self.name = 'Bob'
  end

  def rename_to_carol
    self.name = 'Carol'
  end

  def rename_to_dave
    @name = 'Dave'
  end
end
user = User.new('Alice')

user.rename_to_bob
user.name #=> "Alice"

user.rename_to_carol
user.name #=> "Carol"

user.rename_to_dave
user.name #=> "Dave"

# セッターメソッドを呼び出したいときはselfをつける
# 理由は、ローカル変数の代入と似ているから
