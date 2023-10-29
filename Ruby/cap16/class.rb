class User
end

user = User.new
user.class
user.nil?

# オブジェクトのクラスを調べる場合はclassメソッドを使う

user = User.new
user.instance_of?(User)
user.instance_of?(String)

# オブジェクトのクラスを調べる場合はinstance_of?メソッドを使う

# 継承関係にあるかを調べる場合はis_a?メソッドを使う

user = User.new

user.is_a?(User)

# superでスーパークラスのメソッドを呼び出す

class Product
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end
product = Product.new('A great movie', 1000)
product.name
product.price

class DVD < Product
  attr_reader :running_time

  def initialize(name, price, running_time)
    @name = name
    @price = price
    @running_time = running_time
  end
end
dvd = DVD.new('A greet movie', 1000, 120)
dvd.name
dvd.price
dvd.running_time

# DVDクラスはProductクラスを継承しているので、DVDクラスのインスタンスメソッドからスーパークラスのメソッドを呼び出すことができる

class Product
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def to_s
  "name: #{name}, price: #{price}"
  end
end

class DVD < Product
  attr_reader :running_time

  def initialize(name, price, running_time)
    super(name, price)
    @running_time = running_time
  end

  def to_s
    "#{super}, running_time: #{running_time}"
  end
end

product = Product.new('A great movie', 1000)
product.to_s

dvd = DVD.new('An awesome film', 3000, 120)
dvd.to_s
