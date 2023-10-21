class Drink
  def initialize(name) # 1 引数を受け取るように定義する
    @name = name  #2 引数で渡された値をインスタンス変数に代入
  end
  def name
    @name
  end
end

drink = Drink.new("モカ") #3 newメソッドを呼び出すときに引数を渡す
puts drink.name # => モカ # インスタンスメソッドnameの呼び出し

# newメソッドを呼び出して引数を渡すと、initializeメソッドが呼び出される