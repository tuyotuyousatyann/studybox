country = 'italy'

greeting =
if country == 'japan'
"こんにちは"
elsif country == 'us'
"Hello"
end

p greeting #=> nil

# どの条件にも当てはまらない場合はnilが返る