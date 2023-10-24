class Drink
  def self.me
    p self.object_id #=> 60 # selfのobject_idを調べた結果
  end

end
p Drink.object_id #=> 60 
Drink.me
