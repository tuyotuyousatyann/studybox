# 各状態をシンボルで管理すると、処理効率を保ったまま可読性を上げることができる

status = :done

result = case status
when :todo
'これやります'
when :doing
'いまやってます'
when :done
'完了しました'
end

p result #=> "完了しました"
