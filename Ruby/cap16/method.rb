class User
  def hello
    'Hello!'
  end
end
user = User.new
user.hello

# publicメソッドなのでクラスの外部から呼び出し可能

# privateメソッドなのでクラスの外部からは呼び出し不可

class User

  private

  def hello
    'Hello!'
  end
end
user = User.new
user.hello

# privateキーワードを書くと、そこから下で定義されたメソッドは全てprivateメソッドになる

