class Drink
  def order(item)
    puts "#{item}をください"
    @name = item
  end
  def reorder
    puts "#{@name}をもう一杯ください"
  end
end

drink = Drink.new
drink.order("カフェラテ") # => カフェラテをください
drink.reorder # => カフェラテをもう一杯ください

# Drinkクラスのオブジェクトに対して呼び出されたorderメソッドとreorderメソッドの両方で見ることができる。

# インスタンス変数は、変数名の先頭に@をつける。