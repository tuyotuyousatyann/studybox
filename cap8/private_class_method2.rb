class Foo
  private_class_method def self.a
    "method a"
  end
end
p Foo.a # => private method `a' called for Foo:Class (NoMethodError)

# class << selfの書き方なら、privateを使うことができる