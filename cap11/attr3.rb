class Drink
  attr_reader :name #1
  attr_writer :name #1
end

drink = Drink.new
drink.name = "カフェラテ"
p drink.name #=> "カフェラテ"

# attr_writerメソッドは、インスタンス変数に値を代入するためのメソッドを定義する。
# 1 2. この２行を１行にまとめることができる
# attr_accessorメソッドは、インスタンス変数の戻り値を取得するためのメソッドと、インスタンス変数に値を代入するためのメソッドを定義する。
 