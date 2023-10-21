class Drink
  def order(item)
    puts "#{item}をください"
    name = item
  end
  def reorder
    puts "#{name}をもう一杯ください"
  end
end

drink = Drink.new
drink.order("カフェラテ") # => カフェラテをください
drink.reorder # エラーが発生する

#variable1.rb:7:in `reorder': undefined local variable or method `name' for #<Drink:0x0000000103176f70> (NameError)from variable1.rb:13:in `<main>'

# 変数nameはorderメソッドの中で定義されているので、orderメソッドの中でしか使えない

# ローカル変数より広いスコープを持つ「インスタンス変数」を使えばいい
# オブジェクトが存在する間ずっとインスタンス変数を使うことができる