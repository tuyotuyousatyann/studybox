# 例外が発生しても、処理を続行する場合

puts 'Start.'
begin
1 + '10'
rescue
puts '例外が発生したが、処理をこのまま続行する'
end

puts 'End.'

# begin
# 例外が起きうる処理
# rescue
# 例外が発生した場合の処理
# end

# この書き方は、基本を確認するために書いたもので、あまり好ましくない例外処理にあたる

