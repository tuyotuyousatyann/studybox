def foo(&b)
  p b.class #=> Proc # ブロックのクラスを表示
end

foo do
  "block"
end
