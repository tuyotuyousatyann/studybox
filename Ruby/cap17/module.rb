# モジュールを利用したメソッド定義

# モジュールをクラスにインクルードする

class Product
  def title
    log 'title is called.'
    'A great movie'
  end

  private

  def log(text)

    puts "[LOG] #{text}"
  end
end

class User
  def name
    log 'name is called.'
    'Alice'
  end

  private

  def log(text)
    puts "[LOG] #{text}"
  end
end

product = Product.new
product.title
#=> [LOG] title is called.
#=> "A great movie"

user = User.new
user.name
#=> [LOG] name is called.
#=> "Alice"

# is-aの関係が成り立たないなら、継承の使用は避ける

# ログを出力するという共通の機能を持たせたい時にモジュールを使う

module Loggable
  def log(text)
    puts "[LOG] #{text}"
  end
end

class Product
  include Loggable

  def title
    log 'title is called.'
    'A great movie'
  end
end

class User
  include Loggable

def name
  log 'name is called.'
  'Alice'
end
end

product = Product.new
product.title
#=> [LOG] title is called.
#=> 'A great movie'

user = User.new
user.name
#=> [LOG] name is called.
#=> 'Alice'
# モジュールを使って異なるクラス間で共通のメソッド (log) を共有している

# モジュールをクラスにincludeして機能を追加することをミックスインとい
# １つのクラスに複数のモジュールをincludeすることも可能

# include先のメソッドを使うモジュール

module Taggable
  def price_tag
  "#{price}円"
  end
end

class Product
include Taggable

  def price
    1000
  end
end

product = Product.new
product.price_tag
#=> "1000円"

# モジュールをextendする