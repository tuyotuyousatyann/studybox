class Drink
  def initialize(name)
    @name = name
  end
  def name
    @name
  end
end

drink = Drink.new("モカ")
puts drink.name #=> モカ

# initializeメソッドで、引数で渡した"モカ"が@nameに代入されている。