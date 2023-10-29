class Product
  DEAFULT_PRICE = 0

  def self.default_price
    DEAFULT_PRICE
  end

  def default_price
    DEAFULT_PRICE
  end
end

Product.default_price 

product = Product.new
product.default_price # => 0
