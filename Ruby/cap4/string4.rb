# 条件式が偽の場合にだけ実行するunless文

status = "error"
if status != "ok"
"何か異常があります"
end
#=> "何か異常があります"

# 上記をunless文で書き換える

status = "error"
unless status == "ok"
"何か異常があります"
end
#=> "何か異常があります"

# unlessはifと同様にelse節を使うことができる

status = "OK"
unless status == "ok"
"何か異常があります"
else
"正常です"
end
#=> "正常です"

# unlessは戻り値を直接変数に代入できる
# 修飾子として文の後ろに置くこともできる

status = "error"
message =
unless status == "ok"
"何か異常があります"
else
"正常です"
end

p message #=> "何か異常があります"