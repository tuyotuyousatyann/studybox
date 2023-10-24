puts "金額を入力してください"
bill = gets.to_i
puts "割り勘する人数を入力してください"
number = gets.to_i

begin
  warikan = bill / number
  puts "一人あたり#{warikan}円です"
rescue ZeroDivisionError # ZeroDivissionError 例外が発生したらメッセージを表示
  puts "おっと、0人では割り勘できません"
end

