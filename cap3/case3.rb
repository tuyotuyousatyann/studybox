wallet = 300
case
when wallet >= 500
  puts "モカにホイップトッピング"
when wallet >= 300
  puts "カフェラテ"
end

# when節の条件を先頭のwhenから順に判定し、最初に真となったwhen節の処理を実行する。