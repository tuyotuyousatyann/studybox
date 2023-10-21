class Cafe
  def self.welcome
    "いらっしゃいませ！"
  end
  def self.welcome_again
    welcome + "いつもありがとうございます！"
  end
end

puts Cafe.welcome_again # => いらっしゃいませ！いつもありがとうございます！

# クラスメソッドは、クラス名.クラスメソッド名で呼び出す
# 同じクラスのクラスメソッドは、クラスメソッド内で呼び出すことができる
# クラスメソッドから、インスタンスメソッドを呼び出すことはできない