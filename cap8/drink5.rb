class Drink
  def name
    "カフェラテ"
  end
end

drink = Drink.new
puts drink.name # => カフェラテ # インスタンスメソッドnameの呼び出し

# メソッドの呼び出し オブジェクト.メソッド名