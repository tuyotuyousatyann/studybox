class Drink
  def order(item)
    puts "#{item}をください"
    @name = item
  end
end

drink = Drink.new
drink.order("カフェラテ") 
puts @name # => カフェラテ # インスタンス変数@nameを直接参照しているが、表示されない。
# インスタンス変数は、インスタンスメソッド内で定義された変数のため、インスタンスメソッドの外からは参照できない。
# 10行目で＠nameを取得する場合、Drinkクラスに@nameを戻り値とするメソッドを追加して呼び出す必要がある。追記したのが、cap8/variable5.rb