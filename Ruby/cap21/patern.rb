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
