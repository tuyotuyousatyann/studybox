class Foo
  def a # public method
  end

  def b # public method
  end

  private

  def c # private method
  end

  public

  def d # public
  end
end

# privateメソッドを定義した後にpublicメソッドを定義すると、publicメソッドになる
# 最初にpublicメソッドをまとめて書く。その後privateメソッドを書くことが一般的。

