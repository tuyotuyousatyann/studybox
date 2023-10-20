menu = {coffee: 300, caffe_latte: 400}
menu.delete(:coffee_latte)
p menu[:tea]

# ハッシュ、deleteと書くと、ハッシュから指定したキーと値を削除することができる。