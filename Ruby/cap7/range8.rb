# 範囲オブジェクトを配列に変換してから、繰り返し処理を行う

numbers = (1..4).to_a
sum = 0
numbers.each { |n| sum += n }
p sum #=> 10
