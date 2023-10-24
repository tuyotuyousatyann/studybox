bill = 100
numbers = [0, 1, 2]

numbers.each do |number|
  warikan = bill / number
  puts "一人あたり#{warikan}円です"
rescue ZeroDivisionError # ZeroDivissionError 例外が発生したらメッセージ表示
  puts "おっと、0人では割り勘できません"
end

# 例外処理を書く場合はブロック内でもbegin/endを省略できる