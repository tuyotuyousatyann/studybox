hello_proc = Proc.new do
  'Hello!'
end

hello_proc = Proc.new { 'Hello!' }

# procクラスはブロックをオブジェクト化するためのクラス
# procオブジェクトを実行したいときはcallメソッドを使う

hello_proc = Proc.new { 'Hello!' }
hello_proc.call

add_proc = Proc.new { |a, b| a + b }
add_proc.call(10, 20)

add_proc = Proc.new { |a = 0, b = 0| a + b }
add_proc.call
add_proc.call(10)
add_proc.call(10, 20)

# Proc.newの代わりにprocメソッドを使う
add_proc = proc { |a, b| a + b }


# RUbyでProcオブジェクトを作成し、その処理を呼び出す
add_proc = Proc.new { |a, b| a + b }
add_proc.call(10, 20)

# JavaScriptで関数オブジェクトを作成し、その処理を呼び出す
const addProc = (a, b) => a + b
addProc(10, 20)

def greet(&block)
  puts block.class

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
  text = block.call('こんにちは')
  puts text
  puts 'こんばんは'
end

repeat_proc = Proc.new { |text| text * 2 }
greet(&repeat_proc)

# Procオブジェクトを普通の引数として渡す

def greet(arrange_proc)
  puts 'おはよう'
  text = arrange_proc.call('こんにちは')
  puts text
  puts 'こんばんは'
end

repeat_proc = Proc.new { |text| text * 2 }
greet(repeat_proc)

# メソッドが受け取れるブロックの数は1つだけ
# Procオブジェクトは複数の引数を渡せる

def greet(proc_1, proc_2, proc_3)
  puts proc_1.call('おはよう')
  puts proc_2.call('こんにちは')
  puts proc_3.call('こんばんは')
end

shuffle_proc = Proc.new { |text| text.chars.shuffle.join }
repeat_proc = Proc.new{|text| text * 2}
question_proc = Proc.new { |text| "#{text}?" }

greet(shuffle_proc, repeat_proc, question_proc)
