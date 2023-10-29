country = "italy"

# if文なら

if country == "japan"
"こんにちは"
elsif country == "us"
"Hello"
elsif country == "italy"
"ciao"
else
"???"
end
#=> "ciao"

# case文なら

case country
when "japan"
"こんにちは"
when "us"
"Hello"
when "italy"
"ciao"
else
"???"
end
#=> "ciao"