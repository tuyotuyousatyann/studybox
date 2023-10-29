a = [1, 2, 3]
a [-3] = -10
p a # => [-10, 2, 3]

#p a[-4] = 0
# element6.rb:5:in `<main>': index -4 too small for array; minimum: -3 (IndexError)
# 指定可能な負の値よりも小さくなるとエラーが発生する