# **をハッシュの前につけるとハッシュリテラル内で他のハッシュを展開できる

h = { us: 'dollar', india: 'rupee' }
p { japan: 'yen', ** h } #=> {:japan=>"yen", :us=>"dollar", :india=>"rupee"}
