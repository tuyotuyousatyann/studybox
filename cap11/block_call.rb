def foo(&b) # &bはブロックを受け取って代入される
  b.call # 渡されたブロックを実行する
end

# fooメソッドをブロックを渡して呼び出す
foo do
  puts "Chunky bacon!" # Chunky bacon!
end
