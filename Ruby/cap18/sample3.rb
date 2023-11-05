begin
  1 / 0
rescue ZeroDivisionError
  puts '0で除算しました'
end

# ZeroDivisionErrorが発生した場合のみ、rescue節が実行される

begin
  'abc'.foo
rescue ZeroDivisionError
  puts '0で除算しました'
end

# ZeroDivisionErrorが発生しないので、rescue節は実行されない
# プログラムが異常終了する

begin
  'abc'.foo
rescue ZeroDivisionError
  puts '0で除算しました'
rescue NoMethodError
  puts '存在しないメソッドが呼び出されました'
end

# rescue節は複数指定できる

begin
  'abc'.foo
rescue ZeroDivisionError, NoMethodError
  puts '0で除算したが、存在しないメソッドが呼び出されました'
end

# 1つのrescue節で複数の例外を捕捉することもできる

begin
  'abc'.foo
rescue ZeroDivisionError, NoMethodError => e
  puts "0で除算したか、存在しないメソッドが呼び出されました"
  puts "エラー: #{e.class} #{e.message}"
end

# 例外オブジェクトを変数eに格納している

begin
  1 / 0
rescue NoMethodError
  puts 'NoMethodErrorです'
rescue NameError
  puts 'NameErrorです'
rescue
  puts 'その他のエラーです'
end

# 例外発生時にもう一度処理をやり直すretry
# ネットワークエラーのように一時的に発生している問題が例外の原因の場合、retryを使ってもう一度処理をやり直すことができる

retry_count = 0
begin
  puts '処理を開始します'
  1 / 0
rescue
  retry_count += 1
  if retry_count <= 3
    puts "retryします。#{retry_count}回目"
    retry
  else
    puts 'retryに失敗しました'
  end
end

# 意図的に例外を発生させるraiseメソッド

def currency_of(country)
  case country
  when :japan
    'yen'
  when :us
    'dollar'
  when :india
    'rupee'
  else
    raise "無効な国名です。#{country}"
  end
end

currency_of(:japan)
currency_of(:italy)

# 原因を特定しやすいメッセージをつける
# エラーメッセージなし、または省略で例外を発生させるのは避ける
# デバッグがしにくくなる

# 初学者は、例外が発生したら即座に異常終了させるか、フレームワークの共通処理に任せた方が安全

# 大量のユーザにメールを送信するプログラム

users.each do |user|
  begin
    send_mail_to(user)
  rescue => e
    puts e.full_message
  end
end

# 手がかりが多いほど原因調査は楽になる
# 反対に手がかりが少ないと原因調査が難しくなる
# 詳細な情報を確実に残す

# 例外処理よりも条件分岐を使う

require 'date'

def convert_reiwa_to_date(reiwa_text)
  m = reiwa_text.match(/令和(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/)
  year = m[:year].to_i + 2018
  month = m[:month].to_i
  day = m[:day].to_i

  if Date.valid_date?(year, month, day)
    Date.new(year, month, day)
  end
end

convert_reiwa_to_date('令和2年10月22日')
convert_reiwa_to_date('令和元年99月99日')

# 想定外のパターンが渡された場合は例外を発生させ、プログラムを中止させる

def currency_of(country)
  case country
  when :japan
    'yen'
  when :us
    'dollar'
  when :india
    'rupee'
  else
    raise ArgumentError, "無効な国名です。#{country}"
  end
end

currency_of(:italy)

# 同じ不具合でも「いい不具合」と言える
# 例外処理も手を抜かずにテストする