class Drink
  def name
    @name = "カフェラテ"
  end
  def self.name
    @name
  end

end
drink = Drink.new
drink.name
p Drink.name #=> nil

# インスタンスメソッドのselfと、クラスメソッドのselfは、異なるオブジェクトを返す。
# クラスメソッドnameは、一度も代入されていないので、nilを返す。