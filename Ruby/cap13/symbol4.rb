# タスクの状態を整数値で管理する(処理効率はいいが、可読性が悪い)

status = 2

result = case status
when 0 # todo
'これやります'
when 1 # doing
'いまやってます'
when 2 # done
'完了しました'
end

p result #=> 2