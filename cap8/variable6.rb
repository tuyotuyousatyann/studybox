class Drink
  def name=(text) #1 name=メソッドを定義
    @name = text #3 引数で渡された値をインスタンス変数に代入
  end
  def name
    @name
  end
end

drink = Drink.new
drink.name = "カフェラテ" #2 nameメソッドを呼び出して、引数を渡す
puts drink.name # => カフェラテ

# インスタンス変数へ代入するメソッドを作る