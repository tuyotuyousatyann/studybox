def warikan(bill, number)
  warikan = bill / number
  puts "一人あたり#{warikan}円です"
rescue ZeroDivisionError # ZeroDivissionError 例外が発生したらメッセージを表示
  puts "おっと、0人では割り勘できません"
end

warikan(100, 0)
warikan(100, 1)
warikan(100, 2)

# メソッド内で例外処理を書く場合はbegin/endを省略できる