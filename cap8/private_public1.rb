class Foo
  def a # public method
  end
  def b # public method
  end

  private

  def cafe # private method
  end
  def def # private method
  end
end

# クラス内にprivateメソッドを定義すると、その下に定義されたメソッドはすべてprivateメソッドになる