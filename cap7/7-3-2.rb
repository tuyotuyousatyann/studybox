def dice
  result = [1, 2, 3, 4, 5, 6].sample
  return result unless result == 1
  puts 'もう一回'
  [1, 2, 3, 4, 5, 6].sample
end

puts dice