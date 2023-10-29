class Product
  @name = 'Product'

  def self.name
    @name
  end

  def initialize(name)
    @name = name
  end

  def name
    @name
  end
end

class DVD < Product
  @name = 'DVD'

  def self.name
    @name
  end

  def upcase_name
    @name.upcase
  end
end

Product.name
DVD.name

product = Product.new('A great movie')
product.name

dvd = DVD.new('An awesome film')
dvd.name
dvd.upcase_name

Product.name
DVD.name
