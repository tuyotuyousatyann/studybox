# スペースを空けずに出力する

def add(a, b)
a + b
end
puts add(4, 5) # => 9

# スペースを空けて呼び出したらエラーになる

add (4,5) # => syntax error, unexpected ',', expecting ')'