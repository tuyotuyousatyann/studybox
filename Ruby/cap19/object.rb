hello_proc = Proc.new do
  'Hello!'
end

hello_proc = Proc.new { 'Hello!' }

# procクラスはブロックをオブジェクト化するためのクラス
# procオブジェクトを実行したいときはcallメソッドを使う

hello_proc = Proc.new { 'Hello!' }
hello_proc.call
