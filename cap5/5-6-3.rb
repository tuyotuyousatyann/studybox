result = ["aya", "achi", "Tama"].map do |x|
  x.downcase
end
result = result.sort
p result
 # => ["achi", "aya", "tama"]

 # p ["aya", "achi", "Tama"].map{|x| x.downcase}.sortのように一行で書くこともできる。
 