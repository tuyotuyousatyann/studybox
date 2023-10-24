def dice
  if block_given?
    puts "run block"
    yield # ブロックを実行する
  else
    puts "normal dice"
    puts [1, 2, 3, 4, 5, 6].sample
  end
end

# ブロックを渡さない場合

dice

# ブロックを渡す場合

dice do
  puts [4, 5, 6].sample
end
