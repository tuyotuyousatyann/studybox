# class クラス名
# end

# クラス名は必ず大文字で始める
# クラス名はキャメルケースで書く

# Userクラスの定義
class User
end

# Orderitemクラスの定義
class OrderItem
end

# オブジェクトの作成とinitializeメソッド
# クラスからオブジェクトを作成するには、newメソッドを使う
# newメソッドを呼び出した時に、initializeメソッドが呼び出される
User.new

class User
  def initialize
    puts 'Initialized.'
  end
end
User.new
#=> Initialized.

# initializeメソッドは、デフォルトでprivateメソッドになっているため、外部から呼び出すことはできない

user = User.new
user.initialize
# #=> NoMethodError: private method `initialize' called for #<User:0x00007f8e9a8b3b58>
