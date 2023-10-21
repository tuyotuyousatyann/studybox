class Itemクラスを継承してDrinkクラスを定義する
  def name
    @name
  end
  def name=(text)
    @name = text
  end
  def full_name
    @name
  end
end

class Drink < Item
  def size
    @size
  end
  def size=(text)
    @size = text
  end
  def full_name
    "#{@name} #{@size}サイズ"
  end
end

drink = Drink.new
drink.name = "カフェオレ"
drink.size = "tall"
puts drink.full_name # => カフェオレ tallサイズ

# Drinkクラスのオブジェクトに対してfull_nameメソッドを呼び出すと、Drinkクラスのfull_nameメソッドが呼び出される。

# 親子のクラスで同名のメソッドがあるとき、子クラスのメソッドが優先して呼び出される。(自分のクラスにあるメソッドが優先される)

# 呼ばれない親クラスの同名メソッドは、覆い隠された形になる。