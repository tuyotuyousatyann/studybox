# 正規表現ってなんだろう？
# 正規表現とは、パターンを指定して、文字列を効率よく検索・置換するためのミニ言語。
# 正規表現を学ぶことで、他の言語に活かすことができる。

# 英文の中からプログラミング言語っぽい単語を抜き出す

text = <<TEXT
I love Ruby.
Python is a great language.
Java and JavaScript are different.
TEXT

text.scan(/[A-Z][A-Za-z]+/) # => ["Ruby", "Python", "Java", "JavaScript"]

r = /\d{3}-\d{4}/
r.class # => Regexp

# マッチした場合はマッチした文字列の開始位置が返る（マッチしなければnilが返る）
# マッチするかは、=~演算子を使う
'123-4567' =~ /\d{3}-\d{4}/ # => 0

'hello' =~ /\d{3}-\d{4}/ # => nil
