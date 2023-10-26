# 使用頻度は低め

# if 条件A then
#  処理A
# elsif 条件B then
# 処理B
# else
# 処理C
# end

country = 'italy'
greeting = if country == "japan" then "こんにちは"
elsif country == "us" then "Hello"
elsif country == "italy" then "ciao"
else "???"
end

p greeting #=> "ciao"

