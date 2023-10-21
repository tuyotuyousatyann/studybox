class Drink
  def order(item)
    puts "#{item}をください"
    @name = item
  end
  def name # インスタンス変数@nameを戻り値とするメソッド
    @name # インスタンス変数@nameを戻り値とする
  end # ここでendを忘れないように
end

drink = Drink.new
drink.order("カフェラテ")
puts drink.name # => カフェラテ #6行目で定義したnameメソッドを呼び出す
# 6行目で戻り値としてインスタンス変数@nameを指定しているので、13行目でdrink.nameと呼び出すと、インスタンス変数@nameの値が戻り値として返される。