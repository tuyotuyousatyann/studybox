class Item
  def name
    @name
  end
  def name=(text)
    @name = text
  end
  def full_name #4
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
  def full_name #2
    super #3  4のfull_nameメソッドが呼び出され、戻り値を返す。親クラスの同名メソッドを呼び出すときはsuperを使う。
  end
end

drink = Drink.new
drink.name = "カフェオレ"
drink.size = "tall"
puts drink.full_name # => カフェオレ #1 2のfull_nameメソッドが呼び出される

# superを使うと、親クラスの同名メソッドを呼び出すことができる。