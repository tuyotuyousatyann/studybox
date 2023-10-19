result = ["abc", "123"].map(&:reverse)
p result

# &:reverseはシンボルとして:reverseを渡している。シンボルに&をつけると、そのシンボルが示すメソッドを呼び出すオブジェクトをブロック引数として渡すことができる。