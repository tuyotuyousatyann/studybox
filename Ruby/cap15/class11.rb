class User
  def initialize(name)
    # @name = name
  end

  def hello
    "Hello, I am #{@name}."
  end
end
user = User.new('Alice')
user.hello 
#=> "Hello, I am ."

# 名前のところに表示がなくなる

class Drink
  def order(item)
    puts "#{item}をください"
    @name = item
  end
end

drink = Drink.new
drink.order("カフェラテ")

