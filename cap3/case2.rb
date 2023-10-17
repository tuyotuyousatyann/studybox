order = "パフェ"
case order
when "カフェラテ"
  puts "300円です"
when "モカ"
  puts "350円です"
else
  puts "取り扱っていません"
end

# elseを使うことで、条件に当てはまらない場合の処理を指定できる。
# caseは３つ以上に分岐 (A or B or C)