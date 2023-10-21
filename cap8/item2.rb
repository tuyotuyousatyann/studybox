class Drink
  def name
    @name
  end
  def name=(text)
    @name = text
  end
  def size
    @size
  end
  def size=(text)
    @size = text
  end
end

# nameメソッドとname=メソッドの内容は同じ
# 上記の場合は、継承の仕組みを使うと簡単に書ける