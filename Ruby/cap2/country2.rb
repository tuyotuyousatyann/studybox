country = 'italy'

# if文の戻り値を変数に代入する

greeting =
if country == 'japan'
'こんにちは'
elsif country == 'us'
"Hello"
elsif country == 'italy'
"ciao"
else
"???"
end

p greeting #=> "ciao"