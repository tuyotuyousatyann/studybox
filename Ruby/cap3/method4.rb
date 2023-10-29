# returnは、メソッドを途中で抜ける場合に使う

def greet(country)
if country == "japan"
"こんにちは"
else
"hello"
end
end

p greet("japan") #=> "こんにちは"
p greet("us") #=> "hello"
