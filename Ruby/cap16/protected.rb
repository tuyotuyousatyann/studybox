class Person
  def initialize(age)
    @age = age
  end

  def older_than?(other_person)
    age > other_person.age
  end

  protected

  def age
    @age
  end
end

person1 = Person.new(30)
person2 = Person.new(20)

person1.older_than?(person2) 
person1.age
# => エラー: protected メソッド `age' にアクセスしようとしました
# Protected メソッド:

# 同じクラスまたはサブクラスのインスタンスからはアクセス可能ですが、クラスの外部から直接呼び出すことはできません。
# self を使用して他のインスタンスの protected メソッドを呼び出すことが可能です。
