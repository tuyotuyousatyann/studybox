class Cafe
  def staff
    makanai
  end
  private
  def makanai
    "店員用スペシャルメニュー"
  end
end

cafe = Cafe.new
puts cafe.staff # => 店員用スペシャルメニュー
puts cafe.makanai # => private method `makanai' called for #<Cafe:0x00007f8b9a0b3a38> (NoMethodError)

# レシーバを指定しない方法で呼び出すことができるprivateメソッド
# レシーバを指定して呼び出そうとするとエラーになる
# メソッドを呼び出すことができる場所をクラスの内部に限定することができる

# staffメソッドのようにレシーバに続けて書いて呼び出せるメソッドをpublicメソッドという。クラス定義の外でも書くことができる。

# 設計上の意図を伝えることが可能になる