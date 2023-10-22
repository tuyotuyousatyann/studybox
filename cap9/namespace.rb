module BecoCafe
  class Coffee
    def self.info
      "深みと香りのコーヒー"
    end
  end
end
module MachaCafe
  class Coffee
    def self.info
      "豊かな甘みのコーヒー"
    end
  end
end
puts BecoCafe::Coffee.info #=> 深みと香りのコーヒー
puts MachaCafe::Coffee.info #=> 豊かな甘みのコーヒー

# モジュールを使って名前空間を作ることで、同じ名前のクラスを定義してもエラーにならない。

# クラス名の指定
# クラス名（またはモジュール名）::クラス名（またはモジュール名）