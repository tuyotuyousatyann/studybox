# 条件１も条件２も真であれば真を返す、それ以外は偽を返す
# 条件１ && 条件２

t1 = true
t2 = true
f1 = false
p t1 && t2 # => true
p t1 && f1 # => false

# 条件１か条件２のどちらかが真であれば真を返す、両方偽であれば偽を返す
# 条件１ || 条件２

t1 = true
f1 = false
f2 = false
p t1 || f1 # => true
p f1 || f2 # => false

# (条件1 && 条件2) || (条件3 && 条件4)

t1 = true
t2 = true
f1 = false
f2 = false
p t1 && t2 || f1 && f2 # => true
p (t1 && t2) || (f1 && f2) # => false

# 優先順位を変えたいときは()を使う

t1 = true
t2 = true
f1 = false
f2 = false
p t1 && (t2 || f1) && f2 # => false

# !は否定を表す演算子で、真偽値を反転させる

t1 = true
f1 = false
p !t1 # => false
p !f1 # => true

# ()と組み合わせると、()の中の真偽値を反転させる

t1 = true
f1 = false
p t1 && f1 # => false
p !(t1 && f1) # => true
