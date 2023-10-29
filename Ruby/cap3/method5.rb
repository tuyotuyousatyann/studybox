def greet(country)
return "countryを入力してください" if country.nil?

if country == "japan"
"こんにちは"
else
"hello"
end
end
p greet(nil) #=> "countryを入力してください"
p greet("japan") #=> "こんにちは"

# countryがnilならメッセージを返してメソッドを抜ける
# returnは、メソッドを途中で抜ける場合に使う