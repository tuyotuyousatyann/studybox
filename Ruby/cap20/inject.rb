numbers = [1, 2, 3, 4]
sum = numbers.inject(0) { |result, n| result + n }
sum
# => 10

#procオブジェクトを実行する４つの方法

add_proc = Proc.new { |a, b| a + b }
add_proc.call(10, 20)
add_proc.yield(10, 20)
add_proc.(10, 20)
add_proc[10, 20]
add_proc === [10, 20]

def judge(age)
  adult = Proc.new { |n| n > 20 }
  child = Proc.new { |n| n < 20 }

  case age
  when adult
    '大人です'
  when child
    '子どもです'
  else
    'はたちです'
  end
end

judge(25)
judge(18)
judge(20)

# procオブジェクトをブロックとして渡したい時、引数の前に&をつける
reverse_proc = Proc.new { |s| s.reverse }
['Ruby', 'Java', 'Perl'].map(&reverse_proc)

reverse_proc = Proc.new { |s| s.reverse }
other_proc = reverse_proc.to_proc 
reverse_proc.equal?(other_proc)

