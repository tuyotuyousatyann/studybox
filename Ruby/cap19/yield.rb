def greet
  puts 'おはよう'
  yield
  puts 'こんばんは'
end

greet do
  puts 'こんにちは'
end

# yieldはブロック内の処理を実行するメソッド

def greet
  puts 'おはよう'
  yield
  yield
  puts 'こんばんは'
end

greet do
  puts 'こんにちは'
end

# ブロックが渡されたかどうかを確認するときは、block_given?メソッドを使う

def greet
  puts 'おはよう'
  if block_given?
    yield
  end
  puts 'こんばんは'
end

greet

greet do
  puts 'こんにちは'
end

# yieldはブロックに引数を渡したり、ブロックの戻り値を受け取ったりできる

def greet
  puts 'おはよう'
  text = yield 'こんにちは'
  puts text
  puts 'こんばんは'
end

greet do |text|
  text * 2
end

# yieldとブロックでやり取りする引数は、個数の過不足に寛容
# yieldで渡した引数がプロックパラメータよりも多かったり、ブロックパラメータがyieldで渡されなかったりしてもエラーにならない

def greet
  puts 'おはよう'
  text = yield 'こんにちは', 12345
  puts text
  puts 'こんばんは'
end

greet do |text|
  text * 2
end

def greet
  puts 'おはよう'
  text = yield 'こんにちは'
  puts text
  puts 'こんばんは'
end

greet do |text, other|
  text * 2 + other.inspect
end

def greet(&block)
  puts 'おはよう'
  text = block.call('こんにちは')
  puts text
  puts 'こんばんは'
end

greet do |text|
  text * 2
end

def greet(&block)
  puts 'おはよう'
  unless block.nil?
    text = block.call('こんにちは')
    puts text
  end
  puts 'こんばんは'
end

greet do |text|
  text * 2
end

# ブロックを引数として受け取る時には、yieldやblock_given?メソッドを使うことができる

def greet(&block)
  puts 'おはよう'
  if block_given?
    text = yield 'こんにちは'
    puts text
  end
  puts 'こんばんは'
end




