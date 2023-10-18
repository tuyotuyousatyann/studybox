[1, 2, 3].each do |x|
  next if x == 2
  puts x
end

# => 1
# nextは繰り返し処理を途中で中断し、次の繰り返し処理に進むメソッド。