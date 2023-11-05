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
# モジュールのメソッドをクラスメソッドにできる

module Loggable
  def log(text)
    puts "[LOG] #{text}"
  end
end

class Product
  extend Loggable

  def self.create_products(names)
    log 'create_products is called.'
  end
end

Product.create_products([])

Product.log('Hello.')

# includeされたモジュールの有無を確認

module Loggable
end

class Product
include Loggable
end

Product.include?(Loggable)
#=> true

Product.included_modules
#=> [Loggable, Kernel]

Product.ancestors
#=> [Product, Loggable, Object, Kernel, BasicObject]

product = Product.new
product.class.include?(Loggable)
product.class.included_modules

product = Product.new
product.is_a?(Product)
#=> true
product.is_a?(Loggable)
#=> true
product.is_a?(Object)
#=> true

Array.include?(Enumerable)
#=> true
Hash.include?(Enumerable)
#=> true
Range.include?(Enumerable)
#=> true

[1,2,3].map { |n| n * 10 }
#=> [10, 20, 30]

{ a: 1, b: 2, c: 3 }.map { |k, v| [k, v * 10] }
#=> [:a, 10], [:b, 20], [:c, 30]]

(1..3).map { |n| n * 10 }
#=> [10, 20, 30]

[1,2,3].count
#=> 3

{ a: 1, b: 2, c: 3 }.count
#=> 3

(1..3).count
#=> 3

# comparableモジュール
# includeされたクラスは<=>演算子を使って比較できるようになる
# include先のクラスで<=>演算子を実装する必要がある
# スペースシップ演算子と呼ばれる
# 左側の値と右側の値を比較し、その結果に応じて以下の3つのうちの1つの数値を返します：

# 1: 左側の値が右側の値より大きい場合
# 0: 両方の値が等しい場合
# -1: 左側の値が右側の値より小さい場合

2 <=> 1
#=> 1

2 <=> 2
#=> 0

1 <=> 2
#=> -1

1 <=> 'abc'
#=> nil

'xyz' <=> 'abc'
#=> 1

'abc' <=> 'abc'
#=> 0

'abc' <=> 'xyz'
#=> -1

2 > 1
#=> true

2 <= 1
#=> false

2 == 1
#=> false

'abc' > 'xyz'
#=> false

'abc' <= 'xyz'
#=> true

'abc' == 'xyz'
#=> false

# comparableモジュールを独自のクラスにincludeする

class Tempo
  include Comparable

  attr_reader :bpm

  def initialize(bpm)
    @bpm = bpm
  end

  def <=>(other)
    other.is_a?(Tempo) ? bpm <=> other.bpm : nil
  end

  def inspect
    "#{bpm}bpm"
  end
end

t_120 = Tempo.new(120)
#=> 120bpm

t_180 = Tempo.new(180)
#=> 180bpm

t_120 > t_180
#=> false

t_120 <= t_180
#=> true

t_120 == t_180
#=> false

tempos = [Tempo.new(180), Tempo.new(60),
Tempo.new(120)]

tempos.sort
#=> [60bpm, 120bpm, 180bpm]

# Kernelモジュール

Object.include?(Kernel)
#=> true

class User
end

User.class
#=> Class

Class.superclass
#=> Module

module.Loggable
end

Loggable.class
#=> Module

Module.superclass
#=> Object

class User
  p self
  # => User

  p self.class
  # => Class

end

module Loggable
  p self
  p self.class
end

module NameChangeable
  def change_name
  self.name = 'ぶるりん'
  end
end

class User
  include NameChangeable

  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

user = User.new('Bururin')
user.change_name
user.name

# 名前空間を分けて名前の衝突を防ぐ
# 同名のクラスがあっても外側のモジュール名が違えば衝突しない

module Baseball
  class Second
    def initialize(player, uniform_number)
      @player = player
      @uniform_number = uniform_number
    end
  end
end

module Clock
  class Second
    def initialize(digits)
      @digits = digits
    end
  end
end

# モジュール名::クラス名という形でモジュールに属するクラスを参照できる

Baseball::Second.new('Alice', 13)

Clock::Second.new(13)

# モジュールに定数を定義する

module Loggable
  PREFIX = '[LOG]'

  def log(text)
    puts "#{PREFIX} #{text}"
  end
end

Loggable::PREFIX

# モジュール関数や定数を持つモジュールの例

Math.sqrt(2)

class Calculator
  include Math

  def calc_sqrt(n)
    sqrt(n)
  end
end

calculator = Calculator.new
calculator.calc_sqrt(2)

Kernel.puts 'Hello.'
Kernel.p [1,2,3]
