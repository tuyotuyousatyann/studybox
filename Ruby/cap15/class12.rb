class User
  def initialize(name)
    @name = name
  end

  def name
    @name
  end
end
user = User.new('Alice')
user.name
#=> "Alice"

# インスタンス変数はクラスの外部から参照することができない
# インスタンス変数を参照する場合は、参照用のメソッドを定義する必要がある
# nameメソッドのように値を読み出すメソッドを「ゲッターメソッド」と呼ぶ
