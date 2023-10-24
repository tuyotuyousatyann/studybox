# 年齢から成年か未成年かを判定するメソッド
def type(age)
end

begin
  # 例外が発生する可能性のある処理
  age = ARGV.first.to_i
  puts "#{age}才は#{type(age)}です"
rescue => e
  # 例外が発生した場合の処理
  puts "例外が発生しました: #{e.message}"
ensure
  # 例外の有無に関わらず実行する処理
  puts "ご利用ありがとうございました"
end

