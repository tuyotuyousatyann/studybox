def method_1
  puts 'method_1 start.'
  begin
    method_2
  rescue
    puts '例外が発生しました'
  end
  puts 'method_1 end.'
end

def method_2
  puts 'method_2 start.'
  method_3
  puts 'method_2 end.'
end

def method_3
  puts 'method_3 start.'
  1 / 0
  puts 'method_3 end.'
end

method_1

# 例外を捕捉したメソッド１だけが、最後まで出力できている
# 例外が発生したメソッド２とメソッド３は、例外が発生した時点で処理が中断されている
# 全てのメソッドで例外が捕捉されなかったら、プログラムは終了する