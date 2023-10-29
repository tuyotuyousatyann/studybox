# privateメソッドになるのは、インスタンスメソッドだけ

class User
  private
  
  def self.hello
    'Hello!'
  end
end

User.hello

# クラスメソッドは、privateメソッドにはならない

# クラスメソッドをprivateにしたい場合は、class << self構文を使う

class User
  class << self
    private
    
    def hello
      'Hello!'
    end
  end
end

User.hello

# クラスメソッドをprivateにしたい場合は、private_class_methodを使う

class User
  private_class_method def self.hello
    'Hello!'
  end
end

User.hello

# クラスメソッドをprivateにしたい場合は、class << self構文を使う

class User
  class << self
    private
    
    def hello
      'Hello!'
    end
  end
end

User.hello

# クラスメソッドをprivateにしたい場合は、private_class_methodを使う

class User
  private_class_method def self.hello
    'Hello!'
  end
end

User.hello

# Path: Ruby/cap16/method3.rb
# privateメソッドはサブクラスでも呼び出せる

class Product
  private
  
  def name
    'A great movie'
  end
end

class DVD < Product
  def to_s
    "name: #{name}"
  end
end

dvd = DVD.new
dvd.to_s

# Path: Ruby/cap16/method4.rb
# privateメソッドはレシーバーを指定して呼び出すことができない

class User
  private
  
  def self.hello
    'Hello!'
  end
end

User.hello

# クラスメソッドは、privateメソッドにはならない

# クラスメソッドをprivateにしたい場合は、class << self構文を使う

class User
  class << self
    private
    
    def hello
      'Hello!'
    end
  end
end

User.hello

# クラスメソッドをprivateにしたい場合は、private_class_methodを使う

class User

  def self.hello
    'Hello!'
  end

  private_class_method :hello
end

User.hello
