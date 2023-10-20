def thanks_and_receipt(receipt)
  greeting = "ありがとうございました。"
  unless receipt
    return greeting
  end
  greeting + "こちら、レシートになります。"
end

puts thanks_and_receipt(true) # => ありがとうございました。こちら、レシートになります。
puts thanks_and_receipt(false) # => ありがとうございました。

# 条件が真（true）である場合は、"unless" ブロック内のコードは実行されない。