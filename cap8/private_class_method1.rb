class Foo
  private # self.メソッド名でクラスメソッドを定義するが、privateメソッドにならない
  def self.a
    "method a"
  end
end
p Foo.a # => "method a"