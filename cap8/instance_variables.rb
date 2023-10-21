class Drink
  def order(item)
    @name = item
  end
end

drink = Drink.new
drink.order("カフェラテ")
p drink.instance_variables # => [:@name]

# インスタンス変数は代入した時に作られる。
# drink.order("カフェラテ")を実行すると、インスタンス変数@nameが作られる。
# 実行されない時点では、インスタンス変数@nameはnilになっている。