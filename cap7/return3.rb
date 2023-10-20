def thanks_and_receipt(receipt)
  puts "ありがとうございました。"
  unless receipt # 条件が満たされない時に処理を実行する
    return
  end
  puts "こちら、レシートになります。"
end

thanks_and_receipt(false)

# ありがとうございました。

# "unless" は、プログラミング言語において条件文を表現するためのキーワードの1つ。主に制御構造の一部として使用され、特定の条件が成り立たない場合に実行するブロックを指定する。

# 一般的に、"unless" 文は条件が偽（false）の場合に実行するために使用される。条件が真（true）である場合は、"unless" ブロック内のコードは実行されない。"unless" 文は、条件が false の場合に何らかの処理を行いたい場合に便利。