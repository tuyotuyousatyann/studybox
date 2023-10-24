class Drink
  attr_accessor :name # 今まで６行で書いていたが、１行で書くことができる
end

drink = Drink.new
drink.name = "カフェラテ"
p drink.name #=> "カフェラテ"