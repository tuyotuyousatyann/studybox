module WhippedCream
  def whipped_cream
    @name += "ホイップクリーム" #1
  end
end

class Drink
  include WhippedCream #2
  def initialize(name)
    @name = name #3 @nameに"モカ"を代入
  end
  def name
    @name #4
  end
end

drink = Drink.new("モカ") #5 9行目で"モカ"を引数に渡している。
drink.whipped_cream #6 whipped_creamメソッドを呼び出す
puts drink.name #=> モカホイップクリーム #7

# includeメソッドを使うと、モジュールのメソッドをクラスに取り込むことができる。

# includeメソッド
# class クラス名
#   include モジュール名
# end

# 1つのクラスの中でincludeメソッドを複数回使うこともできる。
# モジュールは、主にメソッドを共同利用するために使われる。