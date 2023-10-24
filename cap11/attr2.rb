class Drink
  attr_reader :name
  def name=(text)
    @name = text
  end
end

drink = Drink.new
drink.name = "カフェラテ"
p drink.name #=> "カフェラテ"

# attr_readerメソッドは、インスタンス変数の戻り値を取得するためのメソッドを定義する。これまでは、３行で書いていたが１行で書くことができる。