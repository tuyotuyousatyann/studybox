# %記法を使わない場合は、文字列の中にシングルクォート、ダブルクォートを\でエスケープする必要がある

puts 'He said, "Don\'t speak."' #=> He said, "Don't speak."

something = "Hello."
puts "He said, \"#{something}\"" #=> He said, "Hello."

something = "Bye."
puts "He said, \"#{something}\"" #=> He said, "Bye."
