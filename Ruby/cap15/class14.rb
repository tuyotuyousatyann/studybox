# ゲッターメソッドとセッターメソッドを総称してアクセサメソッドと呼ぶ

# インスタンス変数の内容を外部から読み書きするのならattr_accessorを使う
# 読み取り専用ならattr_readerを使う
# 書き込み専用ならattr_writerを使う

# 読み書きする場合

class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

user = User.new('Alice')
user.name = 'Bob'
user.name 
#=> "Bob"
