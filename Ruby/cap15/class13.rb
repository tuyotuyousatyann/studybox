# name=メソッドのように値を変更するメソッドを「セッターメソッド」と呼ぶ

class User
  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def name=(value)
    @name = value
  end
end
user = User.new('Alice')
user.name = 'Bob'
user.name #=> "Bob"

# @nameを変更する
# 変数に代入しているように見えるが、実際はname=メソッドを呼び出している