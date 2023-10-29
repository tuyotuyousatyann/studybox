# クラスの内部ではインスタンス変数を使うことができる
# インスタンス変数は@から始まる変数
# インスタンス変数は同じインスタンスの内部で共有される変数

class User
  def initialize(name)
    @name = name
  end
  def hello
    "Hello, I am #{@name}."
  end
end
user = User.new('Alice')
user.hello #=> "Hello, I am Alice."
