[1, 2, 3].each do |x|
  break if x == 2
  puts x
end
# => 1

# breakは繰り返し処理を脱出するメソッド。