module Greeting #1
  def welcome #2 extendしたいメソッドをインスタンスメソッドとして定義する。
    "いらっしゃいませ！"
  end
end
class Cafe
  extend Greeting #3 extendメソッドを使って、Greetingモジュールのメソッドをクラスメソッドとして取り込む。Cafe.welcome という形で呼び出すことができる。
end
puts Cafe.welcome #=> いらっしゃいませ！