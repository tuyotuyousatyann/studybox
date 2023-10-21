class Cafe
  class << self
    def welcome
      "いらっしゃいませ！"
    end
  end
end

# 複数のクラスメソッドを定義する場合は、class << selfの構文を使う
# class << self
#   def クラスメソッド名1
#   end
#   def クラスメソッド名2
#   end
# end
# 