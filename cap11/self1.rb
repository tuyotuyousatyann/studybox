class Drink
  def me # インスタンスメソッド
    p self.object_id #=> 60  # 4 # selfのobject_idを調べた結果
  end

end
drink = Drink.new # 1
p drink.object_id #=> 60 #2 1で生成したオブジェクトのobject_idを表示する
drink.me # 3

# 2 4のobject_idは同じだから、１で生成したオブジェクトと同じオブジェクトを参照していることがわかる
