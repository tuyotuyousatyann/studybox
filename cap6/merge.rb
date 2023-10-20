coffee_menu = {coffee: 300, caffe_latte: 400}
tea_menu = {tea: 300, tea_latte: 400}
menu = coffee_menu.merge(tea_menu)
p menu

# => {:coffee=>300, :caffe_latte=>400, :tea=>300, :tea_latte=>400}
# mergeメソッドは、引数に指定したハッシュの内容を、レシーバのハッシュにマージするメソッド。