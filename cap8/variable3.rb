class Drink
  def order(item)
    puts "#{item}をください"
    @name = item
  end
  def reorder
    puts "#{@name}をもう一杯ください"
  end
end

drink1 = Drink.new
drink2 = Drink.new
drink1.order("カフェラテ") # => カフェラテをください
drink2.order("モカ") # => モカをください
drink1.reorder # => カフェラテをもう一杯ください
drink2.reorder # => モカをもう一杯ください

# オブジェクトごとに別のインスタンス変数を持つことができる。