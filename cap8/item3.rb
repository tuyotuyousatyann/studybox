class item
  def name
    @name
  end
  def name=(text)
    @name = text
  end
end

class Drink < item # < は継承の意味
  def size
    @size
  end
  def size=(text)
    @size = text
  end
end

item = item.new
item.name = "マフィン"

drink = Drink.new
drink.name = "カフェオレ" # itemクラスのname=メソッドが呼び出される
drink.size = "tall"
puts "#{drink.name} #{drink.size}サイズ" # => カフェオレ tallサイズ

# Itemクラスを継承してDrinkクラスを定義する
# DrinkクラスはItemクラスを継承したクラスという。
# 継承元であるItemクラスをスーパークラス(親クラス）、継承先のDrinkクラスをサブクラス(子クラス)という。