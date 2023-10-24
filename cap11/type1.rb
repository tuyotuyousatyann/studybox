# 年齢から成年か未成年かを判定するメソッド
def type(age)
  if age < 0
    # raiseメソッドで例外を発生させる
    raise "年齢がマイナスです (#{age}才)"
  elsif age < 20
    "未成年"
  else
    "成年"
  end
end

# コマンドラインの引数を整数に変換して、変数ageに格納する
age = ARGV.first.to_i
type = type(age) # プログラムが終了する
puts "#{age}才は#{type}です" # この行は実行されない

# raiseメソッドで例外メッセージのみを指定したときは、RuntimeError例外が発生する