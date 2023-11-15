# value

country = "italy"

case country
in "japan"
  'こんにちは'
in "us"
  'Hello'
in "italy"
  'ciao'
end

# case節の式とin節の値が等しければ、対応する処理が実行される。

coutry = "italy"

message =
  case country
  in "japan"
    'こんにちは'
  in "us"
    'Hello'
  in "italy"
    'ciao'
  end

  message


country = "india"

case country
when "japan"
  'こんにちは'
when "us"
  'Hello'
when "italy"
  'ciao'
end

# case文のとき、真になる条件がなくてもエラーにならずにnilが返るだけ

# パターンマッチはどれにもマッチしないとき例外が発生する

case country
in "japan"
  'こんにちは'
in "us"
  'Hello'
in "italy"
  'ciao'
end

# エラーを発生させたくない場合は、else節を使う

country = "india"

case country
in "japan"
  'こんにちは'
in "us"
  'Hello'
in "italy"
  'ciao'
else
    'Unknown'
end

country = "india"

case country
when 'japan'
  'こんにちは'
when 'us'
  'Hello'
when 'italy'
  'ciao'
else
  raise "無効な国名です。#{country}"
end

country = "india"

case country
in 'japan'
  'こんにちは'
in 'us'
  'Hello'
in 'italy'
  'ciao'
in obj
  "Unknown #{obj}"
end

value = "abc"

case value
in Integer
  '整数です'
in String
  '文字列です'
end

# variableパターン

case 'Alice'
in obj
  "obj=#{obj}"
end

case 123
in obj
  "obj=#{obj}"
end

case [10, 20]
in obj
  "obj=#{obj}"
end

record = [2019,5]

case record
in [year]
  "#{year}年です"
in [year, month]
  "#{year}年#{month}月です"
in [year, month, day]
  "#{year}年#{month}月#{day}日です"
end

alice = "Alice"
bob = "Bob"
name = "Bob"

case name
in ^alice
  'Aliceさん、こんにちは!'
in ^bob
  'Bobさん、こんにちは!'
end

record = [
  [7, 7, 7],
  [6, 7, 5]
]

record.each do |record|
  case record
  in [n, ^n, ^n]
    puts "all same: #{record}"
  else
    puts "not same: #{record}"
  end
end

records = [
  [Integer,1, 2],
  [Integer, 3, 'X']
 ]

 records.each do |record|
  case record
  in [klass, ^klass, ^klass]
    puts "match: #{record}"
  else
    puts "not match: #{record}"
  end
end

# in節でインスタンス変数を使おうとすると、構文エラーになる

case 1
in @n
  "@n=#{@n}"
end

# arrayパターン

case [1, 2, 3]
in [a, b, c]
  "a=#{a}, b=#{b}, c=#{c}"
end

case [1, 2, 3]
in [a, [b, c]]
  "a=#{a}, b=#{b}, c=#{c}"
end

case [1,[2, 3]]
in [a, b]
  "a=#{a}, b=#{b}"
end

case [1, 999, 3]
in [1, n, 3]
  "n=#{n}"
end

case ['Alice', 999, 3]
in [String, 10.., n]
"n=#{n}"
end

# in節に同じ変数名を２回以上使うと構文エラーになる

# 任意の要素を表現する目的で例外的に２回以上使うことができる

case [1, 2, 3]
in [_, _, 3]
  'matched'
end

# 意味は上記と同じ

case [1, 2, 3]
in [_a, _a, 3]
  'matched'
end

# in節で＊を使うと、残りの要素を指定したことになる

case [1, 2, 3, 4, 5]
in [1, *rest]
  "rest=#{rest}"
end

# *は最後の要素だけでなく、最初や途中で使える

case [1, 2, 3, 4, 5]
in [*rest, 5]
  "rest=#{rest}"
end

case [1, 2, 3, 4, 5]
in [1, *rest, 5]
  "rest=#{rest}"
end

case [1, 2, 3, 4, 5]
in [1, *]
  'matched'
end

# 上記と同じ意味

case [1, 2, 3, 4, 5]
in [1,]
  'matched'
end

# in節の一番外側の[]は省略できる

case [1, [2, 3]]
in a, [b, c]
  "a=#{a}, b=#{b}, c=#{c}"
end

# hashパターン

case {name: 'Alice', age: 20}
in {name: name, age: age}
  "name: #{name}, age: #{age}"
end

case {name: 'Alice', age: 20}
in {name:, age:}
"name: #{name}, age: #{age}"
end

# キーの順番はマッチの結果には影響しない

case {name: 'Alice', age: 20}
in {age:, name:}
"name: #{name}, age: #{age}"
end

# 固定の値や===で比較可能な値を指定することもできる

case {name: 'Alice', age: 20, gender: :female}
in {name: 'Alice', age: 18.., gender:}
"gender = #{gender}"
end

case {name: 'Alice', children: ['Bob']}
in {name:, children: [child]}
"name = #{name}, child = #{child}"
end

case {name: 'Alice', age: 20, gender: :female}
in {name: 'Alice', gender:}
"gender = #{gender}"
end

cars = [
  {name: 'The Beatle', engine: '105ps'},
  {name: 'Prius', engine: '98ps', motor: '72ps'},
  {name: 'Tesla', motor: '306ps'}
]

cars.each do |car|
  case car 
  in {name:, engine:}
  puts "Gasoline: #{name} / engine: #{engine}"
  in {name:, motor:}
  puts "EV: #{name} / motor: #{motor}"
  in {name:, engine:, motor:}
  puts "Hybrid: #{name} / engine: #{engine} / motor: #{motor}"
  end
end

case {a: 1}
in { }
'empty'
in {a:}
"a=#{a}"
end

case { }
in { }
  'empty'
in {a:}
  "a=#{a}"
end

# key => value形式を使うと構文エラーになる

case {name: 'Alice', age: 20, gender: :female}
in {name: 'Alice', **rest}
"rest = #{rest}"
end

# **が使える位置は最後のパターンだけ

case {name: 'Alice', age: 20, gender: :female}
in {name: 'Alice', **}
  'matched'
end

# nameのキーと値がマッチしたらそれ以外のキーと値は任意（変数として使われない）
