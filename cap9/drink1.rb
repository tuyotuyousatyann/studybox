require_relative "whipped_cream" # ファイルを読み込む 
class Drink
  include WhippedCream
  def name
    @name
  end
  def initialize
    @name = "モカ"
  end
end

mocha = Drink.new
mocha.whipped_cream
puts mocha.name #=> モカホイップクリーム

# モジュール定義だけでなく、クラス定義も別ファイルに分けることができる。
# 別のファイルに書くことにより、コードの見通しがよくなる。複数のプログラムで読み込んで共用することができるメリットがある。

# require_relativeメソッド.require_relative "ファイル名"とすることで、同じディレクトリにあるファイル(クラスや、モジュール）を読み込むことができる。

# includeメソッドは、モジュールのメソッドをクラスに取り込むことができる。