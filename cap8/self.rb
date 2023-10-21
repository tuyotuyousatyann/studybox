class Drink
  def name
    p self
    "モカ" + topping
  end
  def topping
    "エスプレッソショット"
  end
end

drink = Drink.new
p drink
puts drink.name
# selfを使ってレシーバを調べる
# メソッドが呼び出されるオブジェクトをレシーバという